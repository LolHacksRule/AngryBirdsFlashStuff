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
   }
}
