PREFIX=${CURDIR}/debian/openapp-ruby

install:
# bin
	mkdir -p $(PREFIX)/usr/bin
	ln -s /usr/bin/openapp-phpmyadmin-passwd $(PREFIX)/usr/bin/openapp-ruby-passwd

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	ln -s /usr/share/man/man1/openapp-phpmyadmin-passwd.1.gz $(PREFIX)/usr/share/man/man1/openapp-ruby-passwd.1.gz

uninstall:
# bin
	rm -rf $(PREFIX)/usr/bin/openapp-ruby-passwd
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-ruby-passwd.1.gz

clean:
	-echo "NOP"

 

