package §="2§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §4!5§ extends EventDispatcher
   {
      
      public static const §0!P§:String = "onSoundEnded";
      
      private static const §'#9§:int = 500;
       
      
      private var §]!U§:SoundChannel;
      
      private var §6##§:String;
      
      private var §4!=§:Number;
      
      private var §<O§:Boolean;
      
      private var §;c§:Number = 0.0;
      
      private var §>!Q§:Number = 0;
      
      public function §4!5§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§]!U§ = param1;
         this.§6##§ = param2;
         this.§]!U§.addEventListener(Event.SOUND_COMPLETE,this.§<"y§);
         this.§4!=§ = param1.soundTransform.volume;
         this.§<O§ = false;
         this.§;c§ = param3;
         this.§>!Q§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§4!=§ = param1;
         if(!this.§<O§)
         {
            this.§`u§(this.§4!=§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§4!=§;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §&"@§() : Number
      {
         var _loc1_:Number = this.§]!U§.position;
         var _loc2_:int = getTimer() - this.§>!Q§;
         if(_loc1_ < _loc2_ - §'#9§)
         {
            _loc1_ = _loc2_ - §'#9§;
         }
         return _loc1_;
      }
      
      public function get §,?§() : Number
      {
         return this.§;c§;
      }
      
      public function get §3"o§() : Number
      {
         return this.§,?§ - this.§&"@§;
      }
      
      private function §<"y§(param1:Event, param2:Boolean = false) : void
      {
         if(this.§]!U§)
         {
            this.§]!U§.removeEventListener(Event.SOUND_COMPLETE,this.§<"y§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§0!P§));
         }
      }
      
      private function §`u§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§]!U§.soundTransform;
         _loc2_.volume = param1;
         this.§]!U§.soundTransform = _loc2_;
      }
      
      public function §!"^§() : void
      {
         this.stop();
         this.§<"y§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§]!U§)
         {
            this.§]!U§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§]!U§.removeEventListener(Event.SOUND_COMPLETE,this.§<"y§);
         this.§]!U§ = null;
      }
      
      public function §^"w§() : void
      {
         if(this.§]!U§)
         {
            this.§`u§(0);
            this.§<O§ = true;
         }
      }
      
      public function §<#D§() : void
      {
         if(this.§]!U§)
         {
            this.§`u§(this.§4!=§);
            this.§<O§ = false;
         }
      }
   }
}
