package §]^§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §1!K§ extends EventDispatcher
   {
       
      
      private var §!R§:SoundChannel;
      
      private var §7#§:String;
      
      private var §`!B§:Number;
      
      private var §;!%§:Boolean;
      
      public function §1!K§(param1:SoundChannel, param2:String)
      {
         super();
         this.§!R§ = param1;
         this.§7#§ = param2;
         this.§!R§.addEventListener(Event.SOUND_COMPLETE,this.§ !`§);
         this.§`!B§ = param1.soundTransform.volume;
         this.§;!%§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§`!B§ = param1;
         if(!this.§;!%§)
         {
            this.§@!h§(this.§`!B§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§`!B§;
      }
      
      public function get id() : String
      {
         return this.§7#§;
      }
      
      public function get position() : Number
      {
         return this.§!R§.position;
      }
      
      private function § !`§(param1:Event) : void
      {
         this.§!R§.removeEventListener(Event.SOUND_COMPLETE,this.§ !`§);
         dispatchEvent(param1);
      }
      
      private function §@!h§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§!R§.soundTransform;
         _loc2_.volume = param1;
         this.§!R§.soundTransform = _loc2_;
      }
      
      public function §0!K§() : void
      {
         this.stop();
         this.§ !`§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§!R§)
         {
            this.§!R§.stop();
         }
      }
      
      public function §,!'§() : void
      {
         this.stop();
         this.§!R§.removeEventListener(Event.SOUND_COMPLETE,this.§ !`§);
         this.§!R§ = null;
      }
      
      public function §@!<§() : void
      {
         if(this.§!R§)
         {
            this.§@!h§(0);
            this.§;!%§ = true;
         }
      }
      
      public function §1!]§() : void
      {
         if(this.§!R§)
         {
            this.§@!h§(this.§`!B§);
            this.§;!%§ = false;
         }
      }
   }
}
