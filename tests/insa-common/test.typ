#import "/insa-template/insa-common.typ": *

// Tests for insa-logo-path function
#assert.eq(insa-logo-path("cvl"), "assets/cvl/logo.svg")
#assert.eq(insa-logo-path("hdf"), "assets/hdf/logo.png")
#assert.eq(insa-logo-path("rennes"), "assets/rennes/logo.png")

#assert.eq(
  catch(() => insa-logo-path("baguette")),
  "assertion failed: Only INSAs rennes, hdf, cvl are supported for now.",
)

// Tests for insa-school-name function
#assert.eq(insa-school-name("cvl"), "Centre Val de Loire")
#assert.eq(insa-school-name("hdf"), "Hauts-de-France")
#assert.eq(insa-school-name("rennes"), "Rennes")

#assert.eq(
  catch(() => insa-school-name("baguette")),
  "assertion failed: Only INSAs rennes, hdf, cvl are supported for now.",
)

