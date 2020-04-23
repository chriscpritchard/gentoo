# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 eutils go-module

DESCRIPTION="A general-purpose command-line fuzzy finder, written in GoLang"
HOMEPAGE="https://github.com/junegunn/fzf"

EGO_SUM=(
	"github.com/DATA-DOG/go-sqlmock v1.3.3/go.mod h1:f/Ixk793poVmq4qj/V1dPUg2JEAKC73Q5eFN3EC/SaM="
	"github.com/gdamore/encoding v1.0.0 h1:+7OoQ1Bc6eTm5niUzBa0Ctsh6JbMW6Ra+YNuAtDBdko="
	"github.com/gdamore/encoding v1.0.0/go.mod h1:alR0ol34c49FCSBLjhosxzcPHQbf2trDkoo5dl+VrEg="
	"github.com/gdamore/tcell v1.3.0 h1:r35w0JBADPZCVQijYebl6YMWWtHRqVEGt7kL2eBADRM="
	"github.com/gdamore/tcell v1.3.0/go.mod h1:Hjvr+Ofd+gLglo7RYKxxnzCBmev3BzsS67MebKS4zMM="
	"github.com/lucasb-eyer/go-colorful v1.0.2 h1:mCMFu6PgSozg9tDNMMK3g18oJBX7oYGrC09mS6CXfO4="
	"github.com/lucasb-eyer/go-colorful v1.0.2/go.mod h1:0MS4r+7BZKSJ5mw4/S5MPN+qHFF1fYclkSPilDOKW0s="
	"github.com/lucasb-eyer/go-colorful v1.0.3 h1:QIbQXiugsb+q10B+MI+7DI1oQLdmnep86tWFlaaUAac="
	"github.com/lucasb-eyer/go-colorful v1.0.3/go.mod h1:R4dSotOR9KMtayYi1e77YzuveK+i7ruzyGqttikkLy0="
	"github.com/mattn/go-isatty v0.0.12 h1:wuysRhFDzyxgEmMf5xjvJ2M9dZoWAXNNr5LSBS7uHXY="
	"github.com/mattn/go-isatty v0.0.12/go.mod h1:cbi8OIDigv2wuxKPP5vlRcQ1OAZbq2CE4Kysco4FUpU="
	"github.com/mattn/go-runewidth v0.0.4 h1:2BvfKmzob6Bmd4YsL0zygOqfdFnK7GR4QL06Do4/p7Y="
	"github.com/mattn/go-runewidth v0.0.4/go.mod h1:LwmH8dsx7+W8Uxz3IHJYH5QSwggIsqBzpuz5H//U1FU="
	"github.com/mattn/go-runewidth v0.0.8 h1:3tS41NlGYSmhhe/8fhGRzc+z3AYCw1Fe1WAyLuujKs0="
	"github.com/mattn/go-runewidth v0.0.8/go.mod h1:H031xJmbD/WCDINGzjvQ9THkh0rPKHF+m2gUSrubnMI="
	"github.com/mattn/go-shellwords v1.0.9 h1:eaB5JspOwiKKcHdqcjbfe5lA9cNn/4NRRtddXJCimqk="
	"github.com/mattn/go-shellwords v1.0.9/go.mod h1:EZzvwXDESEeg03EKmM+RmDnNOPKG4lLtQsUlTZDWQ8Y="
	"github.com/saracen/walker v0.0.0-20191201085201-324a081bae7e h1:NO86zOn5ScSKW8wRbMaSIcjDZUFpWdCQQnexRqZ9h9A="
	"github.com/saracen/walker v0.0.0-20191201085201-324a081bae7e/go.mod h1:G0Z6yVPru183i2MuRJx1DcR4dgIZtLcTdaaE/pC1BJU="
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2 h1:VklqNMn3ovrHsnt90PveolxSbWFaJdECFbxSq0Mqo2M="
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod h1:djNgcEr1/C05ACkg1iLfiJU5Ep61QUkGW8qpdssI0+w="
	"golang.org/x/crypto v0.0.0-20200128174031-69ecbb4d6d5d h1:9FCpayM9Egr1baVnV1SX0H87m+XB0B8S0hAMi99X/3U="
	"golang.org/x/crypto v0.0.0-20200128174031-69ecbb4d6d5d/go.mod h1:LzIPMQfyMNhhGPhUkYOs5KpL4U8rLKemX1yGLhDgUto="
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod h1:t9HGtf8HONx5eT2rtn7q6eTqICYqUVnKs3thJo3Qplg="
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859 h1:R/3boaszxrf1GEUWTVDzSKVwLmSJpwZ1yqXm8j0v2QI="
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod h1:z5CRVTTTmAJ677TzLLGU+0bjPO0LkuOLi4/5GtJWs/s="
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod h1:RxMgew5VJxzue5/jJTE5uejpjVlOe/izrB70Jof72aM="
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e h1:vcxGaoTs7kV8m5Np9uUNQin4BrLOthgV7252N8V+FwY="
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod h1:RxMgew5VJxzue5/jJTE5uejpjVlOe/izrB70Jof72aM="
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/sys v0.0.0-20190626150813-e07cf5db2756 h1:9nuHUbU8dRnRRfj9KjWUVrJeoexdbeMjttk6Oh1rD10="
	"golang.org/x/sys v0.0.0-20190626150813-e07cf5db2756/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5 h1:LfCXLvNmTYH9kEmVgqbnsWfruoXZIrh4YBgqVHtDvw0="
	"golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/text v0.3.0 h1:g61tztE5qeGQ89tm6NTjjM9VPIm088od1l6aSorWRWg="
	"golang.org/x/text v0.3.0/go.mod h1:NqM8EUOU14njkJ3fqMW+pc6Ldnwhi/IjpwHt7yyuwOQ="
	"golang.org/x/text v0.3.2 h1:tW2bmiBqwgJj/UpqtC8EpXEZVYOwU0yG4iWbprSVAcs="
	"golang.org/x/text v0.3.2/go.mod h1:bEr9sfX3Q8Zfm5fL9x+3itogRgK3+ptLWKqgva+5dAk="
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod h1:n7NCudcB/nEzxVGmLbDWY5pfWTLqBcC2KZ6jyYvM4mQ="
	"golang.org/x/tools v0.0.0-20191011211836-4c025a95b26e h1:1o2bDs9pCd2xFhdwqJTrCIswAeEsn4h/PCNelWpfcsI="
	"golang.org/x/tools v0.0.0-20191011211836-4c025a95b26e/go.mod h1:b+2E5dAYhXwXZwtnZ6UAqBI28+e2cm9otk0dWdXHAEo="
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod h1:I/5z698sn9Ka8TeJc9MKroUUfqBBauWjQqLJ2OPfmY0="
)
go-module_set_globals

EGO_PN="github.com/junegunn/${PN}"
SRC_URI="https://${EGO_PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT BSD-with-disclosure"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${P/_/-}"

src_prepare() {
	# Temporary fix for upstream building issue: https://github.com/junegunn/fzf/issues/1994
	eapply "${FILESDIR}"/${P}-makefile.patch
	eapply_user
}

src_install() {
	default
	# Install fzf binary
	dobin bin/*

	# Install TMUX utils
	dobin bin/${PN}-tmux
	doman man/man1/${PN}-tmux.1

	# Install Neovim plugin
	insinto /usr/share/nvim/runtime/plugin
	doins plugin/${PN}.vim

	# Install VIM plugin
	insinto /usr/share/vim/vimfiles/plugin
	doins plugin/${PN}.vim

	# Install zsh completion file and key-bindings
	insinto /usr/share/zsh/site-functions
	newins shell/completion.zsh _${PN}

	# Install bash completion file
	newbashcomp shell/completion.bash ${PN}

	# Install key-bindings for Fish, Zsh and Bash
	insinto /usr/share/fzf/
	newins shell/key-bindings.fish ${PN}.fish
	newins shell/key-bindings.zsh ${PN}.zsh
	newins shell/key-bindings.bash ${PN}.sh
}

pkg_postinst() {
	optfeature "bash-completion support" app-shells/bash-completion
	optfeature "fish-completion support" app-shells/fish
	optfeature "fzf plugin for vim" app-editors/vim
	optfeature "neovim support" app-editors/neovim
	optfeature "tmux support" app-misc/tmux
	optfeature "zsh-completion support" app-shells/zsh
	einfo ""
	einfo "To use the fzf key-binding for your shell, make sure to use"
	einfo "the right file for your shell from /usr/share/fzf/"
	einfo "For bash, add the following line to ~/.bashrc"
	einfo "# source /usr/share/fzf/fzf.sh"
	einfo ""
	einfo "Or symlink the fzf bash script"
	einfo "# ln -s /usr/share/fzf/fzf.sh /etc/bash/bashrc.d/fzf.sh"
}
