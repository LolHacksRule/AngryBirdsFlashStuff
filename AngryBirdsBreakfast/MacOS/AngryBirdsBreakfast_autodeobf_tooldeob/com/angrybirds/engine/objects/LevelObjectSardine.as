package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.sound.SoundEngine;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.Tuner;
   
   public class LevelObjectSardine extends LevelObjectBird
   {
       
      
      protected var mSardineCanRotationSpeed:Number = 0.07;
      
      protected var mMightyEagleTimerMilliSeconds:Number = 0.0;
      
      public function LevelObjectSardine(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:ILevelObjectUpdateManager, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
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
      
      protected function updateRotation(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.mSardineCanRotationSpeed < Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.mSardineCanRotationSpeed += param1 * Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            getBody().SetAngularVelocity(param1 * this.mSardineCanRotationSpeed);
         }
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         super.update(param1,param2);
         this.updateRotation(param1);
         if(considerSleeping() || timeSinceCollisionMilliSeconds > Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimerMilliSeconds < Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               this.mMightyEagleTimerMilliSeconds += param1;
               if(this.mMightyEagleTimerMilliSeconds - param1 < Tuner.MIGHTY_EAGLE_SOUND_DELAY && this.mMightyEagleTimerMilliSeconds >= Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  this.playMightyEagleSound();
               }
               if(this.mMightyEagleTimerMilliSeconds >= Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  this.addMightyEagle(param2);
               }
            }
         }
      }
      
      protected function playMightyEagleSound() : void
      {
         SoundEngine.playSound("Mighty_Eagle_Selected_1","ChannelBird");
         SoundEngine.playSound("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function addMightyEagle(param1:ILevelObjectUpdateManager) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - Tuner.MIGHTY_EAGLE_STARTING_DISTANCE;
         var _loc3_:Number = getBody().GetPosition().y - Tuner.MIGHTY_EAGLE_STARTING_DISTANCE * Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
         var _loc4_:LevelObjectMightyEagle;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2,LevelObjectManager.ID_NEXT_FREE) as LevelObjectMightyEagle).renderer.setScale(1.82);
         _loc4_.sardineId = id;
      }
      
      override public function updateOutOfBounds(param1:ILevelObjectUpdateManager) : void
      {
         this.playMightyEagleSound();
         this.addMightyEagle(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
