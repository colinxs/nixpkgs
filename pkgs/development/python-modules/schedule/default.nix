{ lib
, buildPythonPackage
, fetchPypi
, mock
}:

buildPythonPackage rec {
  pname = "schedule";
  version = "1.1.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "e6ca13585e62c810e13a08682e0a6a8ad245372e376ba2b8679294f377dfc8e4";
  };

  buildInputs = [ mock ];

  meta = with lib; {
    description = "Python job scheduling for humans";
    homepage = "https://github.com/dbader/schedule";
    license = licenses.mit;
  };

}
