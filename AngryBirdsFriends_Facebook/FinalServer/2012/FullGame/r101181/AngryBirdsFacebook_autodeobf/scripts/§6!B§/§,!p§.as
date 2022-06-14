package §6!B§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!p§ extends EventDispatcher
   {
       
      
      private var §1"E§:SoundChannel;
      
      private var §;!Y§:String;
      
      private var §4a§:Number;
      
      private var §=2§:Boolean;
      
      public function §,!p§(param1:SoundChannel, param2:String)
      {
         super();
         this.§1"E§ = param1;
         this.§;!Y§ = param2;
         this.§1"E§.addEventListener(Event.SOUND_COMPLETE,this.§0!U§);
         this.§4a§ = param1.soundTransform.volume;
         this.§=2§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§4a§ = param1;
         if(!this.§=2§)
         {
            this.§2"§(this.§4a§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§4a§;
      }
      
      public function get id() : String
      {
         return this.§;!Y§;
      }
      
      public function get position() : Number
      {
         return this.§1"E§.position;
      }
      
      private function §0!U§(param1:Event) : void
      {
         this.§1"E§.removeEventListener(Event.SOUND_COMPLETE,this.§0!U§);
         dispatchEvent(param1);
      }
      
      private function §2"§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§1"E§.soundTransform;
         _loc2_.volume = param1;
         this.§1"E§.soundTransform = _loc2_;
      }
      
      public function §9!S§() : void
      {
         this.stop();
         this.§0!U§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§1"E§)
         {
            this.§1"E§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§1"E§.removeEventListener(Event.SOUND_COMPLETE,this.§0!U§);
         this.§1"E§ = null;
      }
      
      public function §@^§() : void
      {
         if(this.§1"E§)
         {
            this.§2"§(0);
            this.§=2§ = true;
         }
      }
      
      public function §3!<§() : void
      {
         if(this.§1"E§)
         {
            this.§2"§(this.§4a§);
            this.§=2§ = false;
         }
      }
   }
}
