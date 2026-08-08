# Format all typst source files and nix files
fmt:
    typstyle -i ./*.typ
    nixfmt-rfc-style -s shell.nix

# Compile all typst source files to PDF
build:
    for f in ./*.typ; do \
        typst c "$f"; \
    done

# Remove all generated PDF files
clean:
    rm -rf ./*.pdf
