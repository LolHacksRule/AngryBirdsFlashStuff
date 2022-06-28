package §"R§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §`a§
   {
       
      
      private var §'§:SoundChannel;
      
      private var §<i§:Function;
      
      private var §",§:Function;
      
      private var §1P§:Number;
      
      public function §`a§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§'§ = param1;
         this.§<i§ = param2;
         this.§",§ = param3;
         this.§'§.addEventListener(Event.SOUND_COMPLETE,this.§'!3§);
         this.§1P§ = param1.soundTransform.volume;
      }
      
      private function §'!3§(param1:Event) : void
      {
         this.§'§.removeEventListener(Event.SOUND_COMPLETE,this.§'!3§);
         if(this.§",§ != null)
         {
            this.§",§.call();
            this.§",§ = null;
         }
         if(this.§<i§ != null)
         {
            this.§<i§.call(null,this);
            this.§<i§ = null;
         }
      }
      
      public function §<@§() : void
      {
         this.§'!3§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§'§)
         {
            this.§'§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§'§.removeEventListener(Event.SOUND_COMPLETE,this.§'!3§);
         this.§'§ = null;
      }
      
      public function §2!M§() : void
      {
         if(this.§'§)
         {
            this.§'§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §<!x§() : void
      {
         if(this.§'§)
         {
            this.§'§.soundTransform = new SoundTransform(this.§1P§);
         }
      }
   }
}
