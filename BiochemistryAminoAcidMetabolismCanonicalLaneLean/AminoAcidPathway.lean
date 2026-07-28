import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure AminoAcidPathway where
  intermediates : List Type
  enzymes : List Type
  fluxRegulation : Prop
  pathwayCompletion : Prop
  regulationClosed : Prop
  completionClosed : Prop

def pathwayClosed (P : AminoAcidPathway) : Prop :=
  P.fluxRegulation ∧ P.pathwayCompletion

theorem pathway_closed_from_evidence (P : AminoAcidPathway) :
    pathwayClosed P := by
  exact And.intro P.regulationClosed P.completionClosed

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse