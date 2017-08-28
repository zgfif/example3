document.addEventListener("turbolinks:load",function(){
		$input = $("[data-behavior='autocomplete']")


	var options = {
					getValue: "name", 
					url: function(phrase)
						{
							return "/search.json?q=" + phrase;
						},
		categories: [
						{
							listLocation: "authors",
							header: "--Authors--",
						},
						{
							listLocation: "books",
							header: "--Books--",
						},
						{
							listLocation: "genres",
							header: "--Genres--",
						},
						{
							listLocation: "locations",
							header: "--Locations--",
						},
						{
							listLocation: "users",
							header: "--Users--",
						},
					],  
		list: 	{ 
					onChooseEvent: function()
					{
						var url = $input.getSelectedItemData().url
						$input.val("")
						Turbolinks.visit(url)
						// console.log(url)
					}
			  	}	
	}
	$input.easyAutocomplete(options)

}
);