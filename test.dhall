let
    lib = ./spago.dhall
in
{ name = "purescript-foldable-traversable"
, dependencies =
    lib.dependencies
    #
    [ "miraculix-lite"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    lib.sources
    #
    [ "test/**/*.purs"
    ]
}
