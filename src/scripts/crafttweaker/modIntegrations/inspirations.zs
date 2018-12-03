/*
	SkyFactory 4 Inspirations Integration Script

	This script utilizes the Inspirations integration to add/remove/modify recipes.
	All liquid values are in Vanilla Bottle Amounts (4 equals 1 bucket)
*/
function init() {
	// ==================================
	// Fluid Recipes
	// ==================================
	// Water washes off ore saplings
	inspirations.addCauldronFluid(<minecraft:sapling>, <sky_orchards:sapling_dirt>, <liquid:water>);
	inspirations.addCauldronFluid(<minecraft:sapling:1>, <sky_orchards:sapling_petrified>, <liquid:water>);
	inspirations.addCauldronFluid(<minecraft:sapling:2>, <sky_orchards:sapling_sand>, <liquid:water>);
	inspirations.addCauldronFluid(<minecraft:sapling:5>, <sky_orchards:sapling_coal>, <liquid:water>);
	inspirations.addCauldronFluid(<integrateddynamics:menril_sapling>, <sky_orchards:sapling_lapis>, <liquid:water>);

	// Create Dirt Saplings by washing in mud
	inspirations.addCauldronFluid(<sky_orchards:sapling_dirt>, <minecraft:sapling>, <liquid:mud>);
	inspirations.addCauldronFluid(<sky_orchards:sapling_dirt>, <minecraft:sapling:1>, <liquid:mud>);
	inspirations.addCauldronFluid(<sky_orchards:sapling_dirt>, <minecraft:sapling:2>, <liquid:mud>);
	inspirations.addCauldronFluid(<sky_orchards:sapling_dirt>, <minecraft:sapling:3>, <liquid:mud>);
	inspirations.addCauldronFluid(<sky_orchards:sapling_dirt>, <minecraft:sapling:4>, <liquid:mud>);
	inspirations.addCauldronFluid(<sky_orchards:sapling_dirt>, <minecraft:sapling:5>, <liquid:mud>);

	// Dip Sticks into Liquid Sap to make Torches
	inspirations.addCauldronFluid(<minecraft:torch>, <minecraft:stick>, <liquid:sap>);

	//Converts lava into Obsidian Block
	inspirations.addCauldronFluid(<minecraft:obsidian>, <minecraft:water_bucket>, <liquid:lava>, 4);

	// Washing Sand off to bonemeal
	inspirations.addCauldronFluid(<minecraft:dye:15> * 3, <minecraft:sand>, <liquid:water>);

	// Washing clay in mud to make Jungle
	inspirations.addCauldronFluid(<minecraft:sapling:3>, <sky_orchards:sapling_clay>, <liquid:mud>);

	// Create grass from mud and leaves
	inspirations.addCauldronFluid(<minecraft:grass>, <ore:treeLeaves> * 1, <liquid:mud>, 1);

	// Acacia sapling from apple juice
	inspirations.addCauldronFluid(<minecraft:sapling:4>, <rustic:sapling_apple>, <liquid:water>, 4);

	// Blue Slime Trees
	inspirations.addCauldronFluid(<tconstruct:slime_sapling>, <sky_orchards:sapling_lapis>, <liquid:milk>, 4);

	// Blue Slime Trees
	inspirations.addCauldronFluid(<tconstruct:slime_sapling>, <sky_orchards:sapling_lapis>, <liquid:milk>, 4);

	//Blue Slime Liquid and created slime vines
	inspirations.addCauldronFluidTransform(<liquid:blueslime>, <tconstruct:edible:1>, <liquid:milk>);
	inspirations.addCauldronFluid(<tconstruct:slime_vine_blue>, <minecraft:vine>, <liquid:blueslime>, 1);

	//Purple Slime Liquid and created slime vines
	inspirations.addCauldronFluidTransform(<liquid:purpleslime>, <tconstruct:edible:2>, <liquid:milk>);
	inspirations.addCauldronFluid(<tconstruct:slime_vine_purple>, <minecraft:vine>, <liquid:purpleslime>, 1);

	// Green Slime Dirt
	inspirations.addCauldronFluid(<tconstruct:slime_dirt>, <minecraft:cactus>, <liquid:milk>, 4);

	// Magma Slime Sapling
	inspirations.addCauldronFluid(<tconstruct:slime_sapling:2>, <tconstruct:slime_sapling>, <liquid:pyrotheum>, 4);

	// Purple Slime Sapling
	inspirations.addCauldronFluid(<tconstruct:slime_sapling:1>, <tconstruct:slime_sapling>, <liquid:redstone>, 4);

	// ==================================
	// Fill Recipes
	// ==================================
	// Converts stone to lava
	inspirations.addCauldronFill(<minecraft:cobblestone>, <liquid:lava>, 1, null, true);

	// ==================================
	// Cauldron Dyeing Recipes
	// ==================================
	inspirations.addCauldronDyeing(<minecraft:sand:1>, <minecraft:sand>, "red");

	// ==================================
	// Cauldron Fluid Transformation Recipes
	// ==================================
	inspirations.addCauldronFluidTransform(<liquid:mud>, <minecraft:dirt>, <liquid:water>, 4);
}
