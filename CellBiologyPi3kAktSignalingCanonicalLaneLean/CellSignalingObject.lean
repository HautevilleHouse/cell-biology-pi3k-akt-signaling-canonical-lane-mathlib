import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure TransmembraneReceptor where
  receptorType : Type
  ligandBindingDomain : Type
  dimerizationState : Prop
  kinaseActivity : Prop
  endocytosisRate : ℕ

typeIgfReceptor : TransmembraneReceptor := {
  receptorType := Unit
  ligandBindingDomain := Unit
  dimerizationState := True
  kinaseActivity := True
  endocytosisRate := 1
}

structure Pi3kEnzyme where
  regulatorySubunit : Type
  catalyticSubunit : Type
  activityPhosphorylation : Prop
  generatesPip3 : Prop

structure AktKinase where
  pleckstrinHomologyDomain : Type
  catalyticDomain : Type
  activationPhosphorylation : Prop
  downstreamEffects : Prop

structure SignalingPathwayState where
  receptor : TransmembraneReceptor
  pi3k : Pi3kEnzyme
  akt : AktKinase
  pip3Level : ℕ
  aktActivityLevel : ℕ

structure AdmittedObject where
  pathway : SignalingPathwayState
  signalTransduction : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (O : AdmittedObject) : Prop :=
  O.signalTransduction ∧ (O.endpointSatisfied ∨ O.remainderRecorded)

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse