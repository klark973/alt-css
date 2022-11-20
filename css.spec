%define _unpackaged_files_terminate_build 1

%ifarch %e2k %mips riscv64
# shellcheck is not available on these architectures
%def_disable check
%endif

Name: css
Version: 1.7.6.20221022
Release: alt1

Summary: Compatibility Service Suite
License: GPLv3+
Group: Databases

Source: %name-%version.tar
Url: https://cssdev.basealt.space/
Packager: Leonid Krivoshein <klark@altlinux.org>

%{!?_disable_check:BuildRequires: shellcheck}

%description
This package contains common CSS build parts.

%package server
Summary: CSS server-side scripts and restricted shell
Group: System/Servers
Requires: ghostscript-classic
Requires: ImageMagick-tools
Requires: bash-builtin-lockf >= 0:0.2
Requires: git-core
Requires: nginx
Requires: openssh-server
Requires: php8.1
Requires: php8.1-fpm-fcgi
Requires: php8.1-gd
Requires: php8.1-libs
Requires: php8.1-mbstring
Requires: php8.1-yaml
Requires: rsync
Requires: sudo

%description server
Server-side restricted shell and scripts for Compatibility Service Suite.

%package client
Summary: CSS client-side command-line interface
Group: Databases
BuildArch: noarch
Requires: git-core
Requires: openssh-clients

%description client
Client-side command-line interface for Compatibility Service Suite.

%package examples
Summary: CSS example database
Group: Databases
BuildArch: noarch

%description examples
Example database for Compatibility Service Suite.

%prep
%setup

%build
echo "%name" >PACKAGE
echo "%version" >VERSION
%make_build

%install
%makeinstall_std

%post server
grep -qs "/usr/bin/css-sh" /etc/shells ||
	echo "/usr/bin/css-sh" >>/etc/shells

%postun server
sed -i -e "/\/usr\/bin\/css\-sh/d" /etc/shells

%files server
%dir /etc/%name
%config(noreplace) /etc/%name/engine.php
%config(noreplace) /etc/%name/csi-server.conf
%_bindir/%name-admin
%_bindir/%name-sh
/usr/libexec/%name
/var/www/html/*

%files client
%ghost %config(noreplace) /etc/%name/csi-client.conf
%_bindir/csi
/usr/libexec/csi

%files examples
%doc examples/CSI

%check
./check-scripts.sh \
	%buildroot/usr/libexec/%name \
	%buildroot/usr/libexec/csi \
	%buildroot%_bindir/csi \
	%buildroot/var/www/html/bin

%changelog
* Sat Oct 22 2022 Leonid Krivoshein <klark@altlinux.org> 1.7.6.20221022-alt1
- Removed temporary fix for reestr.gov.ru URL's.
- Added 2FA manual links to P10 table template.

