# Nine Flutter Tips

Here are some useful (and fun!) developer experience tips for Flutter app development. 👀 💻 🤍

We'll go through all 9️⃣ of them, and by the end, I hope you'll have learned 9️⃣ new things! 

Do you have any other awesome tips❓
🙋‍♂️ 🙋‍♀️ Throw them down in the comments because I love finding better, easier, and lazier ways of doing things! 


[Watch the tutorial now!](https://www.youtube.com/watch?v=IdtramLtYVA)

---

Here are the instructions for FVM since there were a few commands ran during the tutorial that might be hard to follow.

First, Install FVM [here](https://fvm.app)!

Run this to use the latest official flutter boilerplate (or the one for the version you are using)

```
fvm install 3.22.0
~/fvm/versions/3.22.0/bin/flutter create fluttips
```

Then open project in vscode and run the following to configure your project to use this version moving forward.
```
fvm use 3.22.0
fvm flutter doctor
```

Then you run all your flutter/dart commands with the `fvm` prefix. For example:
```
fvm flutter pub get
fvm flutter clean
fvm flutter pub add cool_package
```
