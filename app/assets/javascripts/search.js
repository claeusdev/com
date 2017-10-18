$(document).on("turbolinks:load", function() {
	$input = $("[data-behavior='autocomplete']")

	var options = {
		getValue: "name",
		url: function(phrase) {
			return "/search.json?q=" + phrase;
		},
		categories: [
			{
				listLocation: "products",
				header: "<strong>Products</strong>",
			},
			{
				listLocation: "stores",
				header: "<strong>Stores</strong>",
			}
		],
		list: {
			onChooseEvent: function(){
				var url = $input.getSelectedItemData().url
				$input.val("")
				Turbolinks.visit(url)
			}
		}
	}

	$input.easyAutocomplete(options)
});
