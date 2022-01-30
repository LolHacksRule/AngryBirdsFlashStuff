package §6p§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!w§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §+!%§:int;
      
      public var §,!M§:Number = 1;
      
      private var §-!I§:Vector.<§%!W§>;
      
      private var §5j§:Number;
      
      public function §,!w§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§+!%§ = param2;
         this.§,!M§ = param3;
         this.§5j§ = this.§,!M§;
         this.§-!I§ = new Vector.<§%!W§>();
      }
      
      public function §8!z§() : Boolean
      {
         return this.§-!I§.length < this.§+!%§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §%!W§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§5j§;
         }
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,loop,soundTransform);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
            sndChannel = null;
         }
         if(sndChannel == null)
         {
            return null;
         }
         var sndEffect:§%!W§ = new §%!W§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§-!l§);
         if(this.§,!M§ == 0)
         {
            sndEffect.§5" §();
         }
         this.§-!I§.push(sndEffect);
         return sndEffect;
      }
      
      private function §-!l§(param1:Event) : void
      {
         var _loc3_:Vector.<§%!W§> = null;
         var _loc4_:§%!W§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§%!W§ = §%!W§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§-!l§);
         if(this.§-!I§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§-!I§.splice(this.§-!I§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §[r§() : Boolean
      {
         return this.§-!I§.length > 0;
      }
      
      public function §>T§() : void
      {
         var _loc1_:§%!W§ = null;
         while(this.§-!I§.length > 0)
         {
            _loc1_ = this.§-!I§[0];
            _loc1_.stop();
            _loc1_.§=%§();
         }
      }
      
      public function §+"3§() : void
      {
         var _loc1_:§%!W§ = null;
         this.§,!M§ = 0;
         for each(_loc1_ in this.§-!I§)
         {
            _loc1_.§5" §();
         }
      }
      
      public function §%§() : void
      {
         var _loc1_:§%!W§ = null;
         this.§,!M§ = this.§5j§;
         for each(_loc1_ in this.§-!I§)
         {
            _loc1_.§%"4§();
         }
      }
      
      public function §5!A§(param1:String) : §%!W§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!I§.length)
         {
            if(§%!W§(this.§-!I§[_loc2_]).id == param1)
            {
               return §%!W§(this.§-!I§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
