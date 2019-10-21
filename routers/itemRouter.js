const express = require('express')
const { itemController } = require('../controllers')
const router = express.Router()

router.get('/getitem', itemController.getItemData)
router.post('/postitem', itemController.postItemData)
router.put('/edititem', itemController.editItemData)
router.post('/deleteitem', itemController.deleteItemData)



module.exports = router