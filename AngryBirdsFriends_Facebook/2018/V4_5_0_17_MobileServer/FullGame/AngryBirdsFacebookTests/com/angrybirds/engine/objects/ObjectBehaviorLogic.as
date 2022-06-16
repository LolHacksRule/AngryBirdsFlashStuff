package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItemParticleSpace;
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class ObjectBehaviorLogic
   {
       
      
      protected var mLevelItemLua:LevelItemSpaceLua;
      
      protected var mLifeTimeMilliSeconds:Number = 0.0;
      
      protected var mTimeToExplodeMilliSeconds:Number;
      
      protected var mIsTimeBomb:Boolean = false;
      
      protected var mSpriteRotation:Number = 0;
      
      protected var mAnimateRotation:Boolean;
      
      protected var mRotationFrequency:Number;
      
      protected var mRotationAmplitude:Number;
      
      public function ObjectBehaviorLogic(levelItem:LevelItemSpaceLua)
      {
         super();
         this.mLevelItemLua = levelItem;
         this.initializeRotation();
      }
      
      public function get spriteRotation() : Number
      {
         return this.mSpriteRotation;
      }
      
      protected function initializeRotation() : void
      {
         var rotationFrequency:Number = NaN;
         if(this.mLevelItemLua.animateRotation)
         {
            rotationFrequency = this.randomMinMax(this.mLevelItemLua.minRotationFrequency,this.mLevelItemLua.maxRotationFrequency);
            this.mRotationFrequency = rotationFrequency * (Math.PI / 180) / 1000;
            if(this.mLevelItemLua.minRotationFrequency && this.mLevelItemLua.maxRotationFrequency)
            {
               this.mRotationAmplitude = this.randomMinMax(this.mLevelItemLua.minRotationAmplitude,this.mLevelItemLua.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.mAnimateRotation = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.mIsTimeBomb && this.mTimeToExplodeMilliSeconds < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject) : void
      {
         if(this.mLevelItemLua.stopAnimationsAfterCollision)
         {
            this.mAnimateRotation = false;
         }
      }
      
      public function spawnParticles(destructionParticle:Boolean, updateManager:ILevelObjectUpdateManager, x:Number, y:Number, angle:Number, scale:Number = 1.0) : void
      {
         var particleCount:int = 0;
         var particlesId:String = null;
         var levelItemParticleSpace:LevelItemParticleSpace = null;
         var inFrontObject:Boolean = false;
         var overlay:Boolean = false;
         if(!updateManager)
         {
            return;
         }
         var width:Number = this.mLevelItemLua.shape.getWidth() * scale;
         var height:Number = this.mLevelItemLua.shape.getHeight() * scale;
         if(destructionParticle)
         {
            particleCount = this.mLevelItemLua.particlesDestroyedCount;
         }
         else
         {
            particleCount = this.mLevelItemLua.particlesCollisionCount;
         }
         for(var i:int = 0; i < particleCount; i++)
         {
            if(destructionParticle)
            {
               particlesId = this.mLevelItemLua.getParticleDestroyed(i);
            }
            else
            {
               particlesId = this.mLevelItemLua.getParticleCollision(i);
            }
            if(particlesId)
            {
               levelItemParticleSpace = updateManager.getLevelItem(particlesId) as LevelItemParticleSpace;
               if(this.mLevelItemLua.particleAmount > -1)
               {
                  levelItemParticleSpace.amount = this.mLevelItemLua.particleAmount;
               }
               inFrontObject = false;
               overlay = false;
               if(levelItemParticleSpace)
               {
                  overlay = levelItemParticleSpace.overlay;
                  inFrontObject = levelItemParticleSpace.inFrontObject;
               }
               updateManager.addObjectWithArea(particlesId,x,y,angle,LevelObjectManager.ID_NEXT_FREE,width,height,1,overlay,inFrontObject);
            }
         }
      }
      
      public function spawnObjectsOnDestruction(updateManager:ILevelObjectUpdateManager, x:Number, y:Number, angle:Number) : void
      {
         var cosAngle:Number = NaN;
         var sinAngle:Number = NaN;
         var spawnedObject:String = null;
         var xPos:Number = NaN;
         var yPos:Number = NaN;
         var object:LevelObject = null;
         if(this.mLevelItemLua.spawnedObjectCount == 0)
         {
            return;
         }
         var explosionForce:Number = this.mLevelItemLua.explosionForce;
         var spawnDistance:Number = this.mLevelItemLua.spawnDistance;
         var angleOffset:Number = this.mLevelItemLua.angleOffset;
         var count:int = this.mLevelItemLua.spawnedObjectCount;
         var angleDelta:Number = Math.PI * 2 / count;
         if(!isNaN(angleOffset))
         {
            angle += angleOffset;
         }
         for(var i:int = 0; i < count; i++)
         {
            cosAngle = Math.cos(angle);
            sinAngle = Math.sin(angle);
            spawnedObject = this.mLevelItemLua.getSpawnedObject(i);
            xPos = x - sinAngle * spawnDistance;
            yPos = y + cosAngle * spawnDistance;
            object = updateManager.addObject(spawnedObject,xPos,yPos,angle,LevelObjectManager.ID_NEXT_FREE) as LevelObject;
            if(object)
            {
               object.getBody().ApplyImpulse(new b2Vec2(-sinAngle * explosionForce,cosAngle * explosionForce),this.getImpulseTarget(object,angle));
            }
            angle += angleDelta;
         }
      }
      
      protected function getImpulseTarget(object:LevelObject, angle:Number) : b2Vec2
      {
         return new b2Vec2(object.getBody().GetPosition().x,object.getBody().GetPosition().y);
      }
      
      public function makeExplosion(updateManager:ILevelObjectUpdateManager, x:Number, y:Number) : void
      {
         if(this.mLevelItemLua.explosionDamageRadius)
         {
            if(updateManager)
            {
               updateManager.addCustomExplosion(x,y,this.mLevelItemLua.explosionRadius,this.mLevelItemLua.explosionForce,this.mLevelItemLua.explosionDamageRadius,this.mLevelItemLua.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var soundName:String = this.mLevelItemLua.collisionSound;
         var soundChannel:String = this.mLevelItemLua.soundChannel;
         this.mLevelItemLua.playSoundLua(soundName,soundChannel);
      }
      
      public function playDamagedSound() : void
      {
         var soundName:String = this.mLevelItemLua.damageSound;
         var soundChannel:String = this.mLevelItemLua.soundChannel;
         this.mLevelItemLua.playSoundLua(soundName,soundChannel);
      }
      
      public function playDestroyedSound() : void
      {
         var soundName:String = this.mLevelItemLua.materialDestroyedSound;
         var soundChannel:String = this.mLevelItemLua.soundChannel;
         this.mLevelItemLua.playSoundLua(soundName,soundChannel);
      }
      
      public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager, x:Number = 0, y:Number = 0) : void
      {
         this.mLifeTimeMilliSeconds += deltaTimeMilliSeconds;
         if(this.mIsTimeBomb)
         {
            this.mTimeToExplodeMilliSeconds -= deltaTimeMilliSeconds;
         }
         if(this.mLevelItemLua && this.mAnimateRotation)
         {
            if(deltaTimeMilliSeconds > 0)
            {
               if(this.mLevelItemLua.constantRotation)
               {
                  this.mSpriteRotation += this.mRotationFrequency * 1000 / deltaTimeMilliSeconds;
               }
               else
               {
                  this.mSpriteRotation = Math.sin(this.mRotationFrequency * this.mLifeTimeMilliSeconds) * this.mRotationAmplitude;
               }
            }
         }
      }
      
      protected function randomMinMax(min:Number, max:Number) : Number
      {
         if(isNaN(min))
         {
            min = 0;
         }
         if(isNaN(max))
         {
            max = 0;
         }
         return min + (max - min) * Math.random();
      }
   }
}
