package com.rovio.sound
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var mMaxSoundCount:int;
      
      public var mVolume:Number = 1;
      
      private var mPlayingSounds:Vector.<SoundEffect>;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.mMaxSoundCount = param2;
         this.mVolume = param3;
         this.mPlayingSounds = new Vector.<SoundEffect>();
      }
      
      public function canPlayNewSounds() : Boolean
      {
         return this.mPlayingSounds.length < this.mMaxSoundCount;
      }
      
      public function playSound(param1:String, param2:int = 0, param3:Number = -1) : SoundEffect
      {
         if(param3 < 0)
         {
            param3 = this.mVolume;
         }
         var _loc4_:Class;
         if(!(_loc4_ = AssetCache.getAssetFromCache(param1,false) as Class))
         {
            Log.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
            return null;
         }
         var _loc5_:Sound = new _loc4_();
         var _loc6_:SoundTransform = new SoundTransform(param3);
         var _loc7_:SoundChannel = _loc5_.play(0,param2,_loc6_);
         var _loc8_:SoundEffect = new SoundEffect(param1,_loc7_,_loc5_,this.onSoundEffectCompleted);
         this.mPlayingSounds.push(_loc8_);
         return _loc8_;
      }
      
      private function onSoundEffectCompleted(param1:SoundEffect) : void
      {
         var _loc2_:Vector.<SoundEffect> = null;
         var _loc3_:SoundEffect = null;
         if(this.mPlayingSounds.indexOf(param1) > -1)
         {
            _loc2_ = this.mPlayingSounds.splice(this.mPlayingSounds.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function turnOffSounds() : void
      {
         var _loc1_:SoundEffect = null;
         while(this.mPlayingSounds.length > 0)
         {
            _loc1_ = this.mPlayingSounds[0];
            _loc1_.soundChannel.stop();
            _loc1_.forceSoundCompleted();
         }
      }
   }
}
