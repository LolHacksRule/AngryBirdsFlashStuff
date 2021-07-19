package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBirdYellow extends LevelObjectBird
   {
       
      
      private var mWaitingForSpecialPowerActivation:Boolean;
      
      public function LevelObjectBirdYellow(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
         this.mWaitingForSpecialPowerActivation = false;
      }
      
      override protected function specialPower(updateManager:ILevelObjectUpdateManager, targetX:Number = 0, targetY:Number = 0) : void
      {
         super.specialPower(updateManager,targetX,targetY);
         this.useChuckSpeed();
      }
      
      private function useChuckSpeed() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.mWaitingForSpecialPowerActivation = true;
            return;
         }
         this.mWaitingForSpecialPowerActivation = false;
         speedUpObject(launchForce);
      }
      
      override public function render(deltaTimeMilliSeconds:Number, worldStepMilliSeconds:Number, worldTimeOffsetMilliSeconds:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            mRenderer.setAnimation(ANIMATION_NORMAL,false);
         }
         super.render(deltaTimeMilliSeconds,worldStepMilliSeconds,worldTimeOffsetMilliSeconds);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mWaitingForSpecialPowerActivation)
         {
            this.useChuckSpeed();
         }
      }
   }
}
