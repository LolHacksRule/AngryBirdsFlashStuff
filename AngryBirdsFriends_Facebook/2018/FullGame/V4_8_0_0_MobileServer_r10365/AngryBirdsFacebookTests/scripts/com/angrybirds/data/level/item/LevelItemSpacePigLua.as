package com.angrybirds.data.level.item
{
   public class LevelItemSpacePigLua extends LevelItemSpaceLua
   {
       
      
      protected var mSpriteFreeze:String;
      
      protected var mDamageSound:String;
      
      protected var mCollisionSound:String;
      
      protected var mFreezeSound:String;
      
      protected var mFrozenKilledSound:String;
      
      public function LevelItemSpacePigLua(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false, soundManagerLua:LevelItemSoundManagerLua = null)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front);
         this.mSpriteFreeze = luaObject.spriteFreeze;
         this.mDamageSound = luaObject.damageSound;
         this.mCollisionSound = luaObject.collisionSound;
         this.mFrozenKilledSound = luaObject.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.mDamageSound)
         {
            return this.mDamageSound;
         }
         return materialDamageSound;
      }
      
      override public function get collisionSound() : String
      {
         if(this.mCollisionSound)
         {
            return this.mCollisionSound;
         }
         return materialCollisionSound;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.mFrozenKilledSound)
         {
            return this.mFrozenKilledSound;
         }
         return materialDestroyedSound;
      }
      
      public function get freezeSound() : String
      {
         return this.mFreezeSound;
      }
   }
}
