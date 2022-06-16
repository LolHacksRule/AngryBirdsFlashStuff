package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.Tuner;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelObjectBombPowerup extends LevelObject
   {
       
      
      private const UNWRAP_AT_SLEEP:Boolean = true;
      
      private const DELAY_FROM_TOUCH_TO_UNWRAP:uint = 10000;
      
      public var mLandSafely:Boolean = false;
      
      public var mHasTouchedGround:Boolean = false;
      
      private var mParachute:DisplayObject;
      
      private var mLifeTime:Number = 0;
      
      private const mRandomRadianOffset:Number = Math.random() * Math.PI * 2;
      
      private var mUnwrapTimer:Number = 0;
      
      public function LevelObjectBombPowerup(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.initParachute(animation,sprite);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         if(!this.mHasTouchedGround)
         {
            this.mUnwrapTimer = this.DELAY_FROM_TOUCH_TO_UNWRAP;
            this.mHasTouchedGround = true;
         }
         else
         {
            this.mUnwrapTimer -= 100;
         }
         return healthMax;
      }
      
      private function initParachute(animation:Animation, mainSprite:Sprite) : void
      {
         this.mParachute = animation.getSubAnimation("parachute").getFrame(0,null);
         mainSprite.addChild(this.mParachute);
      }
      
      public function updateBomb(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var pos:b2Vec2 = null;
         var tntObj:LevelObject = null;
         var windRadians:Number = NaN;
         var windDirection:Number = NaN;
         var reversedPivot:Point = null;
         var fallingVelocity:Number = NaN;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mHasTouchedGround && getBody())
         {
            this.mUnwrapTimer -= deltaTimeMilliSeconds;
            if(this.UNWRAP_AT_SLEEP && !getBody().IsAwake() || this.mUnwrapTimer <= 0)
            {
               pos = getBody().GetPosition();
               SoundEngine.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               tntObj = updateManager.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,getAngle(),LevelObjectManager.ID_NEXT_FREE) as LevelObject;
               if(tntObj)
               {
                  tntObj.setAngularVelocity(getBody().GetAngularVelocity());
               }
               updateManager.removeObject(this);
            }
         }
         if(this.mParachute)
         {
            windRadians = this.mRandomRadianOffset + this.mLifeTime / 1000 * Math.PI * Tuner.POWERUP_BOMB_SWINGS_PER_SECOND;
            windDirection = Math.sin(windRadians);
            if(this.mHasTouchedGround || !getBody())
            {
               this.mParachute.alpha -= 0.025;
               this.mParachute.y += 1;
               this.mParachute.rotation += 0.01;
               if(this.mParachute.alpha <= 0)
               {
                  this.mParachute.dispose();
                  this.mParachute = null;
               }
            }
            else
            {
               this.mParachute.rotation = Math.cos(windRadians) * Tuner.POWERUP_BOMB_PARACHUTE_SWING_FACTOR;
               reversedPivot = new Point(-this.mParachute.pivotX,-this.mParachute.pivotY * 2);
               this.mParachute.x = x + reversedPivot.x * Math.cos(this.mParachute.rotation) - reversedPivot.y * Math.sin(this.mParachute.rotation);
               this.mParachute.y = y + reversedPivot.x * Math.sin(this.mParachute.rotation) + reversedPivot.y * Math.cos(this.mParachute.rotation);
               fallingVelocity = getBody().GetLinearVelocity().y;
               if(fallingVelocity > Tuner.POWERUP_BOMB_MAXIMUM_VELOCITY)
               {
                  fallingVelocity = Tuner.POWERUP_BOMB_MAXIMUM_VELOCITY;
               }
               else if(fallingVelocity < -Tuner.POWERUP_BOMB_MAXIMUM_VELOCITY)
               {
                  fallingVelocity = -Tuner.POWERUP_BOMB_MAXIMUM_VELOCITY;
               }
               getBody().SetLinearVelocity(new b2Vec2(windDirection * Tuner.POWERUP_BOMB_WIND_FORCE,fallingVelocity));
            }
         }
         this.mLifeTime += deltaTimeMilliSeconds;
      }
      
      public function get isFinished() : Boolean
      {
         return !getBody() && this.mParachute == null;
      }
      
      public function get hasTouchedGround() : Boolean
      {
         return this.mHasTouchedGround;
      }
   }
}
