package §1!?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §[! §
   {
       
      
      private var §!!+§:SoundChannel;
      
      private var §,#§:Function;
      
      private var §@_§:Number;
      
      public function §[! §(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§!!+§ = param1;
         this.§,#§ = param2;
         this.§!!+§.addEventListener(Event.SOUND_COMPLETE,this.§@!9§);
         this.§@_§ = param1.soundTransform.volume;
      }
      
      private function §@!9§(param1:Event) : void
      {
         this.§!!+§.removeEventListener(Event.SOUND_COMPLETE,this.§@!9§);
         if(this.§,#§ != null)
         {
            this.§,#§.call(null,this);
            this.§,#§ = null;
         }
      }
      
      public function §"q§() : void
      {
         this.§@!9§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§!!+§)
         {
            this.§!!+§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§!!+§.removeEventListener(Event.SOUND_COMPLETE,this.§@!9§);
         this.§!!+§ = null;
      }
      
      public function §&q§() : void
      {
         if(this.§!!+§)
         {
            this.§!!+§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §?E§() : void
      {
         if(this.§!!+§)
         {
            this.§!!+§.soundTransform = new SoundTransform(this.§@_§);
         }
      }
   }
}
