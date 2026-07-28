import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure EnzymeKinetics where
  michaelisMentenConstant : ℝ
  catalyticRate : ℝ
  substrateAffinity : Prop
  reactionRateLaw : ℝ → ℝ → ℝ
  affinityClosed : Prop
  rateClosed : Prop

def kineticsClosed (E : EnzymeKinetics) : Prop :=
  E.substrateAffinity ∧ (∀ s : ℝ, E.reactionRateLaw s 0 = 0)

theorem kinetics_closed_from_evidence (E : EnzymeKinetics) :
    kineticsClosed E := by
  exact And.intro E.affinityClosed E.rateClosed

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse