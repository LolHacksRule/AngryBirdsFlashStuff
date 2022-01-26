package §_-6n§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §_-fg§
   {
       
      
      private var §_-md§:SoundChannel;
      
      private var §_-9p§:Function;
      
      public function §_-fg§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-md§ = param1;
         this.§_-9p§ = param2;
         this.§_-md§.addEventListener(Event.SOUND_COMPLETE,this.§_-ph§);
      }
      
      private function §_-ph§(param1:Event) : void
      {
         this.§_-md§.removeEventListener(Event.SOUND_COMPLETE,this.§_-ph§);
         if(this.§_-9p§ != null)
         {
            this.§_-9p§.call(null,this);
            this.§_-9p§ = null;
         }
      }
      
      public function §_-mS§() : void
      {
         this.§_-ph§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get §_-7F§() : SoundChannel
      {
         return this.§_-md§;
      }
      
      public function §_-op§() : void
      {
         this.§_-md§.removeEventListener(Event.SOUND_COMPLETE,this.§_-ph§);
         this.§_-md§ = null;
      }
   }
}
