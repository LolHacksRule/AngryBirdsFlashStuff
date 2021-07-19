package §1T§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §8!Q§ extends EventDispatcher
   {
      
      private static const §,!r§:int = 500;
       
      
      private var §@C§:SoundChannel;
      
      private var §>6§:String;
      
      private var §'!7§:Number;
      
      private var §6+§:Boolean;
      
      private var §4;§:Number = 0.0;
      
      private var §8j§:Number = 0;
      
      public function §8!Q§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§@C§ = param1;
         this.§>6§ = param2;
         this.§@C§.addEventListener(Event.SOUND_COMPLETE,this.§2!7§);
         this.§'!7§ = param1.soundTransform.volume;
         this.§6+§ = false;
         this.§4;§ = param3;
         this.§8j§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§'!7§ = param1;
         if(!this.§6+§)
         {
            this.§1!4§(this.§'!7§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§'!7§;
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function get §0F§() : Number
      {
         var _loc1_:Number = this.§@C§.position;
         var _loc2_:int = getTimer() - this.§8j§;
         if(_loc1_ < _loc2_ - §,!r§)
         {
            _loc1_ = _loc2_ - §,!r§;
         }
         return _loc1_;
      }
      
      public function get §%!L§() : Number
      {
         return this.§4;§;
      }
      
      public function get §1!n§() : Number
      {
         return this.§%!L§ - this.§0F§;
      }
      
      private function §2!7§(param1:Event) : void
      {
         if(this.§@C§)
         {
            this.§@C§.removeEventListener(Event.SOUND_COMPLETE,this.§2!7§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §1!4§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§@C§.soundTransform;
         _loc2_.volume = param1;
         this.§@C§.soundTransform = _loc2_;
      }
      
      public function §>!C§() : void
      {
         this.stop();
         this.§2!7§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@C§)
         {
            this.§@C§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§@C§.removeEventListener(Event.SOUND_COMPLETE,this.§2!7§);
         this.§@C§ = null;
      }
      
      public function §;Y§() : void
      {
         if(this.§@C§)
         {
            this.§1!4§(0);
            this.§6+§ = true;
         }
      }
      
      public function §>!K§() : void
      {
         if(this.§@C§)
         {
            this.§1!4§(this.§'!7§);
            this.§6+§ = false;
         }
      }
   }
}
