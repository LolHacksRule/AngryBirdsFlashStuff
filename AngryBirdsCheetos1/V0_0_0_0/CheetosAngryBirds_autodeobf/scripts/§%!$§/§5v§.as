package §%!$§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5v§
   {
       
      
      private var §>!!§:SoundChannel;
      
      private var §"!W§:Function;
      
      private var §-C§:Number;
      
      public function §5v§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§>!!§ = param1;
         this.§"!W§ = param2;
         this.§>!!§.addEventListener(Event.SOUND_COMPLETE,this.§-!5§);
         this.§-C§ = param1.soundTransform.volume;
      }
      
      private function §-!5§(param1:Event) : void
      {
         this.§>!!§.removeEventListener(Event.SOUND_COMPLETE,this.§-!5§);
         if(this.§"!W§ != null)
         {
            this.§"!W§.call(null,this);
            this.§"!W§ = null;
         }
      }
      
      public function §?!!§() : void
      {
         this.§-!5§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§>!!§)
         {
            this.§>!!§.stop();
         }
      }
      
      public function §1W§() : void
      {
         this.§>!!§.removeEventListener(Event.SOUND_COMPLETE,this.§-!5§);
         this.§>!!§ = null;
      }
      
      public function §#d§() : void
      {
         if(this.§>!!§)
         {
            this.§>!!§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function § W§() : void
      {
         if(this.§>!!§)
         {
            this.§>!!§.soundTransform = new SoundTransform(this.§-C§);
         }
      }
   }
}
