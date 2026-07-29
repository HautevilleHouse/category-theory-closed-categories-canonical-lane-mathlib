import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure UniversalConstructionPackage (A : AdmissibleClass) where
  initialObject : Prop
  terminalObject : Prop
  productExists : Prop
  coproductExists : Prop
  equalizerExists : Prop
  coequalizerExists : Prop

structure UniversalConstructionEvidence {A : AdmissibleClass} (P : UniversalConstructionPackage A) where
  initialObjectClosed : P.initialObject
  terminalObjectClosed : P.terminalObject
  productExistsClosed : P.productExists
  coproductExistsClosed : P.coproductExists
  equalizerExistsClosed : P.equalizerExists
  coequalizerExistsClosed : P.coequalizerExists

def UniversalConstructionClosed {A : AdmissibleClass} (P : UniversalConstructionPackage A) : Prop :=
  P.initialObject ∧ P.terminalObject ∧ P.productExists ∧ P.coproductExists ∧ P.equalizerExists ∧ P.coequalizerExists

theorem universal_construction_closed_from_evidence
    {A : AdmissibleClass} (P : UniversalConstructionPackage A) (E : UniversalConstructionEvidence P) :
    UniversalConstructionClosed P := by
  exact And.intro E.initialObjectClosed
    (And.intro E.terminalObjectClosed
      (And.intro E.productExistsClosed
        (And.intro E.coproductExistsClosed
          (And.intro E.equalizerExistsClosed E.coequalizerExistsClosed))))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse