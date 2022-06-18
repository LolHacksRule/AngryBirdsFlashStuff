package § "v§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8M§ extends EventDispatcher
   {
       
      
      public var §-#3§:String;
      
      public var §=!_§:int;
      
      public var §6!g§:Number = 1;
      
      private var §`"U§:Vector.<§+o§>;
      
      private var §#k§:Number;
      
      private var §'W§:Vector.<§%f§>;
      
      public function §8M§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§-#3§ = param1;
         this.§=!_§ = param2;
         this.§6!g§ = param3;
         this.§#k§ = this.§6!g§;
         this.§`"U§ = new Vector.<§+o§>();
         this.§'W§ = new Vector.<§%f§>();
      }
      
      public function §%#A§() : Boolean
      {
         var _loc2_:§+o§ = null;
         if(this.§`"U§.length < this.§=!_§)
         {
            return true;
         }
         var _loc1_:int = this.§`"U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`"U§[_loc1_];
            if(_loc2_.§%!,§ <= 0)
            {
               _loc2_.§%'§();
            }
            _loc1_--;
         }
         return this.§`"U§.length < this.§=!_§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §+o§
      {
         if(param4 < 0)
         {
            param4 = this.§#k§;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §+o§
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
         var sndEffect:§+o§ = new §+o§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§8"S§);
         if(this.§6!g§ == 0)
         {
            sndEffect.§'#6§();
         }
         this.§`"U§.push(sndEffect);
         return sndEffect;
      }
      
      private function §8"S§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§+o§ = §+o§(param1.currentTarget);
         if(_loc2_.§^%§ < _loc2_.§5V§)
         {
            _loc3_ = §4$4§.§&#w§(_loc2_.id);
            this.§4l§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§5V§ - 1 - _loc2_.§^%§,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§8"S§);
            if(this.§4l§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §4l§(param1:§+o§) : Boolean
      {
         var _loc3_:Vector.<§+o§> = null;
         var _loc2_:Boolean = false;
         if(this.§`"U§.indexOf(param1) > -1)
         {
            _loc3_ = this.§`"U§.splice(this.§`"U§.indexOf(param1),1);
            _loc3_[0].destroy();
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§`"U§.length > 0;
      }
      
      public function §?#l§() : void
      {
         var _loc1_:§+o§ = null;
         while(this.§`"U§.length > 0)
         {
            _loc1_ = this.§`"U§[0];
            _loc1_.§%'§();
         }
         this.§'W§.length = 0;
      }
      
      public function §3V§() : void
      {
         var _loc1_:§+o§ = null;
         while(this.§`"U§.length > 0)
         {
            _loc1_ = this.§`"U§[0];
            this.§'W§.push(_loc1_.pause());
         }
      }
      
      public function §4!S§() : void
      {
         var _loc1_:§%f§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§'W§)
         {
            _loc2_ = §4$4§.§&#w§(_loc1_.§4!3§);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§4!3§,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§'W§.length = 0;
      }
      
      public function §]!D§() : void
      {
         var _loc1_:§+o§ = null;
         this.§6!g§ = 0;
         for each(_loc1_ in this.§`"U§)
         {
            _loc1_.§'#6§();
         }
      }
      
      public function §,#L§() : void
      {
         var _loc1_:§+o§ = null;
         this.§6!g§ = this.§#k§;
         for each(_loc1_ in this.§`"U§)
         {
            _loc1_.§;"D§();
         }
      }
      
      public function get §!!;§() : int
      {
         return this.§`"U§.length;
      }
      
      public function §2"S§(param1:String) : §+o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`"U§.length)
         {
            if(§+o§(this.§`"U§[_loc2_]).id == param1)
            {
               return §+o§(this.§`"U§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2#L§(param1:int) : §+o§
      {
         return this.§`"U§[param1];
      }
      
      public function §,#G§(param1:Number) : void
      {
         var _loc2_:§+o§ = null;
         this.§6!g§ = param1;
         for each(_loc2_ in this.§`"U§)
         {
            _loc2_.volume = this.§6!g§;
         }
      }
   }
}
