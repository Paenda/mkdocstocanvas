# Canvas course publisher container
# Provides an isolated environment for MkDocs + Canvas upload tooling

FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1

WORKDIR /app

# System deps: fonts for rendering and basic build tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      fonts-noto \
      fonts-noto-cjk \
      fonts-noto-color-emoji \
      fonts-dejavu \
      libxss1 \
      make \
      ca-certificates || \
    (apt-get update && apt-get install -y --no-install-recommends \
      fonts-noto \
      fonts-noto-cjk \
      fonts-noto-color-emoji \
      fonts-dejavu \
      libxss1 \
      make \
      ca-certificates) && \
    rm -rf /var/lib/apt/lists/*

# Python dependencies
RUN pip install --no-cache-dir \
    mkdocs \
    mkdocs-material \
    mkdocs-include-markdown-plugin \
    mkdocs-excel-plugin \
    mkdocs-page-pdf \
    pymdown-extensions \
    Pygments \
    requests \
    markdown \
    PyYAML \
    openpyxl \
    playwright

# Preinstall Playwright browser and its runtime dependencies for mkdocs-page-pdf
RUN python -m playwright install chromium && \
    python -m playwright install-deps chromium

# Add project files
COPY . .

CMD ["/bin/bash"]
