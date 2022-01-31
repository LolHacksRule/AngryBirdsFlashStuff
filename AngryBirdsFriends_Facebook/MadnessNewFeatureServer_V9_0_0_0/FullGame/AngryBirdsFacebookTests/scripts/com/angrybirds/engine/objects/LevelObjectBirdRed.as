package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBirdRed extends LevelObjectBird
   {
       
      
      private var mRedHasSquawked:Boolean;
      
      public function LevelObjectBirdRed(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
         this.mRedHasSquawked = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(centerXB2:Number, centerYB2:Number) : void
      {
         var xOffset:Number = -1 * Math.sin(getAngle());
         var yOffset:Number = 1 * Math.cos(getAngle());
         super.addTrailParticles(centerXB2 + xOffset,centerYB2 + yOffset);
      }
      
      override protected function specialPower(updateManager:ILevelObjectUpdateManager, targetX:Number = 0, targetY:Number = 0) : void
      {
         super.specialPower(updateManager,targetX,targetY);
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(!this.mRedHasSquawked)
         {
            this.mRedHasSquawked = true;
            playSpecialSound();
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(isFlying)
         {
            mRenderer.setAnimation(ANIMATION_BLINK);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
