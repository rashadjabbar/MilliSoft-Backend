
$(".change-mode").click(function () {
    if ($(this).find('#dark-mode').attr('data-active') == "true") {
        $(".adminpanelanimation-div").css({
            "background": "#222222",
            "display": "flex",
            "justify-content": "center",
            "align-items": "center",
            "height": "500px"
        });

        $(".adminpanelanimation").css({
            "font-weight": "700",
            "text-align": "center",
            "font-size": "40px",
            "font-family": "poppins,sans-serif",
            "text-transform": "uppercase",
            "background": "linear-gradient(90deg, #000, #fff, #000)",
            "letter-spacing": "5px",
            "-webkit-background-clip": "text",
            "background-clip": "text",
            "-webkit-text-fill-color": "transparent",
            "background-repeat": "no-repeat",
            "background-size": "80%",
            "animation": "shine 3s linear infinite",
            "position": "relative",

        });
    } else {
        $(".adminpanelanimation-div").css({
            "background": "#f8f9fe",
            "display": "flex",
            "justify-content": "center",
            "align-items": "center",
            "height": "500px"
        });

        $(".adminpanelanimation").css({
            "font-weight": "700",
            "text-align": "center",
            "font-size": "40px",
            "font-family": "poppins,sans-serif",
            "text-transform": "uppercase",
            "background": "linear-gradient(90deg, #fff, #000, #fff)",
            "letter-spacing": "5px",
            "-webkit-background-clip": "text",
            "background-clip": "text",
            "-webkit-text-fill-color": "transparent",
            "background-repeat": "no-repeat",
            "background-size": "80%",
            "animation": "shine 3s linear infinite",
            "position": "relative",

        });
    }
})








