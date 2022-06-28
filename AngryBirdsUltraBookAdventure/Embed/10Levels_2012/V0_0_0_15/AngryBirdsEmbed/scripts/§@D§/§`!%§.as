package §@D§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §`!%§
   {
       
      
      private var §7^§:SoundChannel;
      
      private var §4!2§:Function;
      
      private var §;F§:Function;
      
      private var §,i§:Number;
      
      public function §`!%§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§7^§ = param1;
         this.§4!2§ = param2;
         this.§;F§ = param3;
         this.§7^§.addEventListener(Event.SOUND_COMPLETE,this.§,x§);
         this.§,i§ = param1.soundTransform.volume;
      }
      
      private function §,x§(param1:Event) : void
      {
         this.§7^§.removeEventListener(Event.SOUND_COMPLETE,this.§,x§);
         if(this.§;F§ != null)
         {
            this.§;F§.call();
            this.§;F§ = null;
         }
         if(this.§4!2§ != null)
         {
            this.§4!2§.call(null,this);
            this.§4!2§ = null;
         }
      }
      
      public function §0+§() : void
      {
         this.§,x§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§7^§)
         {
            this.§7^§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§7^§.removeEventListener(Event.SOUND_COMPLETE,this.§,x§);
         this.§7^§ = null;
      }
      
      public function §2I§() : void
      {
         if(this.§7^§)
         {
            this.§7^§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §5!,§() : void
      {
         if(this.§7^§)
         {
            this.§7^§.soundTransform = new SoundTransform(this.§,i§);
         }
      }
   }
}
