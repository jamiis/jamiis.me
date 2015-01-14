My personal website
===================

####Run Locally
Assumes node and npm are installed

```
npm install -g coffee-script less browserify bower
git clone --recursive https://github.com/jamiis/jamiis.me.git
cd jamiis.me
npm install
bower install
coffee --compile server/ client/
npm run css
npm run dev
```

Thanks [Angira Shirahatti](https://github.com/ashirahattia/) for the initial design!
