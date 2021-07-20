package §!!0§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §?!j§
   {
       
      
      private var §^E§:SoundChannel;
      
      private var §&!$§:Function;
      
      private var §2y§:Function;
      
      private var §-!c§:Number;
      
      public function §?!j§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§^E§ = param1;
         this.§&!$§ = param2;
         this.§2y§ = param3;
         this.§^E§.addEventListener(Event.SOUND_COMPLETE,this.§5!W§);
         this.§-!c§ = param1.soundTransform.volume;
      }
      
      private function §5!W§(param1:Event) : void
      {
         this.§^E§.removeEventListener(Event.SOUND_COMPLETE,this.§5!W§);
         if(this.§2y§ != null)
         {
            this.§2y§.call();
            this.§2y§ = null;
         }
         if(this.§&!$§ != null)
         {
            this.§&!$§.call(null,this);
            this.§&!$§ = null;
         }
      }
      
      public function §&p§() : void
      {
         this.§5!W§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^E§)
         {
            this.§^E§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§^E§.removeEventListener(Event.SOUND_COMPLETE,this.§5!W§);
         this.§^E§ = null;
      }
      
      public function §?I§() : void
      {
         if(this.§^E§)
         {
            this.§^E§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §6!K§() : void
      {
         if(this.§^E§)
         {
            this.§^E§.soundTransform = new SoundTransform(this.§-!c§);
         }
      }
   }
}
