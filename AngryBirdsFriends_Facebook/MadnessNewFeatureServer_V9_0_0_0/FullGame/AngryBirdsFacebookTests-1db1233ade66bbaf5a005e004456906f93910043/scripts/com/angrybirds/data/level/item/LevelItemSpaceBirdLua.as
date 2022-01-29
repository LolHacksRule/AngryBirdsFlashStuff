package com.angrybirds.data.level.item
{
   import com.rovio.utils.HashMap;
   
   public class LevelItemSpaceBirdLua extends LevelItemSpaceLua
   {
       
      
      protected var mBounceAmplitudeMultiplier:Number;
      
      protected var mBounceFrequencyMultiplier:Number;
      
      protected var mFriction:Number;
      
      protected var mControllable:Boolean;
      
      protected var mFreezeBomb:Boolean;
      
      protected var mRotateWhileFlying:Boolean;
      
      protected var mIgnoreParticles:Boolean;
      
      protected var mOnCollisionEnter:String;
      
      protected var mExplosionFactors:String;
      
      protected var mNormalTrailSprite:String;
      
      protected var mSpecialTrailSprite:String;
      
      protected var mAimingAidSprite:String;
      
      protected var mEnterGravitationParticles:String;
      
      protected var mOnTriggerEnter:String;
      
      protected var mOnTriggerExit:String;
      
      protected var mAtmosphereTailParticles:String;
      
      protected var mNormalTailParticles:String;
      
      protected var mOnLaunched:String;
      
      protected var mSpecialParticles:Array;
      
      protected var mSounds:HashMap;
      
      protected var mDestroyedSound:String;
      
      public function LevelItemSpaceBirdLua(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false, soundManagerLua:LevelItemSoundManagerLua = null)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front);
         mSoundManagerLua = soundManagerLua;
         this.mBounceAmplitudeMultiplier = luaObject.bounceAmplitudeMultiplier;
         this.mBounceFrequencyMultiplier = luaObject.bounceFrequencyMultiplier;
         this.mFriction = luaObject.friction;
         this.mControllable = luaObject.controllable;
         this.mFreezeBomb = luaObject.freezeBomb;
         this.mRotateWhileFlying = luaObject.rotateWhileFlying;
         this.mIgnoreParticles = luaObject.ignoreParticles;
         this.mOnCollisionEnter = luaObject.onCollisionEnter;
         this.mExplosionFactors = luaObject.explosionFactors;
         this.mNormalTrailSprite = luaObject.normalTrailSprite;
         this.mSpecialTrailSprite = luaObject.specialTrailSprite;
         this.mAimingAidSprite = luaObject.aimingAidSprite;
         this.mEnterGravitationParticles = luaObject.enterGravitationParticles;
         this.mOnTriggerEnter = luaObject.onTriggerEnter;
         this.mOnTriggerExit = luaObject.onTriggerExit;
         this.mAtmosphereTailParticles = luaObject.atmosphereTailParticles;
         this.mNormalTailParticles = luaObject.normalTailParticles;
         this.mOnLaunched = luaObject.onLaunched;
         this.mSpecialParticles = this.readArray(luaObject.specialParticles);
         this.mSounds = this.readHashMap(luaObject.sounds);
         this.mDestroyedSound = luaObject.destroyedSound;
      }
      
      protected function readHashMap(data:Object) : HashMap
      {
         var key:* = null;
         var dictionary:HashMap = new HashMap();
         for(key in data)
         {
            dictionary[key] = data[key];
         }
         return dictionary;
      }
      
      protected function readArray(data:*) : Array
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
      
      public function get soundsLength() : int
      {
         if(this.mSounds)
         {
            return this.mSounds.length;
         }
         return 0;
      }
      
      public function getSound(indexName:String) : String
      {
         return this.mSounds[indexName];
      }
      
      public function get specialParticlesLength() : int
      {
         if(this.mSpecialParticles)
         {
            return this.mSpecialParticles.length;
         }
         return 0;
      }
      
      public function getSpecialParticle(index:int) : String
      {
         return this.mSpecialParticles[index];
      }
      
      public function get normalTailParticles() : String
      {
         return this.mNormalTailParticles;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.mNormalTrailSprite;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.mEnterGravitationParticles;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.mAtmosphereTailParticles;
      }
      
      public function get destroyedSound() : String
      {
         return this.mDestroyedSound;
      }
   }
}
