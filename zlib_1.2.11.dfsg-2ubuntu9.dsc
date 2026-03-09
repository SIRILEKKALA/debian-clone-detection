-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: zlib
Binary: zlib1g, zlib1g-dev, zlib1g-udeb, lib64z1, lib64z1-dev, lib32z1, lib32z1-dev, libn32z1, libn32z1-dev, libx32z1, libx32z1-dev
Architecture: any
Version: 1:1.2.11.dfsg-2ubuntu9
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Homepage: http://zlib.net/
Standards-Version: 3.9.8
Build-Depends: debhelper (>= 8.1.3~), gcc-multilib [amd64 i386 kfreebsd-amd64 mips mipsel powerpc ppc64 s390 sparc s390x mipsn32 mipsn32el mipsr6 mipsr6el mipsn32r6 mipsn32r6el mips64 mips64el mips64r6 mips64r6el x32] <!nobiarch>, dpkg-dev (>= 1.16.1)
Package-List:
 lib32z1 deb libs optional arch=amd64,ppc64,kfreebsd-amd64,s390x profile=!nobiarch
 lib32z1-dev deb libdevel optional arch=amd64,ppc64,kfreebsd-amd64,s390x profile=!nobiarch
 lib64z1 deb libs optional arch=sparc,s390,i386,powerpc,mips,mipsel,mipsn32,mipsn32el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,x32 profile=!nobiarch
 lib64z1-dev deb libdevel optional arch=sparc,s390,i386,powerpc,mips,mipsel,mipsn32,mipsn32el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,x32 profile=!nobiarch
 libn32z1 deb libs optional arch=mips,mipsel profile=!nobiarch
 libn32z1-dev deb libdevel optional arch=mips,mipsel profile=!nobiarch
 libx32z1 deb libs optional arch=amd64,i386
 libx32z1-dev deb libdevel optional arch=amd64,i386
 zlib1g deb libs required arch=any
 zlib1g-dev deb libdevel optional arch=any
 zlib1g-udeb udeb debian-installer optional arch=any
Checksums-Sha1:
 1b7f6963ccfb7262a6c9d88894d3a30ff2bf2e23 370248 zlib_1.2.11.dfsg.orig.tar.gz
 aa25c5ec99315133f9745666bfcf88b32b2dc32a 58360 zlib_1.2.11.dfsg-2ubuntu9.debian.tar.xz
Checksums-Sha256:
 80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899 370248 zlib_1.2.11.dfsg.orig.tar.gz
 5bb062e5f5ba606cb918181a7198faaf07eb8dbab0e6186159343223c0c92354 58360 zlib_1.2.11.dfsg-2ubuntu9.debian.tar.xz
Files:
 2950b229ed4a5e556ad6581580e4ab2c 370248 zlib_1.2.11.dfsg.orig.tar.gz
 d79555a9cfadece4e5d59e49aa507c7d 58360 zlib_1.2.11.dfsg-2ubuntu9.debian.tar.xz
Original-Maintainer: Mark Brown <broonie@debian.org>

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEUMSg3c8x5FLOsZtRZWnYVadEvpMFAmI/XEIACgkQZWnYVadE
vpNkPBAAqL5mn0PYeAoDfD/ALSANJn6b5Pr8xKKZwexUUj9aN3fNW2/PheQ1opml
blbPptM0WpPU9upmUQcT3BvpMPH4C45aCIB8MVTxPGF4JKtk4mttmvzLAdRl+kE0
WUCREmbs1kJ3I6974xgd1XUzCnKyte5Vmt3S50UOYx2OizPWBEjx7uwrSAImTc7M
EotKbGpjoJLAYsv4SqhF8ahWk9EFf3wZC8oxlZz4rRjdwBhTolGtRVhAZ4t3usGb
Gj1NUecZkvCrdUPq6s3L4F6bN3QnJBWlb9gbAQj729TH/1Ifvkkd6tgN500YgH/4
dgupUVaRCWrwb3yhzQ3rj8hf6aJT3DBWZmdDepWA2GlghDRxLdZWIp7q3ZPHuCE3
o2b2UsXMX4QBAvlc2JrCragGbFNIcMxtz+oLy/CJZOA3OOEisvJMzswrgQkDZFWM
X05sZBeS27QBVUcBSjHicT3wd8wbKhibJUPM3KhiEx0Ltz248mHCUZFTYxlxpgTQ
eQtUgMDKJMRTaslRP78bWDWMA6NpqkvIUphyw0LI9DV0aZqKPn75x7+QQ4RG94EG
OcaDYnsllF7vU2WvKeq5U09H2iRgW3FrDN7IQVCPFikf0HLdTl2lZorJfMXvWOZp
xo3QvxwuYByBnx/A8l56VnIAoEcl8+zBaN8wUhBzgAtn1f5hkDQ=
=HM3o
-----END PGP SIGNATURE-----
