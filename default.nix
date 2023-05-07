{ lib
, rustPlatform
, stdenv
, libpfm
}:

rustPlatform.buildRustPackage {
  pname = "immix-rust";
  version = "1.0";

  src = ./.;

  buildInputs = [ libpfm ];

  cargoSha256 = "sha256-u6lVmUPZrVYDF1atRZ3p4zzZVdJSkk3X2X548NjMc+s=";

#  buildInputs = lib.optional stdenv.isDarwin Security;

  meta = {
    description = "GC implementation in Rust, http://ts.data61.csiro.au/publications/nictaabstracts/Lin_BHN_16.abstract.pml";
    homepage = "https://github.com/jatcwang/immix-rust";
  };
}
