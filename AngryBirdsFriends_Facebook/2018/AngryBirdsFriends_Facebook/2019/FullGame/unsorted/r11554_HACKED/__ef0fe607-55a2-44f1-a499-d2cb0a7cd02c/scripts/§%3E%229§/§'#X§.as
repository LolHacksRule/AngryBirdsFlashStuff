package §>"9§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §'#X§ extends EventDispatcher
   {
       
      
      public var §-!O§:String;
      
      public var §;$;§:int;
      
      public var §6"]§:Number = 1;
      
      private var §,=§:Vector.<§1"T§>;
      
      private var §0!i§:Number;
      
      private var §6"l§:Vector.<§'#C§>;
      
      public function §'#X§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§-!O§ = param1;
         this.§;$;§ = param2;
         this.§6"]§ = param3;
         this.§0!i§ = this.§6"]§;
         this.§,=§ = new Vector.<§1"T§>();
         this.§6"l§ = new Vector.<§'#C§>();
      }
      
      public function §#x§() : Boolean
      {
         var _loc2_:§1"T§ = null;
         if(this.§,=§.length < this.§;$;§)
         {
            return true;
         }
         var _loc1_:int = this.§,=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,=§[_loc1_];
            if(_loc2_.§2#e§ <= 0)
            {
               _loc2_.§<"^§();
            }
            _loc1_--;
         }
         return this.§,=§.length < this.§;$;§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §1"T§
      {
         if(param4 < 0)
         {
            param4 = this.§0!i§;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §1"T§
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
         var sndEffect:§1"T§ = new §1"T§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§+!`§);
         if(this.§6"]§ == 0)
         {
            sndEffect.§6r§();
         }
         this.§,=§.push(sndEffect);
         return sndEffect;
      }
      
      private function §+!`§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§1"T§ = §1"T§(param1.currentTarget);
         if(_loc2_.§=#]§ < _loc2_.§[#?§)
         {
            _loc3_ = §[#%§.§+"&§(_loc2_.id);
            this.§]#k§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§[#?§ - 1 - _loc2_.§=#]§,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§+!`§);
            if(this.§]#k§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §]#k§(param1:§1"T§) : Boolean
      {
         var _loc3_:Vector.<§1"T§> = null;
         var _loc2_:Boolean = false;
         if(this.§,=§.indexOf(param1) > -1)
         {
            _loc3_ = this.§,=§.splice(this.§,=§.indexOf(param1),1);
            _loc3_[0].destroy();
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§,=§.length > 0;
      }
      
      public function §^L§() : void
      {
         var _loc1_:§1"T§ = null;
         while(this.§,=§.length > 0)
         {
            _loc1_ = this.§,=§[0];
            _loc1_.§<"^§();
         }
         this.§6"l§.length = 0;
      }
      
      public function §<"I§() : void
      {
         var _loc1_:§1"T§ = null;
         while(this.§,=§.length > 0)
         {
            _loc1_ = this.§,=§[0];
            this.§6"l§.push(_loc1_.pause());
         }
      }
      
      public function §%x§() : void
      {
         var _loc1_:§'#C§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§6"l§)
         {
            _loc2_ = §[#%§.§+"&§(_loc1_.§]#V§);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§]#V§,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§6"l§.length = 0;
      }
      
      public function §;" §() : void
      {
         var _loc1_:§1"T§ = null;
         this.§6"]§ = 0;
         for each(_loc1_ in this.§,=§)
         {
            _loc1_.§6r§();
         }
      }
      
      public function §`"h§() : void
      {
         var _loc1_:§1"T§ = null;
         this.§6"]§ = this.§0!i§;
         for each(_loc1_ in this.§,=§)
         {
            _loc1_.§;A§();
         }
      }
      
      public function get §3%§() : int
      {
         return this.§,=§.length;
      }
      
      public function §<#z§(param1:String) : §1"T§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,=§.length)
         {
            if(§1"T§(this.§,=§[_loc2_]).id == param1)
            {
               return §1"T§(this.§,=§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'#[§(param1:int) : §1"T§
      {
         return this.§,=§[param1];
      }
      
      public function §6F§(param1:Number) : void
      {
         var _loc2_:§1"T§ = null;
         this.§6"]§ = param1;
         for each(_loc2_ in this.§,=§)
         {
            _loc2_.volume = this.§6"]§;
         }
      }
   }
}
