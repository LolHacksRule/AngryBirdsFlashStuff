package §2!6§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §break§
   {
       
      
      private var §5v§:SoundChannel;
      
      private var §>!!§:Function;
      
      private var §"!W§:Number;
      
      public function §break§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§5v§ = param1;
         this.§>!!§ = param2;
         this.§5v§.addEventListener(Event.SOUND_COMPLETE,this.§-C§);
         this.§"!W§ = param1.soundTransform.volume;
      }
      
      private function §-C§(param1:Event) : void
      {
         this.§5v§.removeEventListener(Event.SOUND_COMPLETE,this.§-C§);
         if(this.§>!!§ != null)
         {
            this.§>!!§.call(null,this);
            this.§>!!§ = null;
         }
      }
      
      public function §-!5§() : void
      {
         this.§-C§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§5v§)
         {
            this.§5v§.stop();
         }
      }
      
      public function §?!!§() : void
      {
         this.§5v§.removeEventListener(Event.SOUND_COMPLETE,this.§-C§);
         this.§5v§ = null;
      }
      
      public function §1W§() : void
      {
         if(this.§5v§)
         {
            this.§5v§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §#d§() : void
      {
         if(this.§5v§)
         {
            this.§5v§.soundTransform = new SoundTransform(this.§"!W§);
         }
      }
   }
}
