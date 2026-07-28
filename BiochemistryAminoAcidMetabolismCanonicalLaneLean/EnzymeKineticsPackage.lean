import BiochemistryAminoAcidMetabolismCanonicalLaneLean.ThermodynamicParameters

/-!
# Enzyme Kinetics Package
-/

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure EnzymeKineticsPackage (T : ThermodynamicParametersPackage) where
  michaelisMentenEquation : Prop
  turnoverNumber : Prop
  substrateAffinity : Prop
  inhibitionModel : Prop

structure EnzymeKineticsEvidence {T : ThermodynamicParametersPackage}
    (E : EnzymeKineticsPackage T) where
  michaelisMentenEquationClosed : E.michaelisMentenEquation
  turnoverNumberClosed : E.turnoverNumber
  substrateAffinityClosed : E.substrateAffinity
  inhibitionModelClosed : E.inhibitionModel

def EnzymeKineticsClosed {T : ThermodynamicParametersPackage}
    (E : EnzymeKineticsPackage T) : Prop :=
  E.michaelisMentenEquation ∧ E.turnoverNumber ∧
  E.substrateAffinity ∧ E.inhibitionModel

theorem enzyme_kinetics_closed_from_evidence
    {T : ThermodynamicParametersPackage}
    (E : EnzymeKineticsPackage T) (Ev : EnzymeKineticsEvidence E) :
    EnzymeKineticsClosed E := by
  exact And.intro Ev.michaelisMentenEquationClosed
    (And.intro Ev.turnoverNumberClosed
      (And.intro Ev.substrateAffinityClosed Ev.inhibitionModelClosed))

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse