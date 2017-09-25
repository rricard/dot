# dot

[Robin Ricard][rr]'s _dotfiles_ or user configuration for various CLI things + various macOS/app configuration.

## Install

Clone it, run the init script:

```
git clone https://github.com/rricard/dot.git
cd dot
./bin/dot init
```

## Make it yours

You may want to fork this repo for yourself in order to tweak it like you want it to be. Since dot will install [hub][hub] for you, forking is super easy:

```
git fork
```

## Apply changes

Once you changed some things in your config, you can apply them:

```
dot apply
```

You can automatically apply, commit and push the config by adding a commit message:

```
dot apply -m YOUR_COMMIT_MESSAGE -u YOUR_GH_USERNAME
```

[rr]: http://rricard.me
[hub]: https://hub.github.com