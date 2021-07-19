package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItemBirdSpace;
   import com.angrybirds.data.level.item.LevelItemSoundManagerLua;
   import com.angrybirds.data.level.item.LevelItemSpaceBirdLua;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class LevelObjectBirdSpaceGeneral extends LevelObjectBirdSpace
   {
      
      public static const ANIMATION_TIMER:String = "timer";
       
      
      protected var mRemoveOnNextUpdate:Boolean = false;
      
      protected var mLevelItemLua:LevelItemSpaceBirdLua;
      
      protected var mSpawnTrailTimer:Number = 0;
      
      protected var mEnteredGravity:Boolean = false;
      
      protected var mEnterGravityPoint:Point;
      
      protected var mInsideGravityFieldCount:int;
      
      private var mSpawnShootParticles:Boolean;
      
      private var mSkipTrailDot:Boolean;
      
      public function LevelObjectBirdSpaceGeneral(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItemBirdSpace, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         this.mLevelItemLua = levelItem as LevelItemSpaceBirdLua;
         this.mSpawnShootParticles = Math.random() > 0.5 ? true : false;
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override protected function playCollisionSound() : void
      {
         var soundName:String = this.mLevelItemLua.getSound(LevelItemSoundManagerLua.COLLISION);
         this.mLevelItemLua.playSoundLua(soundName);
      }
      
      override public function scream() : void
      {
         super.scream();
         var soundName:String = this.mLevelItemLua.getSound(LevelItemSoundManagerLua.LAUNCH);
         this.mLevelItemLua.playSoundLua(soundName);
      }
      
      override protected function addTrail(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         var x:Number = NaN;
         var y:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(updateManager)
         {
            if(!this.mSkipTrailDot)
            {
               x = getBody().GetPosition().x;
               y = getBody().GetPosition().y;
               updateManager.addParticle(this.mLevelItemLua.normalTrailSprite,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,x,y,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
            }
            this.mSkipTrailDot = !this.mSkipTrailDot;
         }
         return true;
      }
      
      override public function enteredSensor(sensor:LevelObjectSensor) : void
      {
         super.enteredSensor(sensor);
         if(sensor is LevelObjectGravitySensor)
         {
            ++this.mInsideGravityFieldCount;
            if(this.mInsideGravityFieldCount == 1)
            {
               this.mEnteredGravity = true;
               this.mLevelItemLua.playSoundLua(LevelItemSoundManagerLua.ENTER_ATMOSPHERE);
            }
            this.mEnterGravityPoint = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(sensor:LevelObjectSensor) : void
      {
         super.leftSensor(sensor);
         if(sensor is LevelObjectGravitySensor)
         {
            --this.mInsideGravityFieldCount;
            if(this.mInsideGravityFieldCount == 0 && !sensor.isDisposed)
            {
               this.mLevelItemLua.playSoundLua(LevelItemSoundManagerLua.EXIT_ATMOSPHERE);
            }
         }
      }
      
      protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         var angle:Number = NaN;
         var soundName:String = null;
         var returnValue:Boolean = super.activateSpecialPower(updateManager,targetX,targetY);
         if(returnValue)
         {
            angle = 0;
            if(this.hasTargetedSpecialPowerParticles)
            {
               angle = this.getSpecialPowerDirection(targetX,targetY);
            }
            this.spawnParticlesOnSpecial(updateManager,angle);
            soundName = this.mLevelItemLua.getSound(LevelItemSoundManagerLua.SPECIAL);
            this.mLevelItemLua.playSoundLua(soundName);
         }
         return returnValue;
      }
      
      protected function spawnParticlesOnSpecial(updateManager:ILevelObjectUpdateManager, angle:Number = 0.0) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var i:int = 0;
         var particleName:String = null;
         if(this.mLevelItemLua.specialParticlesLength > 0)
         {
            posX = getBody().GetPosition().x;
            posY = getBody().GetPosition().y;
            for(i = 0; i < this.mLevelItemLua.specialParticlesLength; i++)
            {
               particleName = this.mLevelItemLua.getSpecialParticle(i);
               updateManager.addObject(particleName,posX,posY,angle,LevelObjectManager.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var particlesDestroyed:String = null;
         if(!updateManager)
         {
            return;
         }
         var posX:Number = getBody().GetPosition().x;
         var posY:Number = getBody().GetPosition().y;
         for(var i:int = 0; i < this.mLevelItemLua.particlesDestroyedCount; i++)
         {
            particlesDestroyed = this.mLevelItemLua.getParticleDestroyed(i);
            if(particlesDestroyed)
            {
               updateManager.addObject(particlesDestroyed,posX,posY,0,LevelObjectManager.ID_NEXT_FREE,false,true,false,1,true);
            }
         }
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         var result:Number = super.applyDamage(damage,updateManager,damagingObject,addScore);
         if(damage >= 5)
         {
            this.addDamageParticles(updateManager,damage);
         }
         return result;
      }
      
      override public function addDamageParticles(updateManager:ILevelObjectUpdateManager, damage:int) : void
      {
         var i:int = 0;
         var particlesCollision:String = null;
         var particlesDestroyed:String = null;
         var posX:Number = getBody().GetPosition().x;
         var posY:Number = getBody().GetPosition().y;
         if(this.mLevelItemLua.particlesCollisionCount > 0)
         {
            for(i = 0; i < this.mLevelItemLua.particlesDestroyedCount; i++)
            {
               particlesCollision = this.mLevelItemLua.getParticleCollision(i);
               if(particlesCollision)
               {
                  updateManager.addObject(particlesCollision,posX,posY,0,LevelObjectManager.ID_NEXT_FREE,false,true,false,1,true);
               }
            }
         }
         else
         {
            for(i = 0; i < this.mLevelItemLua.particlesDestroyedCount; i++)
            {
               particlesDestroyed = this.mLevelItemLua.getParticleDestroyed(i);
               if(particlesDestroyed)
               {
                  updateManager.addObject(particlesDestroyed,posX,posY,0,LevelObjectManager.ID_NEXT_FREE,false,true,false);
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.mRemoveOnNextUpdate;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(this.mSpawnShootParticles && updateManager)
         {
            updateManager.addObject(this.mLevelItemLua.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,LevelObjectManager.ID_NEXT_FREE,false,true,false);
            this.mSpawnShootParticles = false;
         }
         if(isReadyToBeRemoved(deltaTimeMilliSeconds))
         {
            this.mRemoveOnNextUpdate = true;
         }
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mSpawnTrailTimer += deltaTimeMilliSeconds;
         if(isFlying)
         {
            if(this.mSpawnTrailTimer > 1000 / 60)
            {
               this.mSpawnTrailTimer = 0;
               this.spawnTrailParticles(updateManager);
            }
         }
         if(this.mEnteredGravity)
         {
            this.mEnteredGravity = false;
            if(updateManager)
            {
               updateManager.addObject(this.mLevelItemLua.enterGravitationParticles,this.mEnterGravityPoint.x,this.mEnterGravityPoint.y,0,LevelObjectManager.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function spawnTrailParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var trailParticleName:String = null;
         var posX:Number = NaN;
         var posY:Number = NaN;
         var angle:Number = NaN;
         if(updateManager && this.mLevelItemLua)
         {
            if(this.mInsideGravityFieldCount > 0 && this.mLevelItemLua.atmosphereTailParticles)
            {
               trailParticleName = this.mLevelItemLua.atmosphereTailParticles;
            }
            else
            {
               trailParticleName = this.mLevelItemLua.normalTailParticles;
            }
            if(trailParticleName)
            {
               posX = getBody().GetPosition().x;
               posY = getBody().GetPosition().y;
               angle = getBody().GetAngle();
               updateManager.addObjectWithArea(trailParticleName,posX,posY,angle,LevelObjectManager.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function getSpecialPowerDirection(targetX:Number, targetY:Number) : Number
      {
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         var angle:Number = Math.atan2(targetY - y,targetX - x);
         if(angle < 0)
         {
            angle += Math.PI * 2;
         }
         return angle;
      }
   }
}
