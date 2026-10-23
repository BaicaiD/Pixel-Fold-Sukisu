# Pixel Fold (felix) — Custom Kernel Build

## Build Information

- Device: Google Pixel Fold (`felix`)
- Build date: 2026-10-23
- Build id:
- 6.1.172-android14-11-g9dd05ae3a1de-ab16261587
- #1 Thu Sep 3 03:59:00 UTC 2026
- Kernel: AOSP / Kleaf-based build
- KernelSU implementation: SukiSU-Ultra
- SukiSU version: `41050`
- Version metadata: `v4.2.1-r1-3c6ecb97@main`
- Build environment: Ubuntu 
## Build Process

1. Clean the Bazel build cache when required for troubleshooting.
2. Build the kernel using `build_felix.sh`.
3. Review the build log for errors and verify the generated artifacts.
4. Unpack the factory boot image using MagiskBoot.
5. Replace the kernel component with the verified build output.
6. Repack the image and calculate SHA-256 checksums.

## Notes

- Fixed SukiSU-Ultra version metadata reporting `unknown`.
- Generated version metadata before the Bazel build.
- Verified that the build completed successfully.
- Used MagiskBoot to unpack and repack the boot image.

## Important Notes

- This is a custom build, not an official Google image.
- A successful build or repack does not guarantee successful device boot.
- Verify the kernel image format and firmware compatibility before testing.
- Keep a backup of the original boot image.

## Checksums

See `SHA256SUMS.txt` for the SHA-256 hashes of the published files.

## Test Status
perfect!!
