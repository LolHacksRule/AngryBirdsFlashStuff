package §6!B§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7M§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §#"B§:int;
      
      public var §4a§:Number = 1;
      
      private var §;C§:Vector.<§,!p§>;
      
      private var §"!;§:Number;
      
      public function §7M§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§#"B§ = param2;
         this.§4a§ = param3;
         this.§"!;§ = this.§4a§;
         this.§;C§ = new Vector.<§,!p§>();
      }
      
      public function §&!m§() : Boolean
      {
         return this.§;C§.length < this.§#"B§;
      }
      
      public function §7N§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!p§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§"!;§;
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
         var sndEffect:§,!p§ = new §,!p§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§3!m§);
         if(this.§4a§ == 0)
         {
            sndEffect.§@^§();
         }
         this.§;C§.push(sndEffect);
         return sndEffect;
      }
      
      private function §3!m§(param1:Event) : void
      {
         var _loc3_:Vector.<§,!p§> = null;
         var _loc4_:§,!p§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§,!p§ = §,!p§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§3!m§);
         if(this.§;C§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§;C§.splice(this.§;C§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §5%§() : Boolean
      {
         return this.§;C§.length > 0;
      }
      
      public function §&!^§() : void
      {
         var _loc1_:§,!p§ = null;
         while(this.§;C§.length > 0)
         {
            _loc1_ = this.§;C§[0];
            _loc1_.stop();
            _loc1_.§9!S§();
         }
      }
      
      public function §'Y§() : void
      {
         var _loc1_:§,!p§ = null;
         this.§4a§ = 0;
         for each(_loc1_ in this.§;C§)
         {
            _loc1_.§@^§();
         }
      }
      
      public function §?t§() : void
      {
         var _loc1_:§,!p§ = null;
         this.§4a§ = this.§"!;§;
         for each(_loc1_ in this.§;C§)
         {
            _loc1_.§3!<§();
         }
      }
      
      public function §?"+§(param1:String) : §,!p§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;C§.length)
         {
            if(§,!p§(this.§;C§[_loc2_]).id == param1)
            {
               return §,!p§(this.§;C§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
