    buildInputs = [ which ];

    buildPhase = ''
      sed -i 's/vimproc_mac\.so/vimproc_unix\.so/' autoload/vimproc.vim
      make -f make_unix.mak
    '';
