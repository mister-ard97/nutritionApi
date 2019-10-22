const express = require('express')
const { recipeController } = require('../controllers')
const router = express.Router()

router.get('/getrecipe', recipeController.getRecipeData)
router.post('/postrecipe', recipeController.postRecipeData)
router.put('/editrecipe', recipeController.editRecipeData)
router.put('/editrecipedetail/:id', recipeController.editRecipeDetail);
router.get('/deleterecipedetail/:id', recipeController.deleteRecipeDetail)
router.get('/deleterecipe/:id', recipeController.deleteRecipeData)
router.get('/searchrecipe/:name', recipeController.searchRecipeName);
router.get('/getrecipedetail/:id', recipeController.getDetailRecipe);

router.post('/editRecipeDetailItem/:id', recipeController.editRecipeDetailItem)


module.exports = router