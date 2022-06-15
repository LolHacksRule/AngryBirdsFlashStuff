package §3"V§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §3,§ extends EventDispatcher
   {
       
      
      public var §&$"§:String;
      
      public var §5r§:int;
      
      public var §;I§:Number = 1;
      
      private var §;"N§:Vector.<§9$8§>;
      
      private var §%# §:Number;
      
      private var §1"1§:Vector.<§3w§>;
      
      public function §3,§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§&$"§ = param1;
         this.§5r§ = param2;
         this.§;I§ = param3;
         this.§%# § = this.§;I§;
         this.§;"N§ = new Vector.<§9$8§>();
         this.§1"1§ = new Vector.<§3w§>();
      }
      
      public function §9";§() : Boolean
      {
         var _loc2_:§9$8§ = null;
         if(this.§;"N§.length < this.§5r§)
         {
            return true;
         }
         var _loc1_:int = this.§;"N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;"N§[_loc1_];
            if(_loc2_.§[!l§ <= 0)
            {
               _loc2_.§[!p§();
            }
            _loc1_--;
         }
         return this.§;"N§.length < this.§5r§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §9$8§
      {
         if(param4 < 0)
         {
            param4 = this.§%# §;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §9$8§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,0,soundTransform);
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
         var sndEffect:§9$8§ = new §9$8§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§'$B§);
         if(this.§;I§ == 0)
         {
            sndEffect.§^!V§();
         }
         this.§;"N§.push(sndEffect);
         return sndEffect;
      }
      
      private function §'$B§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc4_:Boolean = false;
         var _loc5_:DataEvent = null;
         var _loc2_:§9$8§ = §9$8§(param1.currentTarget);
         if(_loc2_.§;"l§ < _loc2_.§?"§)
         {
            _loc3_ = § b§.§[l§(_loc2_.id);
            this.§!E§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§?"§ - 1 - _loc2_.§;"l§,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§'$B§);
            if(_loc4_ = this.§!E§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §!E§(param1:§9$8§) : Boolean
      {
         var _loc3_:Vector.<§9$8§> = null;
         var _loc4_:§9$8§ = null;
         var _loc2_:Boolean = false;
         if(this.§;"N§.indexOf(param1) > -1)
         {
            _loc3_ = this.§;"N§.splice(this.§;"N§.indexOf(param1),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§;"N§.length > 0;
      }
      
      public function §#! §() : void
      {
         var _loc1_:§9$8§ = null;
         while(this.§;"N§.length > 0)
         {
            _loc1_ = this.§;"N§[0];
            _loc1_.§[!p§();
         }
         this.§1"1§.length = 0;
      }
      
      public function §[#;§() : void
      {
         var _loc1_:§9$8§ = null;
         while(this.§;"N§.length > 0)
         {
            _loc1_ = this.§;"N§[0];
            this.§1"1§.push(_loc1_.pause());
         }
      }
      
      public function §&"O§() : void
      {
         var _loc1_:§3w§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§1"1§)
         {
            _loc2_ = § b§.§[l§(_loc1_.§-$9§);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§-$9§,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§1"1§.length = 0;
      }
      
      public function §>$8§() : void
      {
         var _loc1_:§9$8§ = null;
         this.§;I§ = 0;
         for each(_loc1_ in this.§;"N§)
         {
            _loc1_.§^!V§();
         }
      }
      
      public function §"!"§() : void
      {
         var _loc1_:§9$8§ = null;
         this.§;I§ = this.§%# §;
         for each(_loc1_ in this.§;"N§)
         {
            _loc1_.§+"W§();
         }
      }
      
      public function get §'#@§() : int
      {
         return this.§;"N§.length;
      }
      
      public function §8"K§(param1:String) : §9$8§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;"N§.length)
         {
            if(§9$8§(this.§;"N§[_loc2_]).id == param1)
            {
               return §9$8§(this.§;"N§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-Z§(param1:int) : §9$8§
      {
         return this.§;"N§[param1];
      }
      
      public function §4#e§(param1:Number) : void
      {
         var _loc2_:§9$8§ = null;
         this.§;I§ = param1;
         for each(_loc2_ in this.§;"N§)
         {
            _loc2_.volume = this.§;I§;
         }
      }
   }
}
