# -*- sh -*-

[[ -n $IN_NIX_SHELL ]] && () {
    # Nix configure temporary directory to /run/user/$UID. Why?
    local v
    for v in TMP TMPDIR TEMP TEMPDIR; do
        [[ ${(P)v} = "/run/user/$UID" ]] && \
            unset $v
    done
}
