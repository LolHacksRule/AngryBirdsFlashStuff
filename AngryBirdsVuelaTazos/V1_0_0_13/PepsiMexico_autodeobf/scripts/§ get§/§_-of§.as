package § get§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §_-of§
   {
       
      
      private var §_-ii§:SoundChannel;
      
      private var §_-O4§:Function;
      
      public function §_-of§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-ii§ = param1;
         this.§_-O4§ = param2;
         this.§_-ii§.addEventListener(Event.SOUND_COMPLETE,this.§_-UC§);
      }
      
      private function §_-UC§(param1:Event) : void
      {
         this.§_-ii§.removeEventListener(Event.SOUND_COMPLETE,this.§_-UC§);
         if(this.§_-O4§ != null)
         {
            this.§_-O4§.call(null,this);
            this.§_-O4§ = null;
         }
      }
      
      public function §_-pG§() : void
      {
         this.§_-UC§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get §_-fN§() : SoundChannel
      {
         return this.§_-ii§;
      }
      
      public function §_-qx§() : void
      {
         this.§_-ii§.removeEventListener(Event.SOUND_COMPLETE,this.§_-UC§);
         this.§_-ii§ = null;
      }
   }
}
