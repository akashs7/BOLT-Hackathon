$(".button-fill").hover(
    function() {
      $(this)
        .children(".button-inside")
        .addClass("full");
    },
    function() {
      $(this)
        .children(".button-inside")
        .removeClass("full");
    }
  );
  document.getElementById("bscroll").addEventListener("click", function () {
    document.body.scrollIntoView(false);
  });