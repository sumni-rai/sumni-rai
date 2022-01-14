module(..., package.seeall)

function new()

	local recipeGroup = display.newGroup();

		local scrollView = require("scrollView")
		local util = require("util")
		local topBoundary = display.screenOriginY
		local bottomBoundary = display.screenOriginY
		local scrollView = scrollView.new{top=topBoundary,bottom=bottomBoundary}
		
		local recipe1 = display.newImage("graphics/recipe1.png")

		local topMenuBar = display.newImage("graphics/topMenuBar.png")
	
		local backButton = display.newImage("graphics/backButton.png")
		backButton.x = 40;
		backButton.y = 28;
		backButton.scene = "menu";
		
		scrollView:insert(recipe1)
		recipeGroup:insert(scrollView);
		recipeGroup:insert(topMenuBar);
		recipeGroup:insert(backButton);
		
		backButton:addEventListener("touch", changeScene);
		
	return recipeGroup;

end
