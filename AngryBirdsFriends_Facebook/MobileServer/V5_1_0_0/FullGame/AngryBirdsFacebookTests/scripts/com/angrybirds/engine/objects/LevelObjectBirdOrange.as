package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class LevelObjectBirdOrange extends LevelObjectBird
   {
      
      public static const DEFAULT_BIRD_ORANGE_RADIUS:Number = 7.5;
      
      private static const FEATHER_PUFF_FREQUENCY:int = 200;
       
      
      private const NILL_TIME:Number = -5;
      
      private const PUFF_TIME:int = 1500;
      
      private const DEATH_TIMER:int = 1500;
      
      private const DEFLATE_TIMER:int = 1500;
      
      private var hasHitGround:Boolean = false;
      
      private var mIsInflating:Boolean = false;
      
      private var mIsDeflating:Boolean = false;
      
      private var mExploded:Boolean = false;
      
      private var mInflateTimer:Number = -5;
      
      private var mDeflateWaitTimer:Number = -5;
      
      private var mDeflateTimer:Number = -5;
      
      private var mDirectionChangeTimer:Number = 0;
      
      private var mDeflateUpdateCount:int = 0;
      
      private var mxVelChange:Number = 0;
      
      private var myVelChange:Number = 0;
      
      private var mDamageFeatherTimer:Number = 1000;
      
      private var mReadyToRemove:Boolean = false;
      
      public function LevelObjectBirdOrange(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      private function get BIRD_ORANGE_RADIUS() : Number
      {
         return DEFAULT_BIRD_ORANGE_RADIUS * scale;
      }
      
      override public function addDamageParticles(updateManager:ILevelObjectUpdateManager, damage:int) : void
      {
         if(damage < 2 || this.mDamageFeatherTimer < FEATHER_PUFF_FREQUENCY)
         {
            return;
         }
         if(this.mDeflateWaitTimer != this.NILL_TIME || damage > 20)
         {
            this.addFeathersAndSmoke(updateManager,1,damage > 20);
         }
         this.mDamageFeatherTimer = 0;
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(!this.fixedActivateSpecialPower(updateManager))
         {
            return false;
         }
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,x,y,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         this.startSelfGrowing(updateManager,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         var returnValue:Number = NaN;
         if(!specialPowerUsed && this.mInflateTimer == this.NILL_TIME)
         {
            this.startSelfGrowing(updateManager);
         }
         if(damage < 12 && damage > 5 && this.hasHitGround)
         {
            returnValue = health;
         }
         else
         {
            returnValue = super.applyDamage(damage,updateManager,damagingObject,addScore);
         }
         this.hasHitGround = true;
         return returnValue;
      }
      
      protected function explode(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.fixedActivateSpecialPower(null);
            this.startSelfGrowing(updateManager,0);
            return true;
         }
         return false;
      }
      
      private function startSelfGrowing(updateManager:ILevelObjectUpdateManager, defaultTime:Number = -1) : void
      {
         this.mIsInflating = true;
         if(defaultTime == 0)
         {
            this.mInflateTimer = 0;
         }
         else if(defaultTime > 0)
         {
            this.mInflateTimer = defaultTime;
         }
         else
         {
            this.mInflateTimer = this.PUFF_TIME;
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(!updateManager)
         {
            return;
         }
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mDamageFeatherTimer += deltaTimeMilliSeconds;
         if(this.mIsInflating)
         {
            this.updateInflating(deltaTimeMilliSeconds,updateManager);
         }
         else if(this.mDeflateWaitTimer != this.NILL_TIME)
         {
            if(this.hasHitGround)
            {
               this.mDeflateWaitTimer -= deltaTimeMilliSeconds;
               if(this.mDeflateWaitTimer < 0)
               {
                  this.mIsDeflating = true;
                  this.mDeflateWaitTimer = this.NILL_TIME;
                  this.mDeflateTimer = this.DEFLATE_TIMER;
                  SoundEngine.playSound("Globe_Bird_Death_remove_1",mLevelItem.soundResource.channelName);
               }
            }
         }
         else if(this.mIsDeflating)
         {
            this.updateDeflating(deltaTimeMilliSeconds,updateManager);
         }
      }
      
      protected function updateInflating(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         this.mInflateTimer -= deltaTimeMilliSeconds;
         if(this.mInflateTimer <= 0)
         {
            if(!this.mExploded)
            {
               updateManager.addExplosion(LevelExplosion.TYPE_ORANGE_BIRD,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.fixedActivateSpecialPower(null);
               replaceLevelItem(updateManager.getLevelItem("BIRD_ORANGE_BIG"));
               this.mExploded = true;
               this.mIsInflating = false;
               this.setBodyParameters(this.BIRD_ORANGE_RADIUS);
               this.mDeflateWaitTimer = this.DEATH_TIMER;
               this.setBodyParameters(this.BIRD_ORANGE_RADIUS,mLevelItem.getItemDensity(),mLevelItem.getItemFriction(),mLevelItem.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               mRenderer.setScale(scale);
            }
         }
      }
      
      protected function updateDeflating(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var scale:Number = NaN;
         var body:b2Body = null;
         var vel:b2Vec2 = null;
         if(this.mDeflateTimer > 0)
         {
            this.mDeflateTimer -= deltaTimeMilliSeconds;
            this.mDirectionChangeTimer -= deltaTimeMilliSeconds;
            if(this.mDirectionChangeTimer <= 0)
            {
               this.mDirectionChangeTimer = this.DEFLATE_TIMER / 5;
               this.mxVelChange = (Math.random() * 100 - 50) * 10;
               this.myVelChange = (Math.random() * 100 - 50) * 10;
            }
            scale = this.mDeflateTimer / this.DEFLATE_TIMER;
            if(scale > 1)
            {
               scale = 1;
            }
            ++this.mDeflateUpdateCount;
            if(this.mDeflateUpdateCount % 3 == 0)
            {
               mRenderer.setScale(scale * scale);
               this.setBodyParameters(this.BIRD_ORANGE_RADIUS * scale,0.00001,0,0);
               body = getBody();
               vel = body.GetLinearVelocity();
               body.ApplyImpulse(new b2Vec2(this.mxVelChange,this.myVelChange),getBody().GetPosition());
               body.SetAngle(Math.atan2(-vel.x,vel.y) - Math.PI / 2);
               this.addFeathersAndSmoke(updateManager,0.02,true);
            }
         }
         else
         {
            this.mReadyToRemove = true;
            updateManager.removeObject(this);
         }
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
            body.ResetMassData();
         }
         if(friction >= 0)
         {
            fixture.SetFriction(friction);
         }
         if(restitution >= 0)
         {
            fixture.SetRestitution(restitution);
         }
      }
      
      override public function isReadyToBeRemoved(deltaTime:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(updateManager);
         }
         return false;
      }
      
      private function addFeathersAndSmoke(updateManager:ILevelObjectUpdateManager, countMultiplier:Number = 1, useStaticValues:Boolean = false) : void
      {
         var distance:Number = NaN;
         var featherSpeed:Number = NaN;
         var rad:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         var speed:Number = getBody().GetLinearVelocity().Length() / 40;
         var count:int = 1 + speed * getVolume(true) * 0.9;
         var angle:Number = Math.PI / 2;
         var scale:Number = rad / this.BIRD_ORANGE_RADIUS;
         count *= scale * 3 * countMultiplier;
         if(count > 30)
         {
            count = 30;
         }
         if(useStaticValues)
         {
            count = 8;
            speed = 8;
         }
         var i:int = 0;
         for(i = 0; i < count / 3; i++)
         {
            angle += Math.random() * (Math.PI * 4 / count);
            distance = (Math.random() * this.BIRD_ORANGE_RADIUS - this.BIRD_ORANGE_RADIUS / 2) * 2 * scale;
            updateManager.addParticle(destructionBlockName,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(angle) * distance,getBody().GetPosition().y + Math.sin(angle) * distance,1000,"",0,0,0,5,speed * 5,Math.random() * 0.75 + 0.25);
         }
         for(i = 0; i < count; i++)
         {
            angle += Math.random() * (Math.PI * 4 / count);
            distance = (Math.random() * this.BIRD_ORANGE_RADIUS - this.BIRD_ORANGE_RADIUS / 2) * 2 * scale;
            featherSpeed = 0.5 * speed + speed * (Math.random() * 0.5);
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(angle) * distance,getBody().GetPosition().y + Math.sin(angle) * distance,1250,"",LevelParticle.PARTICLE_MATERIAL_BIRD_YELLOW,featherSpeed * Math.cos(angle) * scale,-featherSpeed * Math.sin(angle) * scale,5,featherSpeed * 20,1);
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(specialPowerUsed)
         {
            return 1;
         }
         return -1;
      }
      
      private function fixedActivateSpecialPower(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         if(mSpecialPowerUsed)
         {
            return false;
         }
         playSpecialSound();
         mSpecialPowerUsed = true;
         return true;
      }
   }
}
