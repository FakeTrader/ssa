# Shadowsocks for Android [Mod]

[![Build Status](https://travis-ci.org/AndlsH/ssa.svg)](https://travis-ci.org/AndlsH/ssa)

This repository is forked from [shadowsocks/shadowsocks-android](https://github.com/shadowsocks/shadowsocks-android). 

## Note

The released apk files are not signed.

## Modification

### Remove ads
Ads code is located in `/src/main/scala/com/github/shadowsocks/Shadowsocks.scala`

```scala
if (profile.host == "198.199.101.152") if (adView == null) {
  adView = new AdView(this)
  adView.setAdUnitId("ca-app-pub-9097031975646651/7760346322")
  adView.setAdSize(AdSize.SMART_BANNER)
  preferences.getView.asInstanceOf[ViewGroup].addView(adView, 1)

  // Demographics
  val random = new Random()
  val adBuilder = new AdRequest.Builder()
  adBuilder.setGender(AdRequest.GENDER_MALE)
  val year = 1975 + random.nextInt(40)
  val month = 1 + random.nextInt(12)
  val day = random.nextInt(28)
  adBuilder.setBirthday(new GregorianCalendar(year, month, day).getTime)

  // Load Ad
  adView.loadAd(adBuilder.build())
} else adView.setVisibility(View.VISIBLE) else if (adView != null) adView.setVisibility(View.GONE)
```

## Feedback

Feel free to file a bug in GitHub Issues!

For questions on shadowsocks, please check the original repository. 

## License

This mod subjects to the GNU GPLv3 License.
