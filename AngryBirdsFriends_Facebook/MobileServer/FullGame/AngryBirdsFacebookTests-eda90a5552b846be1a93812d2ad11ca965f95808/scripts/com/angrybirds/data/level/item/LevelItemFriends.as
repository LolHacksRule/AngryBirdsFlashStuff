package com.angrybirds.data.level.item
{
   public class LevelItemFriends extends LevelItemSpaceLua
   {
       
      
      private var _mIdleSound:String;
      
      private var _mFearSound:String;
      
      private var _mSoundChannel:String;
      
      public function LevelItemFriends(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false, soundManagerLua:LevelItemSoundManagerLua = null)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front,soundManagerLua);
         this._mIdleSound = luaObject.idleSound;
         this._mFearSound = luaObject.fearSound;
         this._mSoundChannel = luaObject.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this._mIdleSound;
      }
      
      public function get fearSound() : String
      {
         return this._mFearSound;
      }
      
      override public function get soundChannel() : String
      {
         var channel:String = this._mSoundChannel;
         if(channel == null)
         {
            channel = super.soundChannel;
         }
         return channel;
      }
      
      override public function get materialCollisionSound() : String
      {
         var resource:LevelItemSoundResource = null;
         var collisionSound:String = super.materialCollisionSound;
         if(collisionSound == null)
         {
            if(mMaterial.sounds)
            {
               resource = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(resource)
               {
                  collisionSound = resource.getCollisionSound();
               }
            }
         }
         return collisionSound;
      }
      
      override public function get materialDamageSound() : String
      {
         var resource:LevelItemSoundResource = null;
         var damageSound:String = super.materialDamageSound;
         if(damageSound == null)
         {
            if(mMaterial.sounds)
            {
               resource = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(resource)
               {
                  damageSound = resource.getDamagedSound();
               }
            }
         }
         return damageSound;
      }
      
      override public function get materialDestroyedSound() : String
      {
         var resource:LevelItemSoundResource = null;
         var destroyedSound:String = super.materialDestroyedSound;
         if(destroyedSound == null)
         {
            if(mMaterial.sounds)
            {
               resource = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(resource)
               {
                  destroyedSound = resource.getDestroyedSound();
               }
            }
         }
         return destroyedSound;
      }
      
      override public function get materialRollingSound() : String
      {
         var resource:LevelItemSoundResource = null;
         var rollingSound:String = super.materialRollingSound;
         if(rollingSound == null)
         {
            if(mMaterial.sounds)
            {
               resource = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(resource)
               {
                  rollingSound = resource.getRollingSound();
               }
            }
         }
         return rollingSound;
      }
   }
}
