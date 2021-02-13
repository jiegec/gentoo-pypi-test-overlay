# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 )

inherit distutils-r1

DESCRIPTION="Pyro PPL on NumPy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/pyro-ppl/numpyro"

LICENSE="Apache License 2.0"
SLOT="0"
KEYWORDS="~amd64"

IUSE="examples"
RDEPEND="dev-python/jax[${PYTHON_USEDEP}]
	dev-python/jaxlib[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	examples? ( dev-python/matplotlib[${PYTHON_USEDEP}]
		dev-python/seaborn[${PYTHON_USEDEP}]
		dev-python/graphviz[${PYTHON_USEDEP}]
		dev-python/arviz[${PYTHON_USEDEP}] )"
distutils_enable_tests pytest
