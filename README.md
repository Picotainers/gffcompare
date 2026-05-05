# gffcompare
Small compatibility-focused container for `gffcompare`.

## Quick Usage

```bash
# Pull the image
docker pull docker.io/picotainers/gffcompare:latest

# Run the tool
docker run --rm docker.io/picotainers/gffcompare:latest gffcompare --help
```

## How to use

```bash
docker run --rm -v "$(pwd):/data" docker.io/picotainers/gffcompare:latest --help
```
