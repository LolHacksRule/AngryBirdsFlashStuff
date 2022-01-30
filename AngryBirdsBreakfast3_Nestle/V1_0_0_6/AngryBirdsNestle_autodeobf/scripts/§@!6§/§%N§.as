package §@!6§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%N§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §'!!§:int;
      
      public var §&!<§:Number = 1;
      
      private var §@"3§:Vector.<§-Z§>;
      
      private var §'o§:Number;
      
      public function §%N§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§'!!§ = param2;
         this.§&!<§ = param3;
         this.§'o§ = this.§&!<§;
         this.§@"3§ = new Vector.<§-Z§>();
      }
      
      public function §"!8§() : Boolean
      {
         var _loc2_:§-Z§ = null;
         if(this.§@"3§.length < this.§'!!§)
         {
            return true;
         }
         var _loc1_:int = this.§@"3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@"3§[_loc1_];
            if(_loc2_.§-!"§ <= 0)
            {
               _loc2_.§0!#§();
            }
            _loc1_--;
         }
         return this.§@"3§.length < this.§'!!§;
      }
      
      public function §<!9§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §-Z§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§'o§;
         }
         else
         {
            volume *= this.§'o§;
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
         var sndEffect:§-Z§ = new §-Z§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§4!-§);
         if(this.§&!<§ == 0)
         {
            sndEffect.§3-§();
         }
         this.§@"3§.push(sndEffect);
         return sndEffect;
      }
      
      private function §4!-§(param1:Event) : void
      {
         var _loc3_:Vector.<§-Z§> = null;
         var _loc4_:§-Z§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§-Z§ = §-Z§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§4!-§);
         if(this.§@"3§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§@"3§.splice(this.§@"3§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §35§() : Boolean
      {
         return this.§@"3§.length > 0;
      }
      
      public function §,!8§() : void
      {
         var _loc1_:§-Z§ = null;
         while(this.§@"3§.length > 0)
         {
            _loc1_ = this.§@"3§[0];
            _loc1_.§0!#§();
         }
      }
      
      public function § "1§() : void
      {
         var _loc1_:§-Z§ = null;
         this.§&!<§ = 0;
         for each(_loc1_ in this.§@"3§)
         {
            _loc1_.§3-§();
         }
      }
      
      public function §?"2§() : void
      {
         var _loc1_:§-Z§ = null;
         this.§&!<§ = this.§'o§;
         for each(_loc1_ in this.§@"3§)
         {
            _loc1_.§<!"§();
         }
      }
      
      public function §'u§(param1:String) : §-Z§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@"3§.length)
         {
            if(§-Z§(this.§@"3§[_loc2_]).id == param1)
            {
               return §-Z§(this.§@"3§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
