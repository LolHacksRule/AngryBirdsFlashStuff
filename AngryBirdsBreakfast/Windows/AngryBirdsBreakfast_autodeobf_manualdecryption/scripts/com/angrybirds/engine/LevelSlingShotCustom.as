package com.angrybirds.engine
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.objects.LevelSlingshotObjectCustom;
   import starling.display.Sprite;
   import com.angrybirds.data.level.LevelModel;
   
   public class LevelSlingShotCustom extends LevelSlingshot
   {
       
      
      private var slingObject:LevelSlingshotObject;
      
      private var mTweeningBird:LevelSlingshotObject;
      
      public function LevelSlingShotCustom(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeSlingshotObject(param1:LevelItem, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : LevelSlingshotObject
      {
         return new LevelSlingshotObjectCustom(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
   }
}
