package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import starling.display.Sprite;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   
   public class LevelObjectManagerCustom extends LevelObjectManager
   {
       
      
      public function LevelObjectManagerCustom(param1:LevelMain, param2:LevelModel, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:LevelObjectBase) : Boolean
      {
         return false;
      }
      
      override protected function ignoreExplosion(param1:LevelObject) : Boolean
      {
         if(param1 is LevelObjectBird)
         {
            return true;
         }
         return false;
      }
      
      override protected function addObjectBird(param1:LevelObjectModel, param2:Sprite, param3:Animation, param4:LevelItem, param5:Number = 1.0, param6:Boolean = true) : LevelObjectBird
      {
         var _loc7_:LevelObjectBird;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).isFacingFlyingDirection = true;
         return _loc7_;
      }
   }
}
