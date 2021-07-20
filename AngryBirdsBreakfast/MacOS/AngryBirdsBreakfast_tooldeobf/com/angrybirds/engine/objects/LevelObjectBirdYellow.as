package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectBirdYellow extends LevelObjectBird
   {
       
      
      public function LevelObjectBirdYellow(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         speedUpObject(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            mRenderer.setAnimation(ANIMATION_NORMAL,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
