package §3!A§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!%§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §?!H§:int;
      
      public var §,A§:Number = 1;
      
      private var §?J§:Vector.<§;;§>;
      
      private var §2"§:Number;
      
      public function §,!%§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§?!H§ = param2;
         this.§,A§ = param3;
         this.§2"§ = this.§,A§;
         this.§?J§ = new Vector.<§;;§>();
      }
      
      public function §6!I§() : Boolean
      {
         return this.§?J§.length < this.§?!H§;
      }
      
      public function §-! §(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §;;§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§2"§;
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
         var sndEffect:§;;§ = new §;;§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§8@§);
         if(this.§,A§ == 0)
         {
            sndEffect.§>U§();
         }
         this.§?J§.push(sndEffect);
         return sndEffect;
      }
      
      private function §8@§(param1:Event) : void
      {
         var _loc3_:Vector.<§;;§> = null;
         var _loc4_:§;;§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§;;§ = §;;§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§8@§);
         if(this.§?J§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§?J§.splice(this.§?J§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §-D§() : Boolean
      {
         return this.§?J§.length > 0;
      }
      
      public function §"P§() : void
      {
         var _loc1_:§;;§ = null;
         while(this.§?J§.length > 0)
         {
            _loc1_ = this.§?J§[0];
            _loc1_.stop();
            _loc1_.§^+§();
         }
      }
      
      public function §8p§() : void
      {
         var _loc1_:§;;§ = null;
         this.§,A§ = 0;
         for each(_loc1_ in this.§?J§)
         {
            _loc1_.§>U§();
         }
      }
      
      public function §9!B§() : void
      {
         var _loc1_:§;;§ = null;
         this.§,A§ = this.§2"§;
         for each(_loc1_ in this.§?J§)
         {
            _loc1_.§+<§();
         }
      }
      
      public function §@!&§(param1:String) : §;;§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?J§.length)
         {
            if(§;;§(this.§?J§[_loc2_]).id == param1)
            {
               return §;;§(this.§?J§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
