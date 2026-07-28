import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure AminoAcidBiosynthesis where
  pathwaySteps : ℕ
  essentialAminoAcids : List String
  nonEssentialAminoAcids : List String
  synthesisComplete : Prop
  synthesisClosed : Prop

def biosynthesisClosed (B : AminoAcidBiosynthesis) : Prop :=
  B.synthesisComplete ∧ B.pathwaySteps ≥ 1

theorem biosynthesis_closed_from_evidence (B : AminoAcidBiosynthesis) :
    biosynthesisClosed B := by
  exact And.intro B.synthesisClosed (by omega)

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse