package §;s§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §3q§ extends EventDispatcher
   {
      
      private static const §+L§:int = 500;
       
      
      private var §;",§:SoundChannel;
      
      private var §=H§:String;
      
      private var §''§:Number;
      
      private var §%!%§:Boolean;
      
      private var §%!-§:Number = 0.0;
      
      private var § !;§:Number = 0;
      
      public function §3q§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§;",§ = param1;
         this.§=H§ = param2;
         this.§;",§.addEventListener(Event.SOUND_COMPLETE,this.§;g§);
         this.§''§ = param1.soundTransform.volume;
         this.§%!%§ = false;
         this.§%!-§ = param3;
         this.§ !;§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§''§ = param1;
         if(!this.§%!%§)
         {
            this.§[!;§(this.§''§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§''§;
      }
      
      public function get id() : String
      {
         return this.§=H§;
      }
      
      public function get §,!@§() : Number
      {
         var _loc1_:Number = this.§;",§.position;
         var _loc2_:int = getTimer() - this.§ !;§;
         if(_loc1_ < _loc2_ - §+L§)
         {
            _loc1_ = _loc2_ - §+L§;
         }
         return _loc1_;
      }
      
      public function get §0!k§() : Number
      {
         return this.§%!-§;
      }
      
      public function get §@!7§() : Number
      {
         return this.§0!k§ - this.§,!@§;
      }
      
      private function §;g§(param1:Event) : void
      {
         if(this.§;",§)
         {
            this.§;",§.removeEventListener(Event.SOUND_COMPLETE,this.§;g§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §[!;§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§;",§.soundTransform;
         _loc2_.volume = param1;
         this.§;",§.soundTransform = _loc2_;
      }
      
      public function §9!'§() : void
      {
         this.stop();
         this.§;g§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§;",§)
         {
            this.§;",§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§;",§.removeEventListener(Event.SOUND_COMPLETE,this.§;g§);
         this.§;",§ = null;
      }
      
      public function §=!0§() : void
      {
         if(this.§;",§)
         {
            this.§[!;§(0);
            this.§%!%§ = true;
         }
      }
      
      public function §>!7§() : void
      {
         if(this.§;",§)
         {
            this.§[!;§(this.§''§);
            this.§%!%§ = false;
         }
      }
   }
}
