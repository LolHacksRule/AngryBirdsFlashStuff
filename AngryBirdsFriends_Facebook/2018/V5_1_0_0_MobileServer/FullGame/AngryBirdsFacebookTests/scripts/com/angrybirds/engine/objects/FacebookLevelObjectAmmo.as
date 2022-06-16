package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.popups.ErrorPopup;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectAmmo extends LevelObject
   {
      
      private static const AMMO_CHANNEL_MAX_SOUNDS:int = 30;
      
      private static const AMMO_CHANNEL_VOLUME:Number = 0.2;
      
      private static const AMMO_CHANNEL_NAME:String = "AmmoChannel";
      
      protected static const AMMO_HIT_SOUNDS:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var mParticleName:String = "PARTICLE_CANNON_SHOT";
      
      protected var mParentCannon:FacebookLevelObjectCannon;
      
      private var mIsInvulnerableToParentCannon:Boolean = true;
      
      private var mInvulnerableToParentCannonTimer:Number = 100;
      
      private var mDestroyOnNextFrame:Boolean = false;
      
      public function FacebookLevelObjectAmmo(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         notDamageAwarding = true;
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         disableCameraShakeOnCollision = true;
         SoundEngine.addNewChannelControl(AMMO_CHANNEL_NAME,AMMO_CHANNEL_MAX_SOUNDS,AMMO_CHANNEL_VOLUME);
      }
      
      public function shoot(forceX:Number, forceY:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(forceX,forceY));
         storeCurrentLinearVelocity();
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(damagingObject == this.mParentCannon && this.mIsInvulnerableToParentCannon)
         {
            return health;
         }
         return super.applyDamage(damage,updateManager,damagingObject,isDamageAwardingScore());
      }
      
      public function set parentCannon(value:FacebookLevelObjectCannon) : void
      {
         if(this.mParentCannon)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Parent cannon aready set."));
         }
         this.mParentCannon = value;
      }
      
      public function setCollisionGroupIndex(groupIndex:int) : void
      {
         var filterData:b2FilterData = new b2FilterData();
         filterData.groupIndex = groupIndex;
         getBody().GetFixtureList().SetFilterData(filterData);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(collidee:LevelObjectBase) : void
      {
         if(!(collidee == this.mParentCannon && this.mInvulnerableToParentCannonTimer > 0))
         {
            this.mDestroyOnNextFrame = true;
         }
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(this.mParticleName,this.mParticleName,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * LevelMain.PIXEL_TO_B2_SCALE,this.y * LevelMain.PIXEL_TO_B2_SCALE,1000,"",0,0,0.5,8,10,1,15,true);
         SoundEngine.playSound(AMMO_HIT_SOUNDS[Math.floor(Math.random() * AMMO_HIT_SOUNDS.length)],AMMO_CHANNEL_NAME);
      }
      
      override protected function createBodyDefinition(x:Number, y:Number) : b2BodyDef
      {
         var bodyDefinition:b2BodyDef = super.createBodyDefinition(x,y);
         bodyDefinition.bullet = true;
         return bodyDefinition;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var filterData:b2FilterData = null;
         super.update(deltaTimeMilliSeconds,updateManager);
         setRotationBasedOnLinear();
         if(this.mInvulnerableToParentCannonTimer > 0)
         {
            this.mInvulnerableToParentCannonTimer -= deltaTimeMilliSeconds;
         }
         else if(this.mIsInvulnerableToParentCannon)
         {
            this.mIsInvulnerableToParentCannon = false;
            filterData = new b2FilterData();
            filterData.groupIndex = 0;
            getBody().GetFixtureList().SetFilterData(filterData);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.mDestroyOnNextFrame)
         {
            health = 0;
         }
      }
      
      public function get parentCannon() : FacebookLevelObjectCannon
      {
         return this.mParentCannon;
      }
      
      public function get invulnerableToParentCannonTimer() : Number
      {
         return this.mInvulnerableToParentCannonTimer;
      }
   }
}
