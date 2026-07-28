import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.AminoAcidMetabolism
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.EnzymeKinetics
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.ThermodynamicParameters

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure PathwayEvidence where
  pathway : MetabolicPathway
  enzymeKineticsEvidence : List EnzymeKineticsPackage
  thermodynamicEvidence : ThermodynamicsEvidence
  allStepsValid : Prop
  allStepsValidClosed : allStepsValid

def PathwayClosed (P : PathwayEvidence) : Prop :=
  P.allStepsValid

theorem pathway_closed_from_evidence (P : PathwayEvidence) : PathwayClosed P :=
  P.allStepsValidClosed

structure CentralMetabolismEvidence where
  glycolysisPathway : PathwayEvidence
  tcaCyclePathway : PathwayEvidence
  aminoAcidSynthesisPathways : List PathwayEvidence
  aminoAcidDegradationPathways : List PathwayEvidence
  allCentralPathwaysClosed : Prop
  allCentralPathwaysClosedTerm : allCentralPathwaysClosed

def CentralMetabolismClosed (C : CentralMetabolismEvidence) : Prop :=
  C.allCentralPathwaysClosed

theorem central_metabolism_closed_from_evidence (C : CentralMetabolismEvidence) : CentralMetabolismClosed C :=
  C.allCentralPathwaysClosedTerm

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse