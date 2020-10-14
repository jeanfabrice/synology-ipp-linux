# synology-ipp-linux

Builds Eaton Intelligent Power Protector (IPP) package for x86_64 based Synology
NAS.

## How to build

* install Synology developper toolkit, following [Synology DSM6.0 Developer Guide](https://help.synology.com/developer-guide/index.html)

* clone this repo into `toolkit/source/` folder.

* run `pkgscripts/PkgCreate.py synology-ipp-linux`

* and... voilà, package is ready in `build_env/<your env>/image/packages/`

## License

MIT
