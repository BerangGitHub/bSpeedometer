window.addEventListener("message", async (e) => {
  if (e.data.action == "montrer") {
      $("body").show();
      let speed = e.data.speed * 2.2369;
      $(".speed").text(speed.toFixed(0));
      if (speed < 10) {
        $(".rec").animate({width: "145px"}, 0);
      }
      else if (speed > 100) {
        console.log("test")
        $(".rec").animate({width: "200px"}, 0);
      }
      else if (speed >= 11) {
        $(".rec").animate({width: "175px"}, 0);
      }
  } else if (e.data.action == "cacher") {
    $("body").hide();
  }
});