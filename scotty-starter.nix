{ mkDerivation, aeson, base, blaze-html, blaze-markup, clay, scotty
, stdenv, text, wai-extra, wai-middleware-static
}:
mkDerivation {
  pname = "app";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base blaze-html blaze-markup clay scotty text wai-extra
    wai-middleware-static
  ];
  homepage = "https://github.com/dmjio/scotty-starter";
  description = "Starter kit project for Scotty Apps";
  license = stdenv.lib.licenses.unfree;
  hydraPlatforms = stdenv.lib.platforms.none;
}
