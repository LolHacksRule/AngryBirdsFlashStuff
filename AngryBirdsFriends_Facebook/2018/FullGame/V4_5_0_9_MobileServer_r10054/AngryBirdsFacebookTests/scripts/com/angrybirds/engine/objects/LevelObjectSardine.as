package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.Tuner;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class LevelObjectSardine extends LevelObjectBird
   {
       
      
      protected var mSardineCanRotationSpeed:Number = 0.07;
      
      protected var mMightyEagleTimerMilliSeconds:Number = 0.0;
      
      public function LevelObjectSardine(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override public function addDamageParticles(updateManager:ILevelObjectUpdateManager, damage:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override public function blink() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      protected function updateRotation(deltaTimeMilliSeconds:Number) : void
      {
         if(health == healthMax)
         {
            if(this.mSardineCanRotationSpeed < Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.mSardineCanRotationSpeed += deltaTimeMilliSeconds * Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            getBody().SetAngularVelocity(deltaTimeMilliSeconds * this.mSardineCanRotationSpeed);
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         this.updateRotation(deltaTimeMilliSeconds);
         if(considerSleeping() || timeSinceCollisionMilliSeconds > Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimerMilliSeconds < Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               this.mMightyEagleTimerMilliSeconds += deltaTimeMilliSeconds;
               if(this.mMightyEagleTimerMilliSeconds - deltaTimeMilliSeconds < Tuner.MIGHTY_EAGLE_SOUND_DELAY && this.mMightyEagleTimerMilliSeconds >= Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  this.playMightyEagleSound();
               }
               if(this.mMightyEagleTimerMilliSeconds >= Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  this.addMightyEagle(updateManager);
               }
            }
         }
      }
      
      protected function playMightyEagleSound() : void
      {
         SoundEngine.playSound("mightyeagle","ChannelBird");
      }
      
      protected function addMightyEagle(updateManager:ILevelObjectUpdateManager) : void
      {
         var meStartX:Number = getBody().GetPosition().x - Tuner.MIGHTY_EAGLE_STARTING_DISTANCE;
         var meStartY:Number = getBody().GetPosition().y - Tuner.MIGHTY_EAGLE_STARTING_DISTANCE * Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
         var angle:Number = Tuner.MIGHTY_EAGLE_FLYING_ANGLE * -1.2;
         var mightyEagle:LevelObjectMightyEagle = updateManager.addObject("BIRD_MIGHTY_EAGLE",meStartX,meStartY,angle,LevelObjectManager.ID_NEXT_FREE) as LevelObjectMightyEagle;
         mightyEagle.renderer.setScale(1.82);
         mightyEagle.sardineId = id;
      }
      
      override public function updateOutOfBounds(updateManager:ILevelObjectUpdateManager) : void
      {
         this.playMightyEagleSound();
         this.addMightyEagle(updateManager);
      }
      
      override public function isReadyToBeRemoved(deltaTime:Number) : Boolean
      {
         return false;
      }
      
      override protected function handleLevelEndCheck() : void
      {
      }
   }
}
