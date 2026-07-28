import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure MetabolicPathwayPackage where
  pathwayName : String
  enzymeSet : Type
  substrateList : Type
  productList : Type
  fluxControl : Prop
  regulationMechanism : Prop

structure MetabolicPathwayEvidence (P : MetabolicPathwayPackage) where
  fluxControlClosed : P.fluxControl
  regulationMechanismClosed : P.regulationMechanism

def MetabolicPathwayClosed (P : MetabolicPathwayPackage) : Prop :=
  P.fluxControl ∧ P.regulationMechanism

theorem metabolic_pathway_closed_from_evidence
    (P : MetabolicPathwayPackage) (E : MetabolicPathwayEvidence P) :
    MetabolicPathwayClosed P := by
  exact And.intro E.fluxControlClosed E.regulationMechanismClosed

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse