import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure GroupAlgebraCstarPackage where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  topologicalGroup : TopologicalGroup group
  haarMeasure : MeasureTheory.Measure group
  groupAlgebra : Type v
  starRing : StarRing groupAlgebra
  normedRing : NormedRing groupAlgebra
  cstarRing : CstarRing groupAlgebra
  universalProperty : Prop
  reducedProperty : Prop

structure GroupAlgebraCstarEvidence (G : GroupAlgebraCstarPackage) where
  universalPropertyClosed : G.universalProperty
  reducedPropertyClosed : G.reducedProperty

def GroupAlgebraCstarClosed (G : GroupAlgebraCstarPackage) : Prop :=
  G.universalProperty ∧ G.reducedProperty

theorem group_algebra_cstar_closed_from_evidence (G : GroupAlgebraCstarPackage)
    (E : GroupAlgebraCstarEvidence G) : GroupAlgebraCstarClosed G := by
  exact And.intro E.universalPropertyClosed E.reducedPropertyClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
