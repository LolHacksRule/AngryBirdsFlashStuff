package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Collision.Shapes.b2MassData;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectEasterMushroom extends LevelObjectBlock
   {
      
      private static const RISING_TIME:int = 2000;
      
      private static const PROTECTED_TIME:int = 0;
      
      private static const DELAY_TIME:int = 2000;
       
      
      public var mStaticNormalized:Point;
      
      public var mRaisingNormal:Point;
      
      public var mRaisingGroundPoint:Point;
      
      private var mStartPoint:b2Vec2;
      
      private var mRisingFromGround:Boolean = false;
      
      private var mRaisingTimer:Number;
      
      private var mDelayTimer:Number = 0;
      
      private var mVelocityReset:Boolean = false;
      
      private var mDynamicReset:Boolean = false;
      
      private var mSpriteOriginalPosDiff:Point;
      
      private var mScaleFactor:Number = 0.05;
      
      private const MAX_SCALE:Number = 2.0;
      
      private var mScaleTimer:Number = 0;
      
      private var mMove:Point;
      
      private const MAX_SCALE_Y:Number = 3.65;
      
      private const MAX_SCALE_X:Number = 1.8859999;
      
      private var mMaxScaleReached:Boolean = false;
      
      private var mScaleModifier:Number = 1.0;
      
      private var mSmokeCouldCreated:Boolean = false;
      
      private var mTempBodyShape:b2PolygonShape;
      
      public function FacebookLevelObjectEasterMushroom(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         scale = 0.1;
         sprite.scaleY = 0.1;
         sprite.scaleX = 0.1;
         this.mMove = new Point(0,0);
         this.mRaisingTimer = RISING_TIME;
         this.mDelayTimer = DELAY_TIME;
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mTempBodyShape = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get totalTime() : int
      {
         return RISING_TIME + DELAY_TIME + PROTECTED_TIME;
      }
      
      private function init() : void
      {
         var body:b2Body = getBody();
         var massData:b2MassData = new b2MassData();
         body.SetType(b2Body.b2_kinematicBody);
         this.scaleBody();
         this.sprite.visible = false;
         notDamageAwarding = true;
         var dx:Number = body.GetPosition().x / LevelMain.PIXEL_TO_B2_SCALE - sprite.x;
         var dy:Number = body.GetPosition().y / LevelMain.PIXEL_TO_B2_SCALE - sprite.y;
         this.mSpriteOriginalPosDiff = new Point(dx,dy);
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var angleRad:Number = NaN;
         var randomX:Number = NaN;
         var randomY:Number = NaN;
         var particleScale:Number = NaN;
         var rnd:int = 0;
         var count:int = Math.min(10,Math.max(1,getVolume(false))) + 1;
         var angle:Number = 90;
         for(var i:int = 0; i < count; i++)
         {
            angle += Math.random() * (720 / count);
            angleRad = angle / (180 / Math.PI);
            randomX = -mRenderer.width * LevelMain.PIXEL_TO_B2_SCALE;
            randomX += Math.random() * -randomX * 2;
            randomY = -mRenderer.height * LevelMain.PIXEL_TO_B2_SCALE;
            randomY += Math.random() * -randomY * 2;
            particleScale = Math.random();
            rnd = 1 + Math.floor(Math.random() * 2);
            if(updateManager)
            {
               updateManager.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + rnd.toString(),LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + randomX,getBody().GetPosition().y + randomY,1750 + Math.random() * 500,"",LevelParticle.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(angleRad),-4 * Math.sin(angleRad),10,4 * 50,particleScale);
            }
         }
      }
      
      public function addSpriteToBackLayer() : void
      {
         AngryBirdsEngine.smLevelMain.objects.mainSprite.removeChild(sprite);
         (AngryBirdsEngine.smLevelMain.objects as FacebookLevelObjectManager).mBackSprite.addChild(sprite);
      }
      
      public function setGroundPointAndNormal(point:Point, normal:Point) : void
      {
         this.mRisingFromGround = true;
         this.mRaisingGroundPoint = point;
         this.mRaisingNormal = normal;
         var body:b2Body = getBody();
         body.SetPosition(new b2Vec2(this.mRaisingGroundPoint.x - this.mRaisingNormal.x,this.mRaisingGroundPoint.y - this.mRaisingNormal.y));
         this.mStartPoint = body.GetPosition().Copy();
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var i:int = 0;
         var theta:Number = NaN;
         var vx:Number = NaN;
         var vy:Number = NaN;
         var newPos:b2Vec2 = null;
         if(!AngryBirdsEngine.smLevelMain.physicsEnabled)
         {
            return;
         }
         if(this.mDelayTimer > 0)
         {
            this.mDelayTimer -= deltaTimeMilliSeconds;
            if(this.mDelayTimer <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.mDelayTimer <= 200 && !this.mSmokeCouldCreated)
            {
               this.mSmokeCouldCreated = true;
               AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("SMOKE_BIG",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.mStartPoint.x,this.mStartPoint.y,2000,"",LevelParticle.PARTICLE_MATERIAL_PIGS,0,0,0,0,1.5,20,true);
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
               if(this.mRaisingTimer <= -PROTECTED_TIME)
               {
                  this.mRisingFromGround = false;
               }
            }
            if(!this.mVelocityReset && this.mRisingFromGround)
            {
               for(i = 0; i < 1; i++)
               {
                  theta = (Math.random() * 90 - 45) * 0.0174532925;
                  vx = this.mRaisingNormal.x * Math.cos(theta) - this.mRaisingNormal.y * Math.sin(theta);
                  vy = this.mRaisingNormal.x * Math.sin(theta) + this.mRaisingNormal.y * Math.cos(theta);
                  AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.mRaisingGroundPoint.x + -this.mRaisingNormal.y * (Math.random() * 2),this.mRaisingGroundPoint.y + this.mRaisingNormal.y * (Math.random() * 2),800,"",0,vx * (Math.random() * 6 + 3),vy * (Math.random() * 6 + 3),8,Math.random() * 180,1);
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.mScaleTimer <= RISING_TIME)
         {
            this.mScaleTimer += deltaTimeMilliSeconds;
            this.scaleBody();
            newPos = new b2Vec2(this.mStartPoint.x + this.mRaisingNormal.x + this.mMove.x,this.mStartPoint.y + this.mRaisingNormal.y + this.mMove.y);
            getBody().SetPosition(newPos);
         }
         super.update(deltaTimeMilliSeconds,updateManager);
      }
      
      private function scaleBody() : void
      {
         var tmpX:Number = NaN;
         var tmpY:Number = NaN;
         var shape:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var v:Vector.<b2Vec2> = shape.GetVertices();
         var scaleFactor:Number = 1 - this.mRaisingTimer / RISING_TIME;
         if(scaleFactor > this.scaleModifier)
         {
            scaleFactor = this.scaleModifier;
            this.mRisingFromGround = false;
         }
         for(var i:int = 0; i < v.length; i++)
         {
            tmpX = this.mTempBodyShape.GetVertices()[i].x * scaleFactor * 10;
            tmpY = this.mTempBodyShape.GetVertices()[i].y * scaleFactor * 10;
            v[i].x = tmpX;
            v[i].y = tmpY;
         }
         if(scaleFactor < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.mScaleFactor * 5 * LevelMain.PIXEL_TO_B2_SCALE;
            sprite.pivotY = 0;
            this.mMove.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.mDynamicReset)
         {
            this.mDynamicReset = true;
            this.mVelocityReset = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.mScaleModifier;
      }
      
      public function set scaleModifier(value:Number) : void
      {
         this.mScaleModifier = value;
      }
   }
}
