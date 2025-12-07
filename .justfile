run platform:
    @if [ "{{ platform }}" = "cli" ]; then \
        cargo run -p myvault-cli; \
    elif [ "{{ platform }}" = "desktop" ]; then \
        cd myvault-desktop && cargo tauri dev; \
    elif [ "{{ platform }}" == "mobile" ]; then \
        cd myvault-mobile && dx serve --ios; \
    else \
        cd myvault-web && cargo run; \
    fi
