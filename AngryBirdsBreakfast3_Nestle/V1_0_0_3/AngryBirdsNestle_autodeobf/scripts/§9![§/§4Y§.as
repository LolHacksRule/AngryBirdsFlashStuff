package §9![§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §4Y§ extends EventDispatcher
   {
      
      private static const §@s§:int = 500;
       
      
      private var §7W§:SoundChannel;
      
      private var §]!U§:String;
      
      private var §2l§:Number;
      
      private var §9!N§:Boolean;
      
      private var §?e§:Number = 0.0;
      
      private var §?7§:Number = 0;
      
      public function §4Y§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§7W§ = param1;
         this.§]!U§ = param2;
         this.§7W§.addEventListener(Event.SOUND_COMPLETE,this.§<!O§);
         this.§2l§ = param1.soundTransform.volume;
         this.§9!N§ = false;
         this.§?e§ = param3;
         this.§?7§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§2l§ = param1;
         if(!this.§9!N§)
         {
            this.§,!$§(this.§2l§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§2l§;
      }
      
      public function get id() : String
      {
         return this.§]!U§;
      }
      
      public function get §#U§() : Number
      {
         var _loc1_:Number = this.§7W§.position;
         var _loc2_:int = getTimer() - this.§?7§;
         if(_loc1_ < _loc2_ - §@s§)
         {
            _loc1_ = _loc2_ - §@s§;
         }
         return _loc1_;
      }
      
      public function get §=!w§() : Number
      {
         return this.§?e§;
      }
      
      public function get §`x§() : Number
      {
         return this.§=!w§ - this.§#U§;
      }
      
      private function §<!O§(param1:Event) : void
      {
         if(this.§7W§)
         {
            this.§7W§.removeEventListener(Event.SOUND_COMPLETE,this.§<!O§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §,!$§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§7W§.soundTransform;
         _loc2_.volume = param1;
         this.§7W§.soundTransform = _loc2_;
      }
      
      public function §`"'§() : void
      {
         this.stop();
         this.§<!O§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§7W§)
         {
            this.§7W§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§7W§.removeEventListener(Event.SOUND_COMPLETE,this.§<!O§);
         this.§7W§ = null;
      }
      
      public function §%!?§() : void
      {
         if(this.§7W§)
         {
            this.§,!$§(0);
            this.§9!N§ = true;
         }
      }
      
      public function §%!B§() : void
      {
         if(this.§7W§)
         {
            this.§,!$§(this.§2l§);
            this.§9!N§ = false;
         }
      }
   }
}
