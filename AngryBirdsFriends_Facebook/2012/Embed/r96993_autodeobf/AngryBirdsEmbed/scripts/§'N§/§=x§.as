package §'N§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=x§
   {
       
      
      private var §6j§:SoundChannel;
      
      private var §6!,§:Function;
      
      private var §7s§:Function;
      
      private var §7>§:Number;
      
      public function §=x§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§6j§ = param1;
         this.§6!,§ = param2;
         this.§7s§ = param3;
         this.§6j§.addEventListener(Event.SOUND_COMPLETE,this.§0A§);
         this.§7>§ = param1.soundTransform.volume;
      }
      
      private function §0A§(param1:Event) : void
      {
         this.§6j§.removeEventListener(Event.SOUND_COMPLETE,this.§0A§);
         if(this.§7s§ != null)
         {
            this.§7s§.call();
            this.§7s§ = null;
         }
         if(this.§6!,§ != null)
         {
            this.§6!,§.call(null,this);
            this.§6!,§ = null;
         }
      }
      
      public function §,&§() : void
      {
         this.§0A§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§6j§)
         {
            this.§6j§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§6j§.removeEventListener(Event.SOUND_COMPLETE,this.§0A§);
         this.§6j§ = null;
      }
      
      public function §0!7§() : void
      {
         if(this.§6j§)
         {
            this.§6j§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §7F§() : void
      {
         if(this.§6j§)
         {
            this.§6j§.soundTransform = new SoundTransform(this.§7>§);
         }
      }
   }
}
