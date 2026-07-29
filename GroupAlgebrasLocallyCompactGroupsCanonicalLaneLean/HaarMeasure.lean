import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure HaarMeasurePackage where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  topologicalGroup : TopologicalGroup group
  haarMeasure : MeasureTheory.Measure group
  leftInvariant : Prop
  regularOnCompact : Prop
  uniqueness : Prop

structure HaarMeasureEvidence (H : HaarMeasurePackage) where
  leftInvariantClosed : H.leftInvariant
  regularOnCompactClosed : H.regularOnCompact
  uniquenessClosed : H.uniqueness

def HaarMeasureClosed (H : HaarMeasurePackage) : Prop :=
  H.leftInvariant ∧ H.regularOnCompact ∧ H.uniqueness

theorem haar_measure_closed_from_evidence (H : HaarMeasurePackage) (E : HaarMeasureEvidence H) :
    HaarMeasureClosed H := by
  exact And.intro E.leftInvariantClosed (And.intro E.regularOnCompactClosed E.uniquenessClosed)

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
