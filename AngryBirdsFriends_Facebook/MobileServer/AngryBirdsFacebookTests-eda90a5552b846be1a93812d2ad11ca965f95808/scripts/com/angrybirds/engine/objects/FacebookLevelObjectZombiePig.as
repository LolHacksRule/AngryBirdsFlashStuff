package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2MassData;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import flash.geom.Point;
   import starling.display.DisplayObjectContainer;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectZombiePig extends LevelObjectPig
   {
       
      
      private const RISING_TIME:int = 2000;
      
      private const PROTECTED_TIME:int = 0;
      
      private const DELAY_TIME:int = 3000;
      
      public var mStaticNormalized:Point;
      
      public var mRaisingNormal:Point;
      
      public var mRaisingGroundPoint:Point;
      
      private var mStartPoint:b2Vec2;
      
      private var mRisingFromGround:Boolean = false;
      
      private var mRaisingTimer:Number;
      
      private var mDelayTimer:Number = 0;
      
      private var mSmokeCouldCreated:Boolean = false;
      
      private var mVelocityReset:Boolean = false;
      
      private var mDynamicReset:Boolean = false;
      
      private var mSpriteOriginalPosDiff:Point;
      
      public var mRadius:Number;
      
      public function FacebookLevelObjectZombiePig(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0)
      {
         this.mRaisingTimer = this.RISING_TIME;
         this.mDelayTimer = this.DELAY_TIME;
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.init();
      }
      
      private function get pigRadius() : Number
      {
         return -this.mRadius;
      }
      
      private function init() : void
      {
         var body:b2Body = getBody();
         var massData:b2MassData = new b2MassData();
         body.SetType(b2Body.b2_kinematicBody);
         this.mRadius = (body.GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         body.SetActive(false);
         this.sprite.visible = false;
         notDamageAwarding = true;
         var dx:Number = body.GetPosition().x / LevelMain.PIXEL_TO_B2_SCALE - sprite.x;
         var dy:Number = body.GetPosition().y / LevelMain.PIXEL_TO_B2_SCALE - sprite.y;
         this.mSpriteOriginalPosDiff = new Point(dx,dy);
      }
      
      public function setGroundPointAndNormal(point:Point, normal:Point) : void
      {
         this.mRisingFromGround = true;
         this.mRaisingGroundPoint = point;
         this.mRaisingNormal = normal;
         var body:b2Body = getBody();
         body.SetPosition(new b2Vec2(this.mRaisingGroundPoint.x - this.mRaisingNormal.x * this.mRadius,this.mRaisingGroundPoint.y - this.mRaisingNormal.y * this.mRadius));
         this.mStartPoint = body.GetPosition().Copy();
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(this.mRisingFromGround)
         {
            return healthMax;
         }
         var returnValue:Number = super.applyDamage(damage,updateManager,damagingObject,addScore);
         if(returnValue <= 0)
         {
            this.reset();
         }
         return returnValue;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var scale:Number = NaN;
         var newPos:b2Vec2 = null;
         var i:int = 0;
         var theta:Number = NaN;
         var vx:Number = NaN;
         var vy:Number = NaN;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mDelayTimer > 0)
         {
            this.mDelayTimer -= deltaTimeMilliSeconds;
            if(this.mDelayTimer <= 0)
            {
               playLaunchSound();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               FacebookLevelObjectManager(updateManager).backgroundSprite.addChild(sprite);
            }
            else if(this.mDelayTimer <= 200 && !this.mSmokeCouldCreated)
            {
               this.mSmokeCouldCreated = true;
            }
            return;
         }
         if(this.mRisingFromGround)
         {
            this.mRaisingTimer -= deltaTimeMilliSeconds;
            if(this.mRaisingTimer <= 0)
            {
               if(!this.mVelocityReset)
               {
                  this.reset();
               }
               if(this.mRaisingTimer <= -this.PROTECTED_TIME)
               {
                  this.mRisingFromGround = false;
               }
            }
            else
            {
               scale = 1 - this.mRaisingTimer / this.RISING_TIME;
               newPos = new b2Vec2(this.mStartPoint.x + this.mRaisingNormal.x * (-this.pigRadius * 2 * scale) + Math.random() * 0.2,this.mStartPoint.y + this.mRaisingNormal.y * (-this.pigRadius * 2 * scale) + Math.random() * 0.2);
               getBody().SetPosition(newPos);
            }
            if(!this.mVelocityReset)
            {
               for(i = 0; i < 1; i++)
               {
                  theta = (Math.random() * 90 - 45) * 0.0174532925;
                  vx = this.mRaisingNormal.x * Math.cos(theta) - this.mRaisingNormal.y * Math.sin(theta);
                  vy = this.mRaisingNormal.x * Math.sin(theta) + this.mRaisingNormal.y * Math.cos(theta);
                  AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.mRaisingGroundPoint.x + -this.mRaisingNormal.y * (Math.random() * this.pigRadius * 2 - this.pigRadius),this.mRaisingGroundPoint.y + this.mRaisingNormal.x * (Math.random() * this.pigRadius * 2 - this.pigRadius),1500,"",0,vx * (Math.random() * 6 + 3),vy * (Math.random() * 6 + 3),8,Math.random() * 180,1);
               }
            }
         }
         else
         {
            this.reset();
         }
      }
      
      private function reset() : void
      {
         var parent:DisplayObjectContainer = null;
         if(!this.mDynamicReset)
         {
            this.mDynamicReset = true;
            this.mVelocityReset = true;
            parent = sprite.parent;
            if(parent)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               parent.addChildSorted(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
