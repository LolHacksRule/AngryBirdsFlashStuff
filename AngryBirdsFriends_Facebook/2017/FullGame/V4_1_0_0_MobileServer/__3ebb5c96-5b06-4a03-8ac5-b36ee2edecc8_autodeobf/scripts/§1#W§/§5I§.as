package §1#W§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5I§ extends EventDispatcher
   {
       
      
      public var §;!p§:String;
      
      public var §?a§:int;
      
      public var §%#3§:Number = 1;
      
      private var §0"Z§:Vector.<§="D§>;
      
      private var §,$7§:Number;
      
      private var §+"G§:Vector.<§,"b§>;
      
      public function §5I§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§;!p§ = param1;
         this.§?a§ = param2;
         this.§%#3§ = param3;
         this.§,$7§ = this.§%#3§;
         this.§0"Z§ = new Vector.<§="D§>();
         this.§+"G§ = new Vector.<§,"b§>();
      }
      
      public function §""g§() : Boolean
      {
         var _loc2_:§="D§ = null;
         if(this.§0"Z§.length < this.§?a§)
         {
            return true;
         }
         var _loc1_:int = this.§0"Z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0"Z§[_loc1_];
            if(_loc2_.§8#§ <= 0)
            {
               _loc2_.§[#S§();
            }
            _loc1_--;
         }
         return this.§0"Z§.length < this.§?a§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §="D§
      {
         if(param4 < 0)
         {
            param4 = this.§,$7§;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §="D§
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
         var sndEffect:§="D§ = new §="D§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§-#w§);
         if(this.§%#3§ == 0)
         {
            sndEffect.§8"D§();
         }
         this.§0"Z§.push(sndEffect);
         return sndEffect;
      }
      
      private function §-#w§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc4_:Boolean = false;
         var _loc5_:DataEvent = null;
         var _loc2_:§="D§ = §="D§(param1.currentTarget);
         if(_loc2_.§;! § < _loc2_.§7R§)
         {
            _loc3_ = §!#&§.§-#G§(_loc2_.id);
            this.§&#p§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§7R§ - 1 - _loc2_.§;! §,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§-#w§);
            if(_loc4_ = this.§&#p§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §&#p§(param1:§="D§) : Boolean
      {
         var _loc3_:Vector.<§="D§> = null;
         var _loc4_:§="D§ = null;
         var _loc2_:Boolean = false;
         if(this.§0"Z§.indexOf(param1) > -1)
         {
            _loc3_ = this.§0"Z§.splice(this.§0"Z§.indexOf(param1),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§0"Z§.length > 0;
      }
      
      public function §^!2§() : void
      {
         var _loc1_:§="D§ = null;
         while(this.§0"Z§.length > 0)
         {
            _loc1_ = this.§0"Z§[0];
            _loc1_.§[#S§();
         }
         this.§+"G§.length = 0;
      }
      
      public function §0!A§() : void
      {
         var _loc1_:§="D§ = null;
         while(this.§0"Z§.length > 0)
         {
            _loc1_ = this.§0"Z§[0];
            this.§+"G§.push(_loc1_.pause());
         }
      }
      
      public function §+#M§() : void
      {
         var _loc1_:§,"b§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§+"G§)
         {
            _loc2_ = §!#&§.§-#G§(_loc1_.§"!7§);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§"!7§,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§+"G§.length = 0;
      }
      
      public function §="J§() : void
      {
         var _loc1_:§="D§ = null;
         this.§%#3§ = 0;
         for each(_loc1_ in this.§0"Z§)
         {
            _loc1_.§8"D§();
         }
      }
      
      public function §+#i§() : void
      {
         var _loc1_:§="D§ = null;
         this.§%#3§ = this.§,$7§;
         for each(_loc1_ in this.§0"Z§)
         {
            _loc1_.§""6§();
         }
      }
      
      public function get §>$"§() : int
      {
         return this.§0"Z§.length;
      }
      
      public function §8]§(param1:String) : §="D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0"Z§.length)
         {
            if(§="D§(this.§0"Z§[_loc2_]).id == param1)
            {
               return §="D§(this.§0"Z§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,"W§(param1:int) : §="D§
      {
         return this.§0"Z§[param1];
      }
      
      public function §3!D§(param1:Number) : void
      {
         var _loc2_:§="D§ = null;
         this.§%#3§ = param1;
         for each(_loc2_ in this.§0"Z§)
         {
            _loc2_.volume = this.§%#3§;
         }
      }
   }
}
