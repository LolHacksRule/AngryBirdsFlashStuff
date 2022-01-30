package §>Z§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §??§ extends EventDispatcher
   {
       
      
      private var §%E§:SoundChannel;
      
      private var §0!d§:String;
      
      private var §'o§:Number;
      
      private var §^""§:Boolean;
      
      public function §??§(param1:SoundChannel, param2:String)
      {
         super();
         this.§%E§ = param1;
         this.§0!d§ = param2;
         this.§%E§.addEventListener(Event.SOUND_COMPLETE,this.§%"<§);
         this.§'o§ = param1.soundTransform.volume;
         this.§^""§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§'o§ = param1;
         if(!this.§^""§)
         {
            this.§'-§(this.§'o§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§'o§;
      }
      
      public function get id() : String
      {
         return this.§0!d§;
      }
      
      public function get position() : Number
      {
         return this.§%E§.position;
      }
      
      private function §%"<§(param1:Event) : void
      {
         this.§%E§.removeEventListener(Event.SOUND_COMPLETE,this.§%"<§);
         dispatchEvent(param1);
      }
      
      private function §'-§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§%E§.soundTransform;
         _loc2_.volume = param1;
         this.§%E§.soundTransform = _loc2_;
      }
      
      public function §]§() : void
      {
         this.stop();
         this.§%"<§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§%E§)
         {
            this.§%E§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§%E§.removeEventListener(Event.SOUND_COMPLETE,this.§%"<§);
         this.§%E§ = null;
      }
      
      public function §0b§() : void
      {
         if(this.§%E§)
         {
            this.§'-§(0);
            this.§^""§ = true;
         }
      }
      
      public function §4f§() : void
      {
         if(this.§%E§)
         {
            this.§'-§(this.§'o§);
            this.§^""§ = false;
         }
      }
   }
}
