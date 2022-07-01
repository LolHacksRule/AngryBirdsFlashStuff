package §1?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §#!C§
   {
       
      
      private var §^!"§:SoundChannel;
      
      private var §,!Z§:Function;
      
      private var §&!5§:Number;
      
      public function §#!C§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§^!"§ = param1;
         this.§,!Z§ = param2;
         this.§^!"§.addEventListener(Event.SOUND_COMPLETE,this.§;!2§);
         this.§&!5§ = param1.soundTransform.volume;
      }
      
      private function §;!2§(param1:Event) : void
      {
         this.§^!"§.removeEventListener(Event.SOUND_COMPLETE,this.§;!2§);
         if(this.§,!Z§ != null)
         {
            this.§,!Z§.call(null,this);
            this.§,!Z§ = null;
         }
      }
      
      public function §[s§() : void
      {
         this.§;!2§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^!"§)
         {
            this.§^!"§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§^!"§.removeEventListener(Event.SOUND_COMPLETE,this.§;!2§);
         this.§^!"§ = null;
      }
      
      public function §<!>§() : void
      {
         if(this.§^!"§)
         {
            this.§^!"§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §6h§() : void
      {
         if(this.§^!"§)
         {
            this.§^!"§.soundTransform = new SoundTransform(this.§&!5§);
         }
      }
   }
}
