package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectSnowBall extends LevelObject
   {
      
      private static const SNOWBALL_CHANNEL_NAME:String = "SnowBallSounds";
      
      private static const SNOWBALL_CHANNEL_MAX_SOUNDS:int = 1;
      
      private static const SNOWBALL_CHANNEL_VOLUME:Number = 1;
       
      
      private const MAX_SIZE:Number = 5;
      
      private const GROWTH_PER_ROTATION:Number = 0.9;
      
      private const GROWTH_MIN_STEP:Number = 0.01;
      
      private const MIN_SCALE_DELTA_FOR_SOUND:Number = 0.002;
      
      private const MIN_TIME_FOR_SOUND_CHANGE:Number = 350;
      
      private var mGrowthScale:Number = 1;
      
      private var mOriginalRadius:Number = 1;
      
      private var mStaticCollisionStartPosition:b2Vec2;
      
      private var mStaticCollisionStartRadius:Number;
      
      private var mCircumference:Number;
      
      private var mMaxScale:Number = 1;
      
      private var mIsCannonBall:Boolean = false;
      
      private var mHasHitBird:Boolean = false;
      
      private var mCannonballParticles:Boolean = false;
      
      private var mLinearVelAtRemove:b2Vec2 = null;
      
      private var mRollingSoundLoop:SoundEffect;
      
      private var mRollingDeltaOverTreashold:Number = 0;
      
      public function FacebookLevelObjectSnowBall(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         SoundEngine.addNewChannelControl(SNOWBALL_CHANNEL_NAME,SNOWBALL_CHANNEL_MAX_SOUNDS,SNOWBALL_CHANNEL_VOLUME);
         this.mOriginalRadius = (getBody().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         this.mMaxScale = this.MAX_SIZE / this.mOriginalRadius;
         this.calculateCircumference();
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var pos:b2Vec2 = null;
         var angleStep:Number = NaN;
         var currentRadius:Number = NaN;
         var i:Number = NaN;
         var angleCos:Number = NaN;
         var angleSin:Number = NaN;
         if(!updateManager)
         {
            return;
         }
         if(!this.mIsCannonBall || this.mHasHitBird)
         {
            pos = getBody().GetPosition();
            angleStep = Math.PI * 4 / (30 * (this.mGrowthScale / this.mMaxScale));
            currentRadius = this.mGrowthScale * this.mOriginalRadius;
            for(i = 0; i < Math.PI * 4; i += angleStep)
            {
               angleCos = Math.cos(i);
               angleSin = Math.sin(i);
               this.addSnowParticle(Math.round(Math.random() * 7 + 1),pos.x - angleCos * Math.random() * currentRadius,pos.y - angleSin * Math.random() * currentRadius,-angleCos * (6 * Math.random() + 3),-angleSin * (6 * Math.random() + 3));
            }
         }
      }
      
      protected function addSnowParticle(type:int, x:Number, y:Number, speedX:Number, speedY:Number) : void
      {
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(this.mIsCannonBall && !this.mHasHitBird)
         {
            return health;
         }
         return super.applyDamage(damage,updateManager,damagingObject,damage >= health);
      }
      
      override public function collidedWith(obj:LevelObjectBase) : void
      {
         var bird:LevelObjectBird = null;
         var diffPos:b2Vec2 = null;
         var thisOldSpeed:Number = NaN;
         var birdOldSpeed:Number = NaN;
         var newSpeed:Number = NaN;
         var newVel:b2Vec2 = null;
         var levelObject:LevelObject = null;
         if(this.mIsCannonBall && !this.mHasHitBird)
         {
            if(!this.mHasHitBird && obj is LevelObjectBird)
            {
               bird = obj as LevelObjectBird;
               this.mHasHitBird = true;
               diffPos = getBody().GetPosition().Copy();
               diffPos.Subtract(obj.getBody().GetPosition());
               diffPos.Normalize();
               thisOldSpeed = getBody().GetLinearVelocity().Length();
               birdOldSpeed = obj.getBody().GetLinearVelocity().Length();
               newSpeed = (thisOldSpeed + birdOldSpeed / 2) * 0.6;
               newVel = new b2Vec2(diffPos.x * newSpeed,diffPos.y * newSpeed);
               getBody().SetLinearVelocity(newVel);
               obj.getBody().GetLinearVelocity().Multiply(0.5);
               bird.health = bird.healthMax - 1;
               obj.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.mHasHitBird)
            {
               this.mCannonballParticles = true;
               this.mLinearVelAtRemove = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(obj);
            levelObject = obj as LevelObject;
            if(levelObject && !levelObject.isDestroyable)
            {
               this.mStaticCollisionStartPosition = getBody().GetPosition().Copy();
               this.mStaticCollisionStartRadius = (getBody().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
            }
         }
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         var pos:b2Vec2 = null;
         var vel:b2Vec2 = null;
         var normalAngle:Number = NaN;
         var i:int = 0;
         var ballPosOnScreen:Point = null;
         var angle:Number = NaN;
         var speed:Number = NaN;
         if(!updateManager)
         {
            return;
         }
         if(this.mCannonballParticles)
         {
            pos = getBody().GetPosition();
            vel = this.mLinearVelAtRemove.GetNegative();
            vel.Normalize();
            normalAngle = Math.atan2(vel.y,vel.x);
            if(normalAngle < 0)
            {
               normalAngle += Math.PI * 2;
            }
            for(i = 0; i < 15; i++)
            {
               angle = normalAngle + (Math.PI / 2 * Math.random() - Math.PI / 4);
               speed = Math.random() * 12;
               this.addSnowParticle(Math.round(Math.random() * 4 + 3),pos.x,pos.y,Math.cos(angle) * speed,Math.sin(angle) * speed);
            }
            ballPosOnScreen = AngryBirdsEngine.smLevelMain.box2DToScreen(pos.x,pos.y);
            if(ballPosOnScreen.x > 0 && ballPosOnScreen.x < LevelMain.LEVEL_WIDTH_PIXEL)
            {
               SoundEngine.playSoundFromVariation("Snow_Ball_Impact_5");
            }
            updateManager.addExplosion(FacebookLevelExplosion.TYPE_SNOW_BALL_EXPLOSION,pos.x,pos.y);
            updateManager.removeObject(this);
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var diff:b2Vec2 = null;
         var mag:Number = NaN;
         var growth:Number = NaN;
         var newRad:Number = NaN;
         if(isRolling && (getBody().GetFixtureList().GetShape() as b2CircleShape).GetRadius() < this.MAX_SIZE)
         {
            diff = getBody().GetPosition().Copy();
            diff.Subtract(this.mStaticCollisionStartPosition);
            mag = diff.Length();
            growth = mag / this.mCircumference * this.GROWTH_PER_ROTATION;
            if(growth > this.GROWTH_MIN_STEP)
            {
               if(!this.mRollingSoundLoop)
               {
                  this.mRollingSoundLoop = SoundEngine.playSound("Sound_Snow_Ball_Rolling_Loop",SNOWBALL_CHANNEL_NAME,9999);
               }
               newRad = this.mStaticCollisionStartRadius + growth;
               if(newRad > this.MAX_SIZE)
               {
                  newRad = this.MAX_SIZE;
               }
               this.setBodyParameters(newRad);
               if(newRad / this.mOriginalRadius - this.mGrowthScale > this.MIN_SCALE_DELTA_FOR_SOUND)
               {
                  this.mRollingDeltaOverTreashold += deltaTimeMilliSeconds;
               }
               else
               {
                  this.mRollingDeltaOverTreashold -= deltaTimeMilliSeconds;
               }
               if(this.mRollingDeltaOverTreashold > this.MIN_TIME_FOR_SOUND_CHANGE)
               {
                  if(this.mRollingSoundLoop)
                  {
                     this.mRollingSoundLoop.volume = 1;
                  }
               }
               else if(this.mRollingSoundLoop)
               {
                  this.mRollingSoundLoop.volume = 0;
               }
               this.mGrowthScale = newRad / this.mOriginalRadius;
               mRenderer.setScale(this.mGrowthScale * scale);
            }
            else if(this.mRollingSoundLoop)
            {
               this.mRollingSoundLoop.volume = 0;
            }
         }
         else
         {
            this.mRollingDeltaOverTreashold = 0;
            if(this.mRollingSoundLoop)
            {
               this.mRollingSoundLoop.volume = 0;
            }
         }
         super.update(deltaTimeMilliSeconds,updateManager);
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         if(this.mRollingSoundLoop)
         {
            this.mRollingSoundLoop.stop();
            this.mRollingSoundLoop = null;
         }
         super.dispose(b);
      }
      
      private function setBodyParameters(radius:Number, density:Number = -1, friction:Number = -1, restitution:Number = -1) : void
      {
         var body:b2Body = getBody();
         var fixture:b2Fixture = body.GetFixtureList();
         var shape:b2CircleShape = fixture.GetShape() as b2CircleShape;
         body.SetAwake(true);
         shape.SetRadius(radius);
         if(density >= 0)
         {
            fixture.SetDensity(density);
         }
         if(friction >= 0)
         {
            fixture.SetFriction(friction);
         }
         if(restitution >= 0)
         {
            fixture.SetRestitution(restitution);
         }
         body.ResetMassData();
         this.calculateCircumference();
      }
      
      private function calculateCircumference() : void
      {
         this.mCircumference = (getBody().GetFixtureList().GetShape() as b2CircleShape).GetRadius() * 2 * Math.PI;
      }
      
      public function set isCannonBall(value:Boolean) : void
      {
         this.mIsCannonBall = value;
      }
   }
}
