FROM haskell:8.0.2

WORKDIR /app
ADD course.cabal /app/
ADD stack.yaml /app/

RUN cabal update
RUN cabal install cabal-install
RUN cabal install --only-dependencies --enable-tests
RUN cabal configure --enable-tests
RUN cabal build
