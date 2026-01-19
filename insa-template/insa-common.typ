#let insa-heading-fonts = ("League Spartan", "Arial", "Liberation Sans")
#let insa-body-fonts = ("Source Serif", "Source Serif 4", "Georgia")
#let insa-colors = (
  primary: rgb("#e42618"),
  secondary: rgb("#f69f1d"),
  tertiary: rgb("#f5adaa"),
)

/// Checks that the school ID is supported and returns its full name.
///
/// - id (str): the short name of the school (rennes, hdf or cvl)
/// -> str
#let insa-school-name(id) = {
  let supported-insas = (
    "rennes": "Rennes",
    "hdf": "Hauts-de-France",
    "cvl": "Centre Val de Loire",
  )
  assert(
    supported-insas.keys().contains(id),
    message: "Only INSAs " + supported-insas.keys().join(", ") + " are supported for now.",
  )
  return supported-insas.at(id)
}

/// Returns the path to the INSA logo for the given school identifier.
///
/// - id (str): the short name of the school (rennes, hdf or cvl)
/// -> str
#let insa-logo-path(id) = {
  let supported-insas = (
    "rennes": "Rennes",
    "hdf": "Hauts-de-France",
    "cvl": "Centre Val de Loire",
  )
  assert(
    supported-insas.keys().contains(id),
    message: "Only INSAs " + supported-insas.keys().join(", ") + " are supported for now.",
  )

  let base-path = "assets/" + id + "/logo."
  let extension = if id == "cvl" { "svg" } else { "png" }
  return base-path + extension
}

#let insa-front-cover-path(id, variant: 1) = {
  let supported-insas = (
    "rennes": "Rennes",
    "hdf": "Hauts-de-France",
    "cvl": "Centre Val de Loire",
  )
  assert(
    supported-insas.keys().contains(id),
    message: "Only INSAs " + supported-insas.keys().join(", ") + " are supported for now.",
  )
  assert(
    variant >= 1 and variant <= 3,
    message: "Variant must be 1, 2, or 3.",
  )

  let base-path = "assets/" + id + "/front-cover"
  // cvl has no variant number for svg, and variant 3 is png
  if id == "cvl" {
    if variant == 3 {
      return base-path + "3.png"
    } else {
      return base-path + ".svg"
    }
  } else {
    return base-path + str(variant) + ".png"
  }
}
