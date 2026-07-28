import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure ReactionThermodynamicsPackage where
  deltaG : ℝ
  equilibriumConstant : ℝ
  spontaneity : Prop
  enthalpyChange : ℝ
  entropyChange : ℝ
  coupliedReactions : Prop

structure ReactionThermodynamicsEvidence (P : ReactionThermodynamicsPackage) where
  spontaneityClosed : P.spontaneity
  coupliedReactionsClosed : P.coupliedReactions

def ReactionThermodynamicsClosed (P : ReactionThermodynamicsPackage) : Prop :=
  P.spontaneity ∧ P.coupliedReactions

theorem reaction_thermodynamics_closed_from_evidence
    (P : ReactionThermodynamicsPackage) (E : ReactionThermodynamicsEvidence P) :
    ReactionThermodynamicsClosed P := by
  exact And.intro E.spontaneityClosed E.coupliedReactionsClosed

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse