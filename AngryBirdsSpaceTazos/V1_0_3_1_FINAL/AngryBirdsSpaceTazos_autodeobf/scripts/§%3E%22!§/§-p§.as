package §>"!§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-p§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §>_§:int;
      
      public var §@!U§:Number = 1;
      
      private var §%2§:Vector.<§"";§>;
      
      private var §2G§:Number;
      
      public function §-p§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§>_§ = param2;
         this.§@!U§ = param3;
         this.§2G§ = this.§@!U§;
         this.§%2§ = new Vector.<§"";§>();
      }
      
      public function § !O§() : Boolean
      {
         var _loc2_:§"";§ = null;
         if(this.§%2§.length < this.§>_§)
         {
            return true;
         }
         var _loc1_:int = this.§%2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%2§[_loc1_];
            if(_loc2_.§;!B§ <= 0)
            {
               _loc2_.§;!V§();
            }
            _loc1_--;
         }
         return this.§%2§.length < this.§>_§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §"";§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§2G§;
         }
         else
         {
            volume *= this.§2G§;
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
         var sndEffect:§"";§ = new §"";§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§2T§);
         if(this.§@!U§ == 0)
         {
            sndEffect.§9",§();
         }
         this.§%2§.push(sndEffect);
         return sndEffect;
      }
      
      private function §2T§(param1:Event) : void
      {
         var _loc3_:Vector.<§"";§> = null;
         var _loc4_:§"";§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§"";§ = §"";§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§2T§);
         if(this.§%2§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§%2§.splice(this.§%2§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §]X§() : Boolean
      {
         return this.§%2§.length > 0;
      }
      
      public function §["6§() : void
      {
         var _loc1_:§"";§ = null;
         while(this.§%2§.length > 0)
         {
            _loc1_ = this.§%2§[0];
            _loc1_.§;!V§();
         }
      }
      
      public function §#]§() : void
      {
         var _loc1_:§"";§ = null;
         this.§@!U§ = 0;
         for each(_loc1_ in this.§%2§)
         {
            _loc1_.§9",§();
         }
      }
      
      public function §[;§() : void
      {
         var _loc1_:§"";§ = null;
         this.§@!U§ = this.§2G§;
         for each(_loc1_ in this.§%2§)
         {
            _loc1_.§45§();
         }
      }
      
      public function §^"6§(param1:String) : §"";§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%2§.length)
         {
            if(§"";§(this.§%2§[_loc2_]).id == param1)
            {
               return §"";§(this.§%2§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
