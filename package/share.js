function appendJS(src) {
  var script = document.createElement("script");
  script.src = src;
  document.head.appendChild(script);
}