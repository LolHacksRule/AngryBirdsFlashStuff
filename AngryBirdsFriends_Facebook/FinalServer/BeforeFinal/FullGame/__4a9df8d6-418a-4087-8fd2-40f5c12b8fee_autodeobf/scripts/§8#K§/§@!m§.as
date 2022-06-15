package §8#K§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §@!m§ extends EventDispatcher
   {
       
      
      public var §!I§:String;
      
      public var §>s§:int;
      
      public var §>!N§:Number = 1;
      
      private var § #U§:Vector.<§-!o§>;
      
      private var §?W§:Number;
      
      private var §-#u§:Vector.<§["k§>;
      
      public function §@!m§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§!I§ = param1;
         this.§>s§ = param2;
         this.§>!N§ = param3;
         this.§?W§ = this.§>!N§;
         this.§ #U§ = new Vector.<§-!o§>();
         this.§-#u§ = new Vector.<§["k§>();
      }
      
      public function §08§() : Boolean
      {
         var _loc2_:§-!o§ = null;
         if(this.§ #U§.length < this.§>s§)
         {
            return true;
         }
         var _loc1_:int = this.§ #U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #U§[_loc1_];
            if(_loc2_.§,F§ <= 0)
            {
               _loc2_.§9#b§();
            }
            _loc1_--;
         }
         return this.§ #U§.length < this.§>s§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §-!o§
      {
         if(param4 < 0)
         {
            param4 = this.§?W§;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §-!o§
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
         var sndEffect:§-!o§ = new §-!o§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§3K§);
         if(this.§>!N§ == 0)
         {
            sndEffect.§!P§();
         }
         this.§ #U§.push(sndEffect);
         return sndEffect;
      }
      
      private function §3K§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc4_:Boolean = false;
         var _loc5_:DataEvent = null;
         var _loc2_:§-!o§ = §-!o§(param1.currentTarget);
         if(_loc2_.§!"-§ < _loc2_.§ !$§)
         {
            _loc3_ = §3Z§.§]3§(_loc2_.id);
            this.§,&§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§ !$§ - 1 - _loc2_.§!"-§,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§3K§);
            if(_loc4_ = this.§,&§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §,&§(param1:§-!o§) : Boolean
      {
         var _loc3_:Vector.<§-!o§> = null;
         var _loc4_:§-!o§ = null;
         var _loc2_:Boolean = false;
         if(this.§ #U§.indexOf(param1) > -1)
         {
            _loc3_ = this.§ #U§.splice(this.§ #U§.indexOf(param1),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§ #U§.length > 0;
      }
      
      public function §3j§() : void
      {
         var _loc1_:§-!o§ = null;
         while(this.§ #U§.length > 0)
         {
            _loc1_ = this.§ #U§[0];
            _loc1_.§9#b§();
         }
         this.§-#u§.length = 0;
      }
      
      public function §6"@§() : void
      {
         var _loc1_:§-!o§ = null;
         while(this.§ #U§.length > 0)
         {
            _loc1_ = this.§ #U§[0];
            this.§-#u§.push(_loc1_.pause());
         }
      }
      
      public function §"x§() : void
      {
         var _loc1_:§["k§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§-#u§)
         {
            _loc2_ = §3Z§.§]3§(_loc1_.§4! §);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§4! §,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§-#u§.length = 0;
      }
      
      public function §1$?§() : void
      {
         var _loc1_:§-!o§ = null;
         this.§>!N§ = 0;
         for each(_loc1_ in this.§ #U§)
         {
            _loc1_.§!P§();
         }
      }
      
      public function §1z§() : void
      {
         var _loc1_:§-!o§ = null;
         this.§>!N§ = this.§?W§;
         for each(_loc1_ in this.§ #U§)
         {
            _loc1_.§9"6§();
         }
      }
      
      public function get §?S§() : int
      {
         return this.§ #U§.length;
      }
      
      public function §!p§(param1:String) : §-!o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #U§.length)
         {
            if(§-!o§(this.§ #U§[_loc2_]).id == param1)
            {
               return §-!o§(this.§ #U§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0"r§(param1:int) : §-!o§
      {
         return this.§ #U§[param1];
      }
      
      public function §6B§(param1:Number) : void
      {
         var _loc2_:§-!o§ = null;
         this.§>!N§ = param1;
         for each(_loc2_ in this.§ #U§)
         {
            _loc2_.volume = this.§>!N§;
         }
      }
   }
}
