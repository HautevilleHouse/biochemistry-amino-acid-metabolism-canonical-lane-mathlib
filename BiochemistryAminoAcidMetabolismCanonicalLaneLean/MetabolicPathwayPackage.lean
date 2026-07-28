import BiochemistryAminoAcidMetabolismCanonicalLaneLean.EnzymeKineticsPackage

/-!
# Metabolic Pathway Package
-/

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure MetabolicPathwayPackage {T : ThermodynamicParametersPackage}
    (E : EnzymeKineticsPackage T) where
  pathwayFlux : Prop
  steadyState : Prop
  regulationMechanism : Prop
  branchPointsIdentified : Prop

structure MetabolicPathwayEvidence {T : ThermodynamicParametersPackage}
    {E : EnzymeKineticsPackage T} (P : MetabolicPathwayPackage E) where
  pathwayFluxClosed : P.pathwayFlux
  steadyStateClosed : P.steadyState
  regulationMechanismClosed : P.regulationMechanism
  branchPointsIdentifiedClosed : P.branchPointsIdentified

def MetabolicPathwayClosed {T : ThermodynamicParametersPackage}
    {E : EnzymeKineticsPackage T} (P : MetabolicPathwayPackage E) : Prop :=
  P.pathwayFlux ∧ P.steadyState ∧
  P.regulationMechanism ∧ P.branchPointsIdentified

theorem metabolic_pathway_closed_from_evidence
    {T : ThermodynamicParametersPackage} {E : EnzymeKineticsPackage T}
    (P : MetabolicPathwayPackage E) (Ev : MetabolicPathwayEvidence P) :
    MetabolicPathwayClosed P := by
  exact And.intro Ev.pathwayFluxClosed
    (And.intro Ev.steadyStateClosed
      (And.intro Ev.regulationMechanismClosed Ev.branchPointsIdentifiedClosed))

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse