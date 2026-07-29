import canonicalLaneMathlib.ReviewerBridge

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  contractTheoryConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := "ContractTheoryAdmissibleClosure"
  , theoremObject := "Economics Contract Theory canonical theorem closure"
  , classicalBoundary := "classical source boundary carried by formalizationCertificate"
  , contractTheoryConstrainedStatement := "Admissible-class closure via bridge and gate; equilibrium and welfare theorems carried"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "Arrow-Debreu equilibrium, utility theory, growth models, asset pricing"
  }

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
