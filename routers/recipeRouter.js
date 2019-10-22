const express = require('express')
const { recipeController } = require('../controllers')
const router = express.Router()

router.get('/getrecipe', recipeController.getRecipeData)
router.post('/postrecipe', recipeController.postRecipeData)
router.put('/editrecipe', recipeController.editRecipeData)
router.put('/editrecipedetail/:id', recipeController.editRecipeDetail)
router.post('/deleterecipe', recipeController.deleteRecipeData)
router.get('/searchrecipe/:name', recipeController.searchRecipeName);


module.exports = router