package §@!M§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §0!p§ extends EventDispatcher
   {
       
      
      public var §=q§:String;
      
      public var §%$,§:int;
      
      public var §0#x§:Number = 1;
      
      private var §!#p§:Vector.<§^#p§>;
      
      private var §"!J§:Number;
      
      private var §?l§:Vector.<§`!6§>;
      
      public function §0!p§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§=q§ = param1;
         this.§%$,§ = param2;
         this.§0#x§ = param3;
         this.§"!J§ = this.§0#x§;
         this.§!#p§ = new Vector.<§^#p§>();
         this.§?l§ = new Vector.<§`!6§>();
      }
      
      public function §4h§() : Boolean
      {
         var _loc2_:§^#p§ = null;
         if(this.§!#p§.length < this.§%$,§)
         {
            return true;
         }
         var _loc1_:int = this.§!#p§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#p§[_loc1_];
            if(_loc2_.§2#n§ <= 0)
            {
               _loc2_.§;#C§();
            }
            _loc1_--;
         }
         return this.§!#p§.length < this.§%$,§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §^#p§
      {
         if(param4 < 0)
         {
            param4 = this.§"!J§;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §^#p§
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
         var sndEffect:§^#p§ = new §^#p§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§7G§);
         if(this.§0#x§ == 0)
         {
            sndEffect.§=#L§();
         }
         this.§!#p§.push(sndEffect);
         return sndEffect;
      }
      
      private function §7G§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc4_:Boolean = false;
         var _loc5_:DataEvent = null;
         var _loc2_:§^#p§ = §^#p§(param1.currentTarget);
         if(_loc2_.§ "X§ < _loc2_.§`#%§)
         {
            _loc3_ = §!"p§.§-!w§(_loc2_.id);
            this.§#-§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§`#%§ - 1 - _loc2_.§ "X§,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§7G§);
            if(_loc4_ = this.§#-§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §#-§(param1:§^#p§) : Boolean
      {
         var _loc3_:Vector.<§^#p§> = null;
         var _loc4_:§^#p§ = null;
         var _loc2_:Boolean = false;
         if(this.§!#p§.indexOf(param1) > -1)
         {
            _loc3_ = this.§!#p§.splice(this.§!#p§.indexOf(param1),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§!#p§.length > 0;
      }
      
      public function §>#p§() : void
      {
         var _loc1_:§^#p§ = null;
         while(this.§!#p§.length > 0)
         {
            _loc1_ = this.§!#p§[0];
            _loc1_.§;#C§();
         }
         this.§?l§.length = 0;
      }
      
      public function §7$3§() : void
      {
         var _loc1_:§^#p§ = null;
         while(this.§!#p§.length > 0)
         {
            _loc1_ = this.§!#p§[0];
            this.§?l§.push(_loc1_.pause());
         }
      }
      
      public function §8#l§() : void
      {
         var _loc1_:§`!6§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§?l§)
         {
            _loc2_ = §!"p§.§-!w§(_loc1_.§]!w§);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§]!w§,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§?l§.length = 0;
      }
      
      public function §%! §() : void
      {
         var _loc1_:§^#p§ = null;
         this.§0#x§ = 0;
         for each(_loc1_ in this.§!#p§)
         {
            _loc1_.§=#L§();
         }
      }
      
      public function §?#,§() : void
      {
         var _loc1_:§^#p§ = null;
         this.§0#x§ = this.§"!J§;
         for each(_loc1_ in this.§!#p§)
         {
            _loc1_.§+"^§();
         }
      }
      
      public function get §3$§() : int
      {
         return this.§!#p§.length;
      }
      
      public function §?W§(param1:String) : §^#p§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!#p§.length)
         {
            if(§^#p§(this.§!#p§[_loc2_]).id == param1)
            {
               return §^#p§(this.§!#p§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,U§(param1:int) : §^#p§
      {
         return this.§!#p§[param1];
      }
      
      public function §""e§(param1:Number) : void
      {
         var _loc2_:§^#p§ = null;
         this.§0#x§ = param1;
         for each(_loc2_ in this.§!#p§)
         {
            _loc2_.volume = this.§0#x§;
         }
      }
   }
}
