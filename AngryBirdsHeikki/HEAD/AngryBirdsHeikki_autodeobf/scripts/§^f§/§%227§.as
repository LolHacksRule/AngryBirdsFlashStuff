package §^f§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §"7§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@§:int;
      
      public var §#!#§:Number = 1;
      
      private var §2;§:Vector.<§,%§>;
      
      private var §4!e§:Number;
      
      public function §"7§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@§ = param2;
         this.§#!#§ = param3;
         this.§4!e§ = this.§#!#§;
         this.§2;§ = new Vector.<§,%§>();
      }
      
      public function §%!6§() : Boolean
      {
         return this.§2;§.length < this.§@§;
      }
      
      public function §5!S§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §,%§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§4!e§;
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
         var sndEffect:§,%§ = new §,%§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§@!I§);
         if(this.§#!#§ == 0)
         {
            sndEffect.§2!<§();
         }
         this.§2;§.push(sndEffect);
         return sndEffect;
      }
      
      private function §@!I§(param1:Event) : void
      {
         var _loc3_:Vector.<§,%§> = null;
         var _loc4_:§,%§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§,%§ = §,%§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§@!I§);
         if(this.§2;§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§2;§.splice(this.§2;§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§17§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §4w§() : Boolean
      {
         return this.§2;§.length > 0;
      }
      
      public function §2M§() : void
      {
         var _loc1_:§,%§ = null;
         while(this.§2;§.length > 0)
         {
            _loc1_ = this.§2;§[0];
            _loc1_.stop();
            _loc1_.§`!4§();
         }
      }
      
      public function §?t§() : void
      {
         var _loc1_:§,%§ = null;
         this.§#!#§ = 0;
         for each(_loc1_ in this.§2;§)
         {
            _loc1_.§2!<§();
         }
      }
      
      public function §'0§() : void
      {
         var _loc1_:§,%§ = null;
         this.§#!#§ = this.§4!e§;
         for each(_loc1_ in this.§2;§)
         {
            _loc1_.§#!I§();
         }
      }
      
      public function §2!#§(param1:String) : §,%§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2;§.length)
         {
            if(§,%§(this.§2;§[_loc2_]).id == param1)
            {
               return §,%§(this.§2;§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
