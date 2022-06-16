package com.angrybirds.data.level.item
{
   import com.angrybirds.engine.objects.LevelObject;
   
   public class LevelItemSpaceLua extends LevelItemSpace
   {
       
      
      protected var mDefinition:String;
      
      protected var mDensity:Number;
      
      protected var mRadius:Number;
      
      protected var mType:String;
      
      protected var mDefence:Number;
      
      protected var mStrength:Number;
      
      protected var mOnCreated:String;
      
      protected var mOnDestroyed:String;
      
      protected var mSpawnedObjects:Array;
      
      protected var mSpawnDistance:Number;
      
      protected var mAngleOffset:Number;
      
      protected var mParticlesDestroyed:Array;
      
      protected var mIsBullet:Boolean;
      
      protected var mStopAnimationsAfterCollision:Boolean;
      
      protected var mAnimateRotation:Boolean;
      
      protected var mConstantRotation:Boolean;
      
      protected var mMaxRotationFrequency:Number;
      
      protected var mMinRotationFrequency:Number;
      
      protected var mMinRotationAmplitude:Number;
      
      protected var mMaxRotationAmplitude:Number;
      
      protected var mDestroyableByTap:Boolean;
      
      protected var mDestroyWhenFrozen:Boolean;
      
      protected var mIsVisible:Boolean;
      
      protected var mWidth:Number;
      
      protected var mHeight:Number;
      
      protected var mLoopingParticles:Array;
      
      protected var mAnimationSprites:Array;
      
      protected var mSpriteScore:String;
      
      protected var mHorizontalFlip:Boolean;
      
      protected var mParticlesCollision:Array;
      
      public function LevelItemSpaceLua(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, destroyedScoreInc:int, front:Boolean = false, soundManagerLua:LevelItemSoundManagerLua = null)
      {
         var particleArray:Array = null;
         super(luaObject,itemType,material,resourcePathsSound,destroyedScoreInc,front);
         mSoundManagerLua = soundManagerLua;
         this.mDefinition = luaObject.definition;
         this.mDensity = luaObject.density;
         this.mRadius = luaObject.radius;
         this.mType = luaObject.type;
         this.mDefence = luaObject.defence;
         this.mStrength = luaObject.strenght;
         this.mOnCreated = luaObject.onCreated;
         this.mOnDestroyed = luaObject.onDestroyed;
         this.mSpawnedObjects = this.readArray(luaObject.spawnedObjects);
         this.mSpawnDistance = luaObject.spawnDistance;
         this.mAngleOffset = luaObject.angleOffset;
         var particlesDestroyed:* = !!luaObject.particlesDestroyed ? luaObject.particlesDestroyed : luaObject.particles;
         if(particlesDestroyed is Array)
         {
            this.mParticlesDestroyed = this.readArray(particlesDestroyed);
         }
         else if(particlesDestroyed)
         {
            this.mParticlesDestroyed = [String(particlesDestroyed)];
         }
         else if(materialParticlesDestroyed)
         {
            this.mParticlesDestroyed = [materialParticlesDestroyed];
         }
         else
         {
            particleArray = new Array();
            if(material)
            {
               switch(material.name)
               {
                  case "MATERIAL_BLOCK_ICE":
                     particleArray.push("lightExplosion");
                     break;
                  case "MATERIAL_BLOCK_WOOD":
                     particleArray.push("woodExplosion");
                     break;
                  case "MATERIAL_BLOCK_STONE":
                     particleArray.push("stoneExplosion");
               }
            }
            this.mParticlesDestroyed = particleArray;
         }
         if(luaObject.particlesCollision is Array)
         {
            this.mParticlesCollision = this.readArray(luaObject.particlesCollision);
         }
         else if(luaObject.particlesCollision)
         {
            this.mParticlesCollision = [String(luaObject.particlesCollision)];
         }
         this.mIsBullet = luaObject.isBullet;
         this.mStopAnimationsAfterCollision = luaObject.stopAnimationsAfterCollision;
         this.mAnimateRotation = luaObject.animateRotation;
         this.mConstantRotation = luaObject.constantRotation;
         this.mMaxRotationFrequency = luaObject.maxRotationFrequency;
         this.mMinRotationFrequency = luaObject.minRotationFrequency;
         this.mMinRotationAmplitude = luaObject.minRotationAmplitude;
         this.mMaxRotationAmplitude = luaObject.maxRotationAmplitude;
         this.mDestroyableByTap = luaObject.destroyableByTap;
         this.mDestroyWhenFrozen = luaObject.destroyWhenFrozen;
         this.mIsVisible = luaObject.isVisible;
         this.mWidth = luaObject.width;
         this.mHeight = luaObject.height;
         this.mLoopingParticles = this.readArray(luaObject.loopingParticles);
         this.mAnimationSprites = this.readArray(luaObject.animationSprites);
         this.mSpriteScore = luaObject.spriteScore;
         this.mHorizontalFlip = luaObject.horFlip;
         mSpecialty = luaObject.specialty;
         mExplosionRadius = luaObject.explosionRadius;
         mExplosionForce = luaObject.explosionForce;
         mExplosionDamageRadius = luaObject.explosionDamageRadius;
         mExplosionDamage = luaObject.explosionDamage;
      }
      
      private function readArray(data:*) : Array
      {
         var arrayFromObject:Array = null;
         var o:Object = null;
         if(data is String)
         {
            return [data];
         }
         if(data is Array)
         {
            return data;
         }
         if(data is Object)
         {
            arrayFromObject = [];
            for each(o in data)
            {
               arrayFromObject.push(o);
            }
            return arrayFromObject;
         }
         return [];
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var frameList:Array = null;
         var frameTimeStamps:Array = null;
         var i:int = 0;
         if(this.mAnimationSprites.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         frameList = [];
         frameTimeStamps = [];
         for(i = 0; i < this.mAnimationSprites.length; i++)
         {
            frameList.push(this.mAnimationSprites[i]);
            frameTimeStamps.push(40);
         }
         return [[LevelObject.ANIMATION_NORMAL,[["1",frameList,frameTimeStamps]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.mAnimateRotation;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.mMaxRotationFrequency;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.mMinRotationFrequency;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.mMaxRotationAmplitude;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.mMinRotationAmplitude;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.mStopAnimationsAfterCollision;
      }
      
      public function get spawnDistance() : Number
      {
         return this.mSpawnDistance;
      }
      
      public function get angleOffset() : Number
      {
         return this.mAngleOffset;
      }
      
      public function get spawnedObjectCount() : int
      {
         if(this.mSpawnedObjects)
         {
            return this.mSpawnedObjects.length;
         }
         return 0;
      }
      
      public function getSpawnedObject(index:int) : String
      {
         return this.mSpawnedObjects[index];
      }
      
      public function get spawnedObjectsLength() : int
      {
         if(this.mSpawnedObjects)
         {
            return this.mSpawnedObjects.length;
         }
         return 0;
      }
      
      public function get loopingParticleCount() : int
      {
         if(this.mLoopingParticles)
         {
            return this.mLoopingParticles.length;
         }
         return 0;
      }
      
      public function getLoopingParticle(index:int) : String
      {
         return this.mLoopingParticles[index];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.mConstantRotation;
      }
      
      public function get definition() : String
      {
         return this.mDefinition;
      }
      
      public function get particlesDestroyedCount() : int
      {
         if(this.mParticlesDestroyed)
         {
            return this.mParticlesDestroyed.length;
         }
         return 0;
      }
      
      public function getParticleDestroyed(index:int) : String
      {
         if(this.mParticlesDestroyed)
         {
            return this.mParticlesDestroyed[index];
         }
         return null;
      }
      
      public function get particlesCollisionCount() : int
      {
         if(this.mParticlesCollision)
         {
            return this.mParticlesCollision.length;
         }
         return 0;
      }
      
      public function getParticleCollision(index:int) : String
      {
         if(this.mParticlesCollision)
         {
            return this.mParticlesCollision[index];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.mSpriteScore;
      }
      
      public function get horizontalFlip() : Boolean
      {
         return this.mHorizontalFlip;
      }
   }
}
