package com.angrybirds.data.level.item
{
   public class LevelItemSoundResource
   {
       
      
      private var mId:String;
      
      private var mChannelName:String;
      
      private var mCollisionSounds:Vector.<String>;
      
      private var mDamagedSounds:Vector.<String>;
      
      private var mLaunchSounds:Vector.<String>;
      
      private var mSpecialSounds:Vector.<String>;
      
      private var mSelectionSounds:Vector.<String>;
      
      private var mDestroyedSounds:Vector.<String>;
      
      private var mRollingSounds:Vector.<String>;
      
      private var mSlippingSounds:Vector.<String>;
      
      private var mScreamSounds:Vector.<String>;
      
      private var mIdleSounds:Vector.<String>;
      
      public function LevelItemSoundResource(id:String, soundChannelName:String, collisionSound:XMLList, damagedSound:XMLList, launchSound:XMLList, specialSound:XMLList, selectionSound:XMLList, idleSound:XMLList, destroyedSound:XMLList, screamSound:XMLList, rollingSound:XMLList, slippingSound:XMLList)
      {
         var soundIndex:* = null;
         super();
         this.mId = id;
         this.mChannelName = soundChannelName;
         if(collisionSound)
         {
            this.mCollisionSounds = new Vector.<String>();
            for(soundIndex in collisionSound.item)
            {
               this.mCollisionSounds.push(collisionSound.item[soundIndex]);
            }
         }
         if(damagedSound)
         {
            this.mDamagedSounds = new Vector.<String>();
            for(soundIndex in damagedSound.item)
            {
               this.mDamagedSounds.push(damagedSound.item[soundIndex]);
            }
         }
         if(launchSound)
         {
            this.mLaunchSounds = new Vector.<String>();
            for(soundIndex in launchSound.item)
            {
               this.mLaunchSounds.push(launchSound.item[soundIndex]);
            }
         }
         if(specialSound)
         {
            this.mSpecialSounds = new Vector.<String>();
            for(soundIndex in specialSound.item)
            {
               this.mSpecialSounds.push(specialSound.item[soundIndex]);
            }
         }
         if(selectionSound)
         {
            this.mSelectionSounds = new Vector.<String>();
            for(soundIndex in selectionSound.item)
            {
               this.mSelectionSounds.push(selectionSound.item[soundIndex]);
            }
         }
         if(idleSound)
         {
            this.mIdleSounds = new Vector.<String>();
            for(soundIndex in idleSound.item)
            {
               this.mIdleSounds.push(idleSound.item[soundIndex]);
            }
         }
         if(destroyedSound)
         {
            this.mDestroyedSounds = new Vector.<String>();
            for(soundIndex in destroyedSound.item)
            {
               this.mDestroyedSounds.push(destroyedSound.item[soundIndex]);
            }
         }
         if(screamSound)
         {
            this.mScreamSounds = new Vector.<String>();
            for(soundIndex in screamSound.item)
            {
               this.mScreamSounds.push(screamSound.item[soundIndex]);
            }
         }
         if(rollingSound)
         {
            this.mRollingSounds = new Vector.<String>();
            for(soundIndex in rollingSound.item)
            {
               this.mRollingSounds.push(rollingSound.item[soundIndex]);
            }
         }
         if(slippingSound)
         {
            this.mSlippingSounds = new Vector.<String>();
            for(soundIndex in slippingSound.item)
            {
               this.mSlippingSounds.push(slippingSound.item[soundIndex]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.mChannelName;
      }
      
      public function getCollisionSound() : String
      {
         if(this.mCollisionSounds && this.mCollisionSounds.length > 0)
         {
            return this.mCollisionSounds[int(this.mCollisionSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.mDamagedSounds && this.mDamagedSounds.length > 0)
         {
            return this.mDamagedSounds[int(this.mDamagedSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.mLaunchSounds && this.mLaunchSounds.length > 0)
         {
            return this.mLaunchSounds[int(this.mLaunchSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.mSpecialSounds && this.mSpecialSounds.length > 0)
         {
            return this.mSpecialSounds[int(this.mSpecialSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getSelectionSound() : String
      {
         if(this.mSelectionSounds && this.mSelectionSounds.length > 0)
         {
            return this.mSelectionSounds[int(this.mSelectionSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.mIdleSounds && this.mIdleSounds.length > 0)
         {
            return this.mIdleSounds[int(this.mIdleSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.mDestroyedSounds && this.mDestroyedSounds.length > 0)
         {
            return this.mDestroyedSounds[int(this.mDestroyedSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.mRollingSounds && this.mRollingSounds.length > 0)
         {
            return this.mRollingSounds[int(this.mRollingSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.mSlippingSounds && this.mSlippingSounds.length > 0)
         {
            return this.mSlippingSounds[int(this.mSlippingSounds.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.mScreamSounds && this.mScreamSounds.length > 0)
         {
            return this.mScreamSounds[int(this.mScreamSounds.length * Math.random())];
         }
         return null;
      }
   }
}
