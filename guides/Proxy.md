## NPM

* npm config set proxy http://proxy.company.com:8080
* npm config set https-proxy http://proxy.company.com:8080

参考 http://wil.boayue.com/blog/2013/06/14/using-npm-behind-a-proxy/

## APM

```
apm config set strict-ssl false
apm config set https-proxy http://proxy.company.com:8080
apm config set http-proxy http://proxy.company.com:8080
```

参考 

* https://github.com/atom/apm
* http://qiita.com/tsukamoto/items/cef0f2d7e2b33a26a9e5

## 自助安装 Atom Packages

1. search pageages in https://atom.io/packages 
2. goto repo page
3. `cd .atom/packages` and `git clone repo`
4. `cd package_name` then `apm install --verbose`

## 软件和网站

* [lantern](https://github.com/getlantern/lantern)
* [土行孙](https://itxs.li/)
