package §_-am§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §_-IP§
   {
       
      
      private var §_-mN§:SoundChannel;
      
      private var §each §:Function;
      
      public function §_-IP§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-mN§ = param1;
         this.§each § = param2;
         this.§_-mN§.addEventListener(Event.SOUND_COMPLETE,this.§_-c§);
      }
      
      private function §_-c§(param1:Event) : void
      {
         this.§_-mN§.removeEventListener(Event.SOUND_COMPLETE,this.§_-c§);
         if(this.§each § != null)
         {
            this.§each §.call(null,this);
            this.§each § = null;
         }
      }
      
      public function §_-dX§() : void
      {
         this.§_-c§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get §_-rr§() : SoundChannel
      {
         return this.§_-mN§;
      }
      
      public function §_-OB§() : void
      {
         this.§_-mN§.removeEventListener(Event.SOUND_COMPLETE,this.§_-c§);
         this.§_-mN§ = null;
      }
   }
}
