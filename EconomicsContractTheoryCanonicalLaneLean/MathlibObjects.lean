import EconomicsContractTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicsAdmittedObject where
  space : EconomicsSpace
  preferences : Prop
  equilibrium : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  equilibriumExists : Prop
  conclusion : equilibriumExists

def EconomicsWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse