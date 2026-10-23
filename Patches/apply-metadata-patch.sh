#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PATCH="$ROOT/patches/0001-kernel-metadata.patch"

cd "$ROOT"

if [[ ! -f "$PATCH" ]]; then
    echo "错误：找不到补丁文件：$PATCH" >&2
    exit 1
fi

echo "检查补丁..."
git apply --stat "$PATCH"

if git apply --check "$PATCH" 2>/dev/null; then
    git apply "$PATCH"
    echo "成功：补丁已应用。"
elif git apply --reverse --check "$PATCH" 2>/dev/null; then
    echo "提示：补丁已经应用，无需重复操作。"
else
    echo "错误：补丁与当前源码不兼容，未应用任何更改。" >&2
    echo "请检查源码版本和本地修改。" >&2
    exit 1
fi

EXPECTED='-android14-11-g9dd05ae3a1de-ab16261587'

if grep -nF -- "$EXPECTED" common/ack/scripts/setlocalversion; then
    echo "验证通过：Kernel Release 固定字符串正确。"
else
    echo "错误：未找到预期的 Kernel Release 字符串。" >&2
    exit 1
fi

echo "处理完成。"
