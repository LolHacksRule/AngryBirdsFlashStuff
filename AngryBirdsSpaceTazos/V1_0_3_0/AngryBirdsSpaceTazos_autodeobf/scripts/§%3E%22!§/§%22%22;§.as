package §>"!§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §"";§ extends EventDispatcher
   {
      
      private static const §4!m§:int = 500;
       
      
      private var §<H§:SoundChannel;
      
      private var §?I§:String;
      
      private var §@!U§:Number;
      
      private var §^"+§:Boolean;
      
      private var §"!'§:Number = 0.0;
      
      private var § N§:Number = 0;
      
      public function §"";§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§<H§ = param1;
         this.§?I§ = param2;
         this.§<H§.addEventListener(Event.SOUND_COMPLETE,this.§`U§);
         this.§@!U§ = param1.soundTransform.volume;
         this.§^"+§ = false;
         this.§"!'§ = param3;
         this.§ N§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§@!U§ = param1;
         if(!this.§^"+§)
         {
            this.§"!t§(this.§@!U§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§@!U§;
      }
      
      public function get id() : String
      {
         return this.§?I§;
      }
      
      public function get §0!2§() : Number
      {
         var _loc1_:Number = this.§<H§.position;
         var _loc2_:int = getTimer() - this.§ N§;
         if(_loc1_ < _loc2_ - §4!m§)
         {
            _loc1_ = _loc2_ - §4!m§;
         }
         return _loc1_;
      }
      
      public function get §9!#§() : Number
      {
         return this.§"!'§;
      }
      
      public function get §;!B§() : Number
      {
         return this.§9!#§ - this.§0!2§;
      }
      
      private function §`U§(param1:Event) : void
      {
         this.§<H§.removeEventListener(Event.SOUND_COMPLETE,this.§`U§);
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §"!t§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§<H§.soundTransform;
         _loc2_.volume = param1;
         this.§<H§.soundTransform = _loc2_;
      }
      
      public function §;!V§() : void
      {
         this.stop();
         this.§`U§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§<H§)
         {
            this.§<H§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§<H§.removeEventListener(Event.SOUND_COMPLETE,this.§`U§);
         this.§<H§ = null;
      }
      
      public function §9",§() : void
      {
         if(this.§<H§)
         {
            this.§"!t§(0);
            this.§^"+§ = true;
         }
      }
      
      public function §45§() : void
      {
         if(this.§<H§)
         {
            this.§"!t§(this.§@!U§);
            this.§^"+§ = false;
         }
      }
   }
}
