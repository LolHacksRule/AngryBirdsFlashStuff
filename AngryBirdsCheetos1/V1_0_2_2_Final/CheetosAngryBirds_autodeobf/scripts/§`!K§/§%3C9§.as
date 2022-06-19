package §`!K§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §<9§
   {
       
      
      private var §^!#§:SoundChannel;
      
      private var §,+§:Function;
      
      private var §>!S§:Number;
      
      public function §<9§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§^!#§ = param1;
         this.§,+§ = param2;
         this.§^!#§.addEventListener(Event.SOUND_COMPLETE,this.§6!;§);
         this.§>!S§ = param1.soundTransform.volume;
      }
      
      private function §6!;§(param1:Event) : void
      {
         this.§^!#§.removeEventListener(Event.SOUND_COMPLETE,this.§6!;§);
         if(this.§,+§ != null)
         {
            this.§,+§.call(null,this);
            this.§,+§ = null;
         }
      }
      
      public function §+q§() : void
      {
         this.§6!;§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^!#§)
         {
            this.§^!#§.stop();
         }
      }
      
      public function §4b§() : void
      {
         this.§^!#§.removeEventListener(Event.SOUND_COMPLETE,this.§6!;§);
         this.§^!#§ = null;
      }
      
      public function §+!;§() : void
      {
         if(this.§^!#§)
         {
            this.§^!#§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §>! §() : void
      {
         if(this.§^!#§)
         {
            this.§^!#§.soundTransform = new SoundTransform(this.§>!S§);
         }
      }
   }
}
