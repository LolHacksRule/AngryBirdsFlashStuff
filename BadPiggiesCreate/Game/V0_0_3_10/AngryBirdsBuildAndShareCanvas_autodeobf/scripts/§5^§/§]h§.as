package §5^§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]h§ extends EventDispatcher
   {
       
      
      private var §=!r§:SoundChannel;
      
      private var §"!m§:String;
      
      private var §&5§:Number;
      
      private var §="7§:Boolean;
      
      public function §]h§(param1:SoundChannel, param2:String)
      {
         super();
         this.§=!r§ = param1;
         this.§"!m§ = param2;
         this.§=!r§.addEventListener(Event.SOUND_COMPLETE,this.§7Q§);
         this.§&5§ = param1.soundTransform.volume;
         this.§="7§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&5§ = param1;
         if(!this.§="7§)
         {
            this.§<!_§(this.§&5§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&5§;
      }
      
      public function get id() : String
      {
         return this.§"!m§;
      }
      
      public function get position() : Number
      {
         return this.§=!r§.position;
      }
      
      private function §7Q§(param1:Event) : void
      {
         this.§=!r§.removeEventListener(Event.SOUND_COMPLETE,this.§7Q§);
         dispatchEvent(param1);
      }
      
      private function §<!_§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§=!r§.soundTransform;
         _loc2_.volume = param1;
         this.§=!r§.soundTransform = _loc2_;
      }
      
      public function §=`§() : void
      {
         this.stop();
         this.§7Q§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§=!r§)
         {
            this.§=!r§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§=!r§.removeEventListener(Event.SOUND_COMPLETE,this.§7Q§);
         this.§=!r§ = null;
      }
      
      public function §^"0§() : void
      {
         if(this.§=!r§)
         {
            this.§<!_§(0);
            this.§="7§ = true;
         }
      }
      
      public function §=;§() : void
      {
         if(this.§=!r§)
         {
            this.§<!_§(this.§&5§);
            this.§="7§ = false;
         }
      }
   }
}
