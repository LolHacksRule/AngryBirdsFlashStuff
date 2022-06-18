package §1!8§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]f§
   {
       
      
      private var §=i§:SoundChannel;
      
      private var §0b§:Function;
      
      private var §]!3§:Number;
      
      public function §]f§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§=i§ = param1;
         this.§0b§ = param2;
         this.§=i§.addEventListener(Event.SOUND_COMPLETE,this.§^!&§);
         this.§]!3§ = param1.soundTransform.volume;
      }
      
      private function §^!&§(param1:Event) : void
      {
         this.§=i§.removeEventListener(Event.SOUND_COMPLETE,this.§^!&§);
         if(this.§0b§ != null)
         {
            this.§0b§.call(null,this);
            this.§0b§ = null;
         }
      }
      
      public function §4f§() : void
      {
         this.§^!&§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§=i§)
         {
            this.§=i§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§=i§.removeEventListener(Event.SOUND_COMPLETE,this.§^!&§);
         this.§=i§ = null;
      }
      
      public function §7#§() : void
      {
         if(this.§=i§)
         {
            this.§=i§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §'!0§() : void
      {
         if(this.§=i§)
         {
            this.§=i§.soundTransform = new SoundTransform(this.§]!3§);
         }
      }
   }
}
