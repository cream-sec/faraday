# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ beautifulsoup4
, buildPythonPackage
, click
, colorama
, dateutil
, fetchPypi
, html2text
, lib
, lxml
, pytz
, requests
, simplejson
}:

buildPythonPackage rec {
  pname =
    "faraday-plugins";
  version =
    "1.4.2";

  src =
    fetchPypi {
      inherit
        pname
        version;
      sha256 =
        "1c5zapkbfgpc8nxc7icck97f610xf4r72anh8wpac8c7r1zcy0hb";
    };

  propagatedBuildInputs =
    [
      click
      simplejson
      requests
      lxml
      html2text
      beautifulsoup4
      pytz
      dateutil
      colorama
    ];

  # TODO FIXME
  doCheck =
    false;

  meta =
    with lib; {
      description =
        "Faraday plugins package";
    };
}
