## Install packer

- Windows:
  - Install latest version:
  - `choco install packer`
- Packer Commands:

  - `packer init # to initialize packer plugins`
  - `packer fmt # format packer config files`
  - `packer validate # validate packer config file syntax`
  - `packer build # execute the packer build process`

- AWS local secrets:
  ```
  export AWS_ACCESS_KEY_ID="<YOUR_AWS_ACCESS_KEY_ID>
  export AWS_SECRET_ACCESS_KEY="<YOUR_AWS_SECRET_ACCESS_KEY>"
  ```
