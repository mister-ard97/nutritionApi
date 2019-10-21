const express = require('express')
const { recipeController } = require('../controllers')
const router = express.Router()

router.get('/getrecipe', recipeController.getRecipeData)
router.post('/postrecipe', recipeController.postRecipeData)
router.put('/editrecipe', recipeController.editRecipeData)
router.put('/editrecipedetail', recipeController.editRecipeDetail)
router.post('/deleterecipe', recipeController.deleteRecipeData)


module.exports = router