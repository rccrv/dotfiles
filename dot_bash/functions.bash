wordnet() {
    wn "$@" -over | less
}

ipa() {
    espeak -q --ipa -v en-us "$@"
}
