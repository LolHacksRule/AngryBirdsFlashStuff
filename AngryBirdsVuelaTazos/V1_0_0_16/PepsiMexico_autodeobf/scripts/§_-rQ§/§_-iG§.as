package §_-rQ§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §_-iG§
   {
       
      
      private var §_-Yu§:SoundChannel;
      
      private var §_-T2§:Function;
      
      public function §_-iG§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-Yu§ = param1;
         this.§_-T2§ = param2;
         this.§_-Yu§.addEventListener(Event.SOUND_COMPLETE,this.§_-cE§);
      }
      
      private function §_-cE§(param1:Event) : void
      {
         this.§_-Yu§.removeEventListener(Event.SOUND_COMPLETE,this.§_-cE§);
         if(this.§_-T2§ != null)
         {
            this.§_-T2§.call(null,this);
            this.§_-T2§ = null;
         }
      }
      
      public function §_-py§() : void
      {
         this.§_-cE§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get §_-D8§() : SoundChannel
      {
         return this.§_-Yu§;
      }
      
      public function §_-g0§() : void
      {
         this.§_-Yu§.removeEventListener(Event.SOUND_COMPLETE,this.§_-cE§);
         this.§_-Yu§ = null;
      }
   }
}
