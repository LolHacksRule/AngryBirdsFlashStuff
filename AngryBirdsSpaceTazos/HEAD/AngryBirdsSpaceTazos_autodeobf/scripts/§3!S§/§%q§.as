package §3!S§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%q§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §-g§:int;
      
      public var §3§:Number = 1;
      
      private var §>!N§:Vector.<§"H§>;
      
      private var §=!`§:Number;
      
      public function §%q§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§-g§ = param2;
         this.§3§ = param3;
         this.§=!`§ = this.§3§;
         this.§>!N§ = new Vector.<§"H§>();
      }
      
      public function §3!z§() : Boolean
      {
         var _loc2_:§"H§ = null;
         if(this.§>!N§.length < this.§-g§)
         {
            return true;
         }
         var _loc1_:int = this.§>!N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>!N§[_loc1_];
            if(_loc2_.§2!e§ <= 0)
            {
               _loc2_.§^§();
            }
            _loc1_--;
         }
         return this.§>!N§.length < this.§-g§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §"H§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§=!`§;
         }
         else
         {
            volume *= this.§=!`§;
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
         var sndEffect:§"H§ = new §"H§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§-!7§);
         if(this.§3§ == 0)
         {
            sndEffect.§0t§();
         }
         this.§>!N§.push(sndEffect);
         return sndEffect;
      }
      
      private function §-!7§(param1:Event) : void
      {
         var _loc3_:Vector.<§"H§> = null;
         var _loc4_:§"H§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§"H§ = §"H§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§-!7§);
         if(this.§>!N§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§>!N§.splice(this.§>!N§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §6!L§() : Boolean
      {
         return this.§>!N§.length > 0;
      }
      
      public function §>!R§() : void
      {
         var _loc1_:§"H§ = null;
         while(this.§>!N§.length > 0)
         {
            _loc1_ = this.§>!N§[0];
            _loc1_.§^§();
         }
      }
      
      public function §#!e§() : void
      {
         var _loc1_:§"H§ = null;
         this.§3§ = 0;
         for each(_loc1_ in this.§>!N§)
         {
            _loc1_.§0t§();
         }
      }
      
      public function §^!_§() : void
      {
         var _loc1_:§"H§ = null;
         this.§3§ = this.§=!`§;
         for each(_loc1_ in this.§>!N§)
         {
            _loc1_.§;"G§();
         }
      }
      
      public function §-"+§(param1:String) : §"H§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!N§.length)
         {
            if(§"H§(this.§>!N§[_loc2_]).id == param1)
            {
               return §"H§(this.§>!N§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
