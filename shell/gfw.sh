# Simple tricks to ease the pain of developing inside the GFW

# Use taobao's npm registry
alias tnpm='npm --registry=https://registry.npm.taobao.org/'

# Use pypi.douban.com for pip install
function dpi () {
  pip install $@ -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
}

# Use shadowsocks as proxy
alias ss='ALL_PROXY=socks5://localhost:1080'

