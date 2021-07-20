package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectWhiteBirdsEgg extends LevelObjectBlock
   {
       
      
      public function LevelObjectWhiteBirdsEgg(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.categoryBits = WHITE_BIRD_EGG_BIT_CATEGORY;
         _loc1_.maskBits = 65535 & ~BIRD_BIT_CATEGORY;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:ILevelObjectUpdateManager) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.addExplosion(LevelExplosion.TYPE_WHITE_BIRD_EGG,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:LevelObjectBase) : void
      {
         health = 0;
      }
   }
}
