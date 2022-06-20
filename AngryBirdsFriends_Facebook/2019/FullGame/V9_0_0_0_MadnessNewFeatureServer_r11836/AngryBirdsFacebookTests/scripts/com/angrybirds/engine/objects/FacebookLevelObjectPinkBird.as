package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectPinkBird extends LevelObjectBird
   {
      
      public static const STELLA_BUBBLE_EFFECT_RADIUS:int = 7;
      
      public static const STELLA_BUBBLE_EFFECT_RADIUS_SUPERSEED:int = 9;
      
      public static const STELLA_BUBBLE_DURATION:int = 2000;
      
      public static const STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_X:Number = 0.7;
      
      public static const STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_Y:Number = 2.8;
      
      public static const STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_X_SUPERSEED:Number = 4;
      
      public static const STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_Y_SUPERSEED:Number = 5;
      
      private static const PINK_TIME:int = 2500;
      
      private static const SONIC_BOOM_ACTIVATION_TIME:Number = 500;
      
      private static const BUBBLE_BURST_EFFECT_DIST:int = 5;
      
      private static const BUBBLE_BURST_EFFECT_PARTICLE_COUNT:int = 16;
      
      private static const BUBBLE_BURST_EFFECT_DIST_SUPERSEED:int = 8;
      
      private static const BUBBLE_BURST_EFFECT_PARTICLE_COUNT_SUPERSEED:int = 22;
      
      private static const SONIC_BOOM_SCALE_START:Number = 0.75;
      
      private static const SONIC_BOOM_SCALE_END:Number = 6;
      
      private static const SONIC_BOOM_SCALE_END_SUPERSEED:Number = 8;
       
      
      private var mPinkTimer:Number = -1;
      
      private var mSonicBoomActivated:Boolean = false;
      
      private var mStartDrawingTheBubble:Boolean = false;
      
      public function FacebookLevelObjectPinkBird(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !mSpecialPowerUsed;
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(super.activateSpecialPower(updateManager,targetX,targetY))
         {
            this.startStellaBubblesTimer(SONIC_BOOM_ACTIVATION_TIME,updateManager);
            return true;
         }
         return false;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         var returnValue:Number = super.applyDamage(damage,updateManager,damagingObject,addScore,ignoreDefence);
         if(this.mPinkTimer < 0 && this.canActivateSpecialPower && (damagingObject && !damagingObject.levelItem.specialtyAvailableAfterCollision))
         {
            this.startStellaBubblesTimer(PINK_TIME,updateManager);
         }
         return returnValue;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var sonicBoomScaleEnd:Number = NaN;
         var dist:int = 0;
         var particleSetCount:int = 0;
         var j:int = 0;
         var levelObjectsCount:int = 0;
         var i:int = 0;
         var a:Number = NaN;
         var dx:Number = NaN;
         var dy:Number = NaN;
         var obj:LevelObject = null;
         var point1:b2Vec2 = null;
         var point2:b2Vec2 = null;
         var distance:Number = NaN;
         var floatX:Number = NaN;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mStartDrawingTheBubble)
         {
            sonicBoomScaleEnd = !!mPowerUpSuperSeedUsed ? Number(SONIC_BOOM_SCALE_END_SUPERSEED) : Number(SONIC_BOOM_SCALE_END);
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            (AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager).addSonicBoom(x * LevelMain.PIXEL_TO_B2_SCALE,y * LevelMain.PIXEL_TO_B2_SCALE,SONIC_BOOM_ACTIVATION_TIME,SONIC_BOOM_SCALE_START,sonicBoomScaleEnd);
            this.mStartDrawingTheBubble = false;
         }
         if(this.mPinkTimer >= 0)
         {
            this.mPinkTimer -= deltaTimeMilliSeconds;
            if(this.mPinkTimer <= SONIC_BOOM_ACTIVATION_TIME)
            {
               if(!this.mSonicBoomActivated)
               {
                  this.mSonicBoomActivated = true;
                  mIsLeavingTrail = false;
                  if(this.canActivateSpecialPower)
                  {
                     mSpecialPowerUsed = true;
                     playSpecialSound();
                     mRenderer.setAnimation(ANIMATION_SPECIAL,false);
                  }
                  getBody().SetLinearVelocity(new b2Vec2(0,0));
                  this.mStartDrawingTheBubble = true;
               }
               else
               {
                  getBody().ApplyForce(new b2Vec2(0,-getBody().GetWorld().GetGravity().y * getBody().GetMass() + 1),mB2Body.GetWorldCenter());
               }
            }
            if(this.mPinkTimer <= 0)
            {
               SoundEngine.playSound("button_appear");
               SoundEngine.playSoundFromVariation("pumpkin_collision_04");
               dist = !!mPowerUpSuperSeedUsed ? int(BUBBLE_BURST_EFFECT_DIST_SUPERSEED) : int(BUBBLE_BURST_EFFECT_DIST);
               particleSetCount = !!mPowerUpSuperSeedUsed ? int(BUBBLE_BURST_EFFECT_PARTICLE_COUNT_SUPERSEED) : int(BUBBLE_BURST_EFFECT_PARTICLE_COUNT);
               for(j = 0; j < particleSetCount; j++)
               {
                  a = j / particleSetCount * Math.PI * 2;
                  dx = Math.cos(a) * dist;
                  dy = Math.sin(a) * dist;
                  createBubbleExplosionParticleSets(getBody().GetPosition().x + dx,getBody().GetPosition().y + dy,3);
               }
               levelObjectsCount = AngryBirdsEngine.smLevelMain.levelObjects.getObjectCount();
               for(i = 0; i < levelObjectsCount; i++)
               {
                  obj = AngryBirdsEngine.smLevelMain.levelObjects.getObject(i) as LevelObject;
                  if(!(obj.levelItem.bubbleDamage == 0 && obj.getBody().GetMass() == 0 && (obj.isTexture() || obj.isGround() || obj.isConcreteObject) && obj.itemName.indexOf("INVISIBLE") == -1))
                  {
                     if(!(obj is FacebookSlingshotTreepart))
                     {
                        point1 = getBody().GetPosition();
                        point2 = obj.getBody().GetPosition();
                        distance = Math.sqrt((point1.x - point2.x) * (point1.x - point2.x) + (point1.y - point2.y) * (point1.y - point2.y));
                        if(mPowerUpSuperSeedUsed)
                        {
                           if(distance < STELLA_BUBBLE_EFFECT_RADIUS_SUPERSEED)
                           {
                              floatX = (point2.x - point1.x) * STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_X_SUPERSEED;
                              obj.setToBubble(STELLA_BUBBLE_DURATION,floatX,STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_Y_SUPERSEED);
                           }
                        }
                        else if(distance < STELLA_BUBBLE_EFFECT_RADIUS)
                        {
                           floatX = (point2.x - point1.x) * STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_X;
                           obj.setToBubble(STELLA_BUBBLE_DURATION,floatX,STELLA_BUBBLE_ANTI_GRAVITY_FLOAT_Y);
                        }
                     }
                  }
               }
               this.mPinkTimer = -1;
            }
         }
      }
      
      private function startStellaBubblesTimer(timeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         this.mPinkTimer = timeMilliSeconds;
      }
      
      override public function isReadyToBeRemoved(deltaTime:Number) : Boolean
      {
         if(mSpecialPowerUsed && this.mPinkTimer < 0 && !inBubble)
         {
            return true;
         }
         return super.isReadyToBeRemoved(deltaTime);
      }
   }
}
