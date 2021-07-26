package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectWingman extends LevelObjectBirdBigRed
   {
      
      private static const COLLISION_TIME_IN_MS:Number = 500;
      
      private static const MAX_ANIMATIONS:int = 5;
      
      private static const DAMAGE_THRESHOLD:Number = 120;
       
      
      private var mCollisionStarted:Boolean;
      
      private var mTimeSinceParticles:Number = 0;
      
      private var mCount:int = 0;
      
      private var mDamageThresholdPassed:Boolean = false;
      
      public function FacebookLevelObjectWingman(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override protected function addTrail(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         var featherAngle:Number = NaN;
         var featherSpeed:Number = NaN;
         var ret:Boolean = super.addTrail(updateManager);
         if(ret)
         {
            FacebookLevelMain.addStarsParticles(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < TRAILING_FEATHER_FREQUENCY)
            {
               featherAngle = -Math.PI / 2;
               featherSpeed = Math.random();
               updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),featherSpeed * Math.cos(featherAngle) * scale,-featherSpeed * Math.sin(featherAngle) * scale,5,featherSpeed * 20,Math.sqrt(scale));
            }
         }
         return ret;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(damage >= DAMAGE_THRESHOLD)
         {
            this.mDamageThresholdPassed = true;
         }
         else
         {
            this.mDamageThresholdPassed = false;
         }
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override public function collidedWith(collidee:LevelObjectBase) : void
      {
         super.collidedWith(collidee);
         if(!this.mCollisionStarted)
         {
            this.mCollisionStarted = true;
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mTimeSinceParticles += deltaTimeMilliSeconds;
         if(this.mTimeSinceParticles >= COLLISION_TIME_IN_MS && this.mCollisionStarted && this.mCount < MAX_ANIMATIONS && this.mDamageThresholdPassed)
         {
            ++this.mCount;
            this.mCollisionStarted = false;
            this.mTimeSinceParticles = 0;
            this.addWingmanEffectParticle();
         }
      }
      
      public function addWingmanEffectParticle() : void
      {
         var birdX:Number = x * LevelMain.PIXEL_TO_B2_SCALE;
         var birdY:Number = y * LevelMain.PIXEL_TO_B2_SCALE;
         FacebookLevelParticleManager(AngryBirdsEngine.smLevelMain.particles).addWingmanEffectParticle(birdX,birdY);
      }
   }
}
