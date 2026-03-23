{ lib, python312Packages }:

python312Packages.buildPythonPackage rec {
  pname = "weathergrabber";
  version = "0.0.13";
  pyproject = true;

  build-system = with python312Packages; [
    setuptools
    wheel
  ];

  src = python312Packages.fetchPypi {
    inherit pname version;
    hash = "sha256-pjPdR62hDLsTDHtL8yMuQPazQJJdDyc5dKz2DpgyT/k=";
  };

  propagatedBuildInputs = with python312Packages; [
    pyquery
    requests
  ];

  pythonImportsCheck = [ "weathergrabber" ];

  meta = with lib; {
    description = "A grabber for weather.com data with various output formats";
    homepage = "https://github.com/cjuniorfox/weathergrabber";
    license = licenses.mit;
    mainProgram = "weathergrabber";
  };
}
