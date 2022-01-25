package §=L§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]!5§
   {
       
      
      private var §7A§:SoundChannel;
      
      private var §'1§:Function;
      
      private var §,!4§:Number;
      
      public function §]!5§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§7A§ = param1;
         this.§'1§ = param2;
         this.§7A§.addEventListener(Event.SOUND_COMPLETE,this.§7V§);
         this.§,!4§ = param1.soundTransform.volume;
      }
      
      private function §7V§(param1:Event) : void
      {
         this.§7A§.removeEventListener(Event.SOUND_COMPLETE,this.§7V§);
         if(this.§'1§ != null)
         {
            this.§'1§.call(null,this);
            this.§'1§ = null;
         }
      }
      
      public function §,9§() : void
      {
         this.§7V§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§7A§)
         {
            this.§7A§.stop();
         }
      }
      
      public function §-K§() : void
      {
         this.§7A§.removeEventListener(Event.SOUND_COMPLETE,this.§7V§);
         this.§7A§ = null;
      }
      
      public function §<!-§() : void
      {
         if(this.§7A§)
         {
            this.§7A§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §2!U§() : void
      {
         if(this.§7A§)
         {
            this.§7A§.soundTransform = new SoundTransform(this.§,!4§);
         }
      }
   }
}
