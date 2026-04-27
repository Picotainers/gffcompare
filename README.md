# gffcompare
Minimal container for 
auto-generated wrapper around the upstream gffcompare tool.

## Quick Usage
```bash
docker run --rm docker.io/picotainers/gffcompare:latest --help
```

## Usage
```bash
# Run in current directory
docker run --rm -v "$(pwd):/data" -w /data docker.io/picotainers/gffcompare:latest --help
```

## Building
```bash
docker build -t docker.io/picotainers/gffcompare:latest .
```
