package §3"#§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §3![§ extends EventDispatcher
   {
      
      private static const §]!w§:int = 500;
       
      
      private var §=!&§:SoundChannel;
      
      private var §[!o§:String;
      
      private var §8!W§:Number;
      
      private var §9"1§:Boolean;
      
      private var §3!k§:Number = 0.0;
      
      private var §"t§:Number = 0;
      
      public function §3![§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§=!&§ = param1;
         this.§[!o§ = param2;
         this.§=!&§.addEventListener(Event.SOUND_COMPLETE,this.§;!m§);
         this.§8!W§ = param1.soundTransform.volume;
         this.§9"1§ = false;
         this.§3!k§ = param3;
         this.§"t§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§8!W§ = param1;
         if(!this.§9"1§)
         {
            this.§,F§(this.§8!W§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§8!W§;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function get §implements§() : Number
      {
         var _loc1_:Number = this.§=!&§.position;
         var _loc2_:int = getTimer() - this.§"t§;
         if(_loc1_ < _loc2_ - §]!w§)
         {
            _loc1_ = _loc2_ - §]!w§;
         }
         return _loc1_;
      }
      
      public function get §@!k§() : Number
      {
         return this.§3!k§;
      }
      
      public function get §3!=§() : Number
      {
         return this.§@!k§ - this.§implements§;
      }
      
      private function §;!m§(param1:Event) : void
      {
         this.§=!&§.removeEventListener(Event.SOUND_COMPLETE,this.§;!m§);
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §,F§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§=!&§.soundTransform;
         _loc2_.volume = param1;
         this.§=!&§.soundTransform = _loc2_;
      }
      
      public function §,v§() : void
      {
         this.stop();
         this.§;!m§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§=!&§)
         {
            this.§=!&§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§=!&§.removeEventListener(Event.SOUND_COMPLETE,this.§;!m§);
         this.§=!&§ = null;
      }
      
      public function §&`§() : void
      {
         if(this.§=!&§)
         {
            this.§,F§(0);
            this.§9"1§ = true;
         }
      }
      
      public function §%I§() : void
      {
         if(this.§=!&§)
         {
            this.§,F§(this.§8!W§);
            this.§9"1§ = false;
         }
      }
   }
}
