# bberg-sdk

This project's purpose is to simplify the process of making Bloomberg SDK
available via Maven/Leiningen/Clojars by packing the contents of the JARs in
the Bloomberg Java SDK jar files into one single JAR, and pushing that as
an artifact to the public [Clojars Maven repository](http://clojars.org)

## Usage

This project is based on the excellent
[Leiningen](https://github.com/technomancy/leiningen) tool, which you need to
install first.  Furthermore, you need an account at
[Clojars](http://clojars.org).

Once these requirements are met, this is the procedure to create a new
lo-sdk release and push it to [Clojars](http://clojars.org/tulos/bberg-sdk).

1. Copy the current Bloomberg jar from your Blommberg API install into
the `bberg-sdk-jars/` folder.

2. Adjust the version number in `project.clj` to match the Bloomberg release.

4. Run the `do-release.sh` script.

That will create one single JAR containing all Bloomberg SDK classes
and upload it to clojars.

## License

This packaging:
Copyright (C) 2013 Tulos Capital

Distributed under the MIT License, see
[http://tulos.mit-license.org](http://tulos.mit-license.org)
for details.

The underlying jars:
Bloomberg Open API, see [http://raw.github.com/tulos/bberg-sdk/master/LICENSE.txt](http://raw.github.com/tulos/bberg-sdk/master/LICENSE.txt)
for details.
