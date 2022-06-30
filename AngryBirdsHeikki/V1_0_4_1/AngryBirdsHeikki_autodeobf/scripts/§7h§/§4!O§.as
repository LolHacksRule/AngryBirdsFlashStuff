package §7h§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4!O§
   {
       
      
      private var §^W§:SoundChannel;
      
      private var §3!7§:Function;
      
      private var §%!%§:Function;
      
      private var §]!=§:Number;
      
      public function §4!O§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§^W§ = param1;
         this.§3!7§ = param2;
         this.§%!%§ = param3;
         this.§^W§.addEventListener(Event.SOUND_COMPLETE,this.§3J§);
         this.§]!=§ = param1.soundTransform.volume;
      }
      
      private function §3J§(param1:Event) : void
      {
         this.§^W§.removeEventListener(Event.SOUND_COMPLETE,this.§3J§);
         if(this.§%!%§ != null)
         {
            this.§%!%§.call();
            this.§%!%§ = null;
         }
         if(this.§3!7§ != null)
         {
            this.§3!7§.call(null,this);
            this.§3!7§ = null;
         }
      }
      
      public function §'!2§() : void
      {
         this.§3J§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^W§)
         {
            this.§^W§.stop();
         }
      }
      
      public function § q§() : void
      {
         this.§^W§.removeEventListener(Event.SOUND_COMPLETE,this.§3J§);
         this.§^W§ = null;
      }
      
      public function §!!K§() : void
      {
         if(this.§^W§)
         {
            this.§^W§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §?!$§() : void
      {
         if(this.§^W§)
         {
            this.§^W§.soundTransform = new SoundTransform(this.§]!=§);
         }
      }
   }
}
