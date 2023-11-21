# gpg key
```bash
gpg --full-generate-key
gpg --list-secret-keys
gpg --armor --export "key_sec"

git config --global user.signingkey
git config --global commit.gpgsign true
git config --global gpg.program "path_to_gpg"
```
