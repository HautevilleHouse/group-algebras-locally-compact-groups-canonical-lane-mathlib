import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure GroupAlgebraSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroupAlgebraAdmittedObject where
  space : GroupAlgebraSpace
  locallyCompactGroup : Prop
  haarMeasureExists : Prop
  groupAlgebra : Type
  groupAlgebraTopology : TopologicalSpace groupAlgebra
  completeNormedAlgebra : Prop
  conclusion : completeNormedAlgebra

structure GroupAlgebraEndgameState where
  object : GroupAlgebraAdmittedObject

def GroupAlgebraWitnessClosed (O : GroupAlgebraAdmittedObject) : Prop :=
  O.completeNormedAlgebra

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse