package §;s§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § !y§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var § '§:int;
      
      public var §''§:Number = 1;
      
      private var §,!u§:Vector.<§3q§>;
      
      private var §1d§:Number;
      
      public function § !y§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§ '§ = param2;
         this.§''§ = param3;
         this.§1d§ = this.§''§;
         this.§,!u§ = new Vector.<§3q§>();
      }
      
      public function §7!J§() : Boolean
      {
         var _loc2_:§3q§ = null;
         if(this.§,!u§.length < this.§ '§)
         {
            return true;
         }
         var _loc1_:int = this.§,!u§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!u§[_loc1_];
            if(_loc2_.§@!7§ <= 0)
            {
               _loc2_.§9!'§();
            }
            _loc1_--;
         }
         return this.§,!u§.length < this.§ '§;
      }
      
      public function §8" §(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §3q§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§1d§;
         }
         else
         {
            volume *= this.§1d§;
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
         var sndEffect:§3q§ = new §3q§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§3!m§);
         if(this.§''§ == 0)
         {
            sndEffect.§=!0§();
         }
         this.§,!u§.push(sndEffect);
         return sndEffect;
      }
      
      private function §3!m§(param1:Event) : void
      {
         var _loc3_:Vector.<§3q§> = null;
         var _loc4_:§3q§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§3q§ = §3q§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§3!m§);
         if(this.§,!u§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§,!u§.splice(this.§,!u§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §>K§() : Boolean
      {
         return this.§,!u§.length > 0;
      }
      
      public function §0O§() : void
      {
         var _loc1_:§3q§ = null;
         while(this.§,!u§.length > 0)
         {
            _loc1_ = this.§,!u§[0];
            _loc1_.§9!'§();
         }
      }
      
      public function §'!_§() : void
      {
         var _loc1_:§3q§ = null;
         this.§''§ = 0;
         for each(_loc1_ in this.§,!u§)
         {
            _loc1_.§=!0§();
         }
      }
      
      public function §%3§() : void
      {
         var _loc1_:§3q§ = null;
         this.§''§ = this.§1d§;
         for each(_loc1_ in this.§,!u§)
         {
            _loc1_.§>!7§();
         }
      }
      
      public function §58§(param1:String) : §3q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!u§.length)
         {
            if(§3q§(this.§,!u§[_loc2_]).id == param1)
            {
               return §3q§(this.§,!u§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
