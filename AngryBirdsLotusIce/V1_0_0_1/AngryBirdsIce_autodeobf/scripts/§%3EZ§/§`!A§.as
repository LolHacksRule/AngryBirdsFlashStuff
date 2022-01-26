package §>Z§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §`!A§
   {
       
      
      private var §<!;§:SoundChannel;
      
      private var §^!0§:Function;
      
      private var §];§:Number;
      
      public function §`!A§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§<!;§ = param1;
         this.§^!0§ = param2;
         this.§<!;§.addEventListener(Event.SOUND_COMPLETE,this.§1!>§);
         this.§];§ = param1.soundTransform.volume;
      }
      
      private function §1!>§(param1:Event) : void
      {
         this.§<!;§.removeEventListener(Event.SOUND_COMPLETE,this.§1!>§);
         if(this.§^!0§ != null)
         {
            this.§^!0§.call(null,this);
            this.§^!0§ = null;
         }
      }
      
      public function §>l§() : void
      {
         this.§1!>§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§<!;§)
         {
            this.§<!;§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§<!;§.removeEventListener(Event.SOUND_COMPLETE,this.§1!>§);
         this.§<!;§ = null;
      }
      
      public function §@%§() : void
      {
         if(this.§<!;§)
         {
            this.§<!;§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §2g§() : void
      {
         if(this.§<!;§)
         {
            this.§<!;§.soundTransform = new SoundTransform(this.§];§);
         }
      }
   }
}
