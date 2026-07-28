import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure AminoAcid where
  name : String
  threeLetterCode : String
  oneLetterCode : Char
  sideChain : String
  isEssential : Prop

definition MetabolicRole : Prop := True

structure MetabolicPathway where
  name : String
  startingCompound : String
  endingCompound : String
  numberOfSteps : Nat
  enzymes : List Enzyme
  thermodynamics : ThermodynamicParameters

structure Enzyme where
  name : String
  ecNumber : String
  substrate : String
  product : String
  kcat : ℝ
  km : ℝ
  ki : Option ℝ
  reactionRate : ℝ → ℝ → ℝ  -- function of [S] and [E]

structure ThermodynamicParameters where
  deltaG : ℝ
  equilibriumConstant : ℝ
  ph : ℝ
  temperature : ℝ

structure AminoAcidMetabolismObject where
  pathways : List MetabolicPathway
  enzymes : List Enzyme
  aminoAcids : List AminoAcid
  centralPathways : Prop
  conclusion : centralPathways

def AminoAcidMetabolismClosed (O : AminoAcidMetabolismObject) : Prop :=
  O.centralPathways

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse