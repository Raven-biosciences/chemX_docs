#!/bin/bash
set -euo pipefail

MKDOCS_EXPORTER_PDF_ENABLED=false mkdocs build -f mkdocs.yml -c
