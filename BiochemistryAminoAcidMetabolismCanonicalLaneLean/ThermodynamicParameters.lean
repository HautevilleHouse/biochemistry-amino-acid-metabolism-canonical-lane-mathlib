import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.AminoAcidMetabolism

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure GibbsFreeEnergy where
  deltaG : ℝ
  standardDeltaG : ℝ
  temperature : ℝ
  ph : ℝ
  ionicStrength : ℝ
  equilibriumConstant : ℝ
  gibbsRelation : deltaG = 0 ↔ equilibriumConstant = 1

structure MetabolicFlux where
  flux : ℝ
  direction : String  -- forward or reverse
  rateEquation : Prop

structure ThermodynamicsEvidence where
  gibbsFreeEnergy : GibbsFreeEnergy
  flux : MetabolicFlux
  spontaneityCondition : deltaG < 0
  spontaneityConditionClosed : spontaneityCondition

def ThermodynamicsClosed (T : ThermodynamicsEvidence) : Prop :=
  T.spontaneityCondition

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsEvidence) : ThermodynamicsClosed T :=
  T.spontaneityConditionClosed

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse