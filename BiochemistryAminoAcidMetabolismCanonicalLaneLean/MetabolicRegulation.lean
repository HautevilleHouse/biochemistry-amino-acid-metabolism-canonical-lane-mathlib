import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure MetabolicRegulation where
  allostericControl : Prop
  feedbackInhibition : Prop
  covalentModification : Prop
  allostericClosed : Prop
  feedbackClosed : Prop
  covalentClosed : Prop

def regulationClosed (R : MetabolicRegulation) : Prop :=
  R.allostericControl ∧ R.feedbackInhibition ∧ R.covalentModification

theorem regulation_closed_from_evidence (R : MetabolicRegulation) :
    regulationClosed R := by
  exact And.intro R.allostericClosed (And.intro R.feedbackClosed R.covalentClosed)

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse