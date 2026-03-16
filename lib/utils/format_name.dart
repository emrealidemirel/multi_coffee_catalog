String formatName(String name) {
  return name
      .replaceAll("_", " ")
      .split(" ")
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(" ");
}