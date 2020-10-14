include /env.mak

IPP_VERSION=1.67.162-1
IPP_PKGNAME=ipp-linux_$(IPP_VERSION)_amd64.deb
IPP_SOURCE=http://pqsoftware.eaton.com/install/linux/ipp/

EXEC_DIR=build
EXEC=$(EXEC_DIR)/Eaton-IPP $(EXEC_DIR)/configs $(EXEC_DIR)/bin
DPKG_DIR=__pkg


all: $(EXEC)


$(IPP_PKGNAME):
	wget $(IPP_SOURCE)/$(IPP_PKGNAME)


$(DPKG_DIR): $(IPP_PKGNAME)
	dpkg -x $(IPP_PKGNAME) $(DPKG_DIR)


$(EXEC): $(DPKG_DIR)
	./$(DPKG_DIR)/usr/local/Eaton/IntelligentPowerProtector/mc2-install -install -silent -dir $(PWD)/$(EXEC_DIR)
	rm -rf build/bin/key.pem build/bin/cert.pem build/mc2 build/desktop


install: $(EXEC)
	cp -a $(EXEC_DIR)/* $(DESTDIR)


clean:
	rm -rf $(EXEC_DIR) $(IPP_PKGNAME) $(DPKG_DIR)
