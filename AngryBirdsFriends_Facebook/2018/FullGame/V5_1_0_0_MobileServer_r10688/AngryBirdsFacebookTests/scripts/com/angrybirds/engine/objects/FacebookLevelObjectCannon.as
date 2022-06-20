package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectCannon extends LevelObject
   {
      
      private static var sNextGroupIndex:int = -1;
      
      public static const SHOOT_FREQ:uint = 3000;
      
      public static const LEVEL_START_DELAY:uint = 2000;
      
      public static const LAUNCH_FORCE:uint = 50;
      
      public static const ANIMATION_SHOOT:String = "shoot";
      
      private static const FRAMES_IN_ANIMATION:uint = 8;
      
      private static const ANIMATION_FRAME_TIME:Number = 137.5;
      
      public static const ANIMATION_LENGTH:uint = FRAMES_IN_ANIMATION * ANIMATION_FRAME_TIME;
      
      public static const ANIMATION_LENGTH_IN_SECONDS:Number = ANIMATION_LENGTH / 1000;
      
      private static const CANNON_CHANNEL_NAME:String = "CannonSounds";
      
      private static const CANNON_CHANNEL_MAX_SOUNDS:int = 20;
      
      private static const CANNON_CHANNEL_VOLUME:Number = 0.1;
      
      public static var smCannonShootParticle:String = "SMOKE_CANNONCLOUD";
      
      public static var smCannonBallClassName:String = "MISC_FB_SHOT_CANNON";
       
      
      private const BALL_SPAWN_DISTANCE:Number = 3.2;
      
      private const VOLLEY_COUNT:uint = 3;
      
      private const VOLLEY_DELAY:uint = 150;
      
      private var mObjectTimer:Number = 2000;
      
      private var mVolleyTime:Number = 0;
      
      private var mAnimationTimer:Number = 0;
      
      private var mHasDoneAnimation:Boolean = false;
      
      private var mGroupIndex:int;
      
      public function FacebookLevelObjectCannon(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mAnimationTimer = 0;
         SoundEngine.addNewChannelControl(CANNON_CHANNEL_NAME,CANNON_CHANNEL_MAX_SOUNDS,CANNON_CHANNEL_VOLUME);
         this.mGroupIndex = sNextGroupIndex--;
         if(sNextGroupIndex == int.MIN_VALUE)
         {
            sNextGroupIndex = -1;
         }
         var filterData:b2FilterData = new b2FilterData();
         filterData.groupIndex = this.mGroupIndex;
         getBody().GetFixtureList().SetFilterData(filterData);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var pos:b2Vec2 = null;
         var angleRad:Number = NaN;
         var dx:Number = NaN;
         var dy:Number = NaN;
         var ballPos:b2Vec2 = null;
         var cannonBall:FacebookLevelObjectAmmo = null;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(!AngryBirdsEngine.smLevelMain.physicsEnabled)
         {
            return;
         }
         this.mObjectTimer -= deltaTimeMilliSeconds;
         if(this.mAnimationTimer > 0)
         {
            this.mAnimationTimer -= deltaTimeMilliSeconds;
         }
         if(!this.mHasDoneAnimation && this.mObjectTimer <= ANIMATION_LENGTH && this.mAnimationTimer <= 0)
         {
            this.mHasDoneAnimation = true;
            this.mAnimationTimer = ANIMATION_LENGTH;
            mRenderer.setAnimation(ANIMATION_SHOOT,false);
            SoundEngine.playSound("ABF_11_Water_Cannon_Load",CANNON_CHANNEL_NAME);
         }
         if(this.mObjectTimer <= this.mVolleyTime)
         {
            if(updateManager)
            {
               pos = getBody().GetPosition();
               angleRad = getBody().GetAngle();
               dx = Math.cos(angleRad);
               dy = Math.sin(angleRad);
               ballPos = new b2Vec2(pos.x + dx * this.BALL_SPAWN_DISTANCE,pos.y + dy * this.BALL_SPAWN_DISTANCE);
               angleRad = this.radiansToDegrees(angleRad) + 180;
               cannonBall = updateManager.addObject(smCannonBallClassName,ballPos.x,ballPos.y,angleRad,LevelObjectManager.ID_NEXT_FREE,false,false,false,1) as FacebookLevelObjectAmmo;
               cannonBall.parentCannon = this;
               cannonBall.setCollisionGroupIndex(this.mGroupIndex);
               cannonBall.shoot(dx * LAUNCH_FORCE,dy * LAUNCH_FORCE);
               SoundEngine.playSound("ABF_11_Water_Cannon_Shot",CANNON_CHANNEL_NAME);
               if(this.mVolleyTime == 0)
               {
                  AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(smCannonShootParticle,LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,ballPos.x,ballPos.y,1000,"",LevelParticle.PARTICLE_MATERIAL_PIGS,0,0,0,0,0.5,8,true);
               }
            }
            this.mVolleyTime -= this.VOLLEY_DELAY;
            if(this.mVolleyTime <= -(this.VOLLEY_DELAY * this.VOLLEY_COUNT))
            {
               this.mObjectTimer = SHOOT_FREQ;
               this.mVolleyTime = 0;
               this.mHasDoneAnimation = false;
            }
         }
      }
      
      private function radiansToDegrees(radian:Number) : Number
      {
         return (360 + radian * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         updateManager.addParticle(LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",LevelParticle.PARTICLE_MATERIAL_PIGS,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.mAnimationTimer > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
