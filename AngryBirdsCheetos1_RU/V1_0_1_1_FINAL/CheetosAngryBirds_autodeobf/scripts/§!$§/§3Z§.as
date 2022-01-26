package §!$§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §3Z§ extends EventDispatcher
   {
       
      
      private var §^Y§:SoundChannel;
      
      private var §`9§:String;
      
      private var §'!#§:Number;
      
      private var §2W§:Boolean;
      
      public function §3Z§(param1:SoundChannel, param2:String)
      {
         super();
         this.§^Y§ = param1;
         this.§`9§ = param2;
         this.§^Y§.addEventListener(Event.SOUND_COMPLETE,this.§^A§);
         this.§'!#§ = param1.soundTransform.volume;
         this.§2W§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§'!#§ = param1;
         if(!this.§2W§)
         {
            this.§+]§(this.§'!#§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§'!#§;
      }
      
      public function get id() : String
      {
         return this.§`9§;
      }
      
      public function get position() : Number
      {
         return this.§^Y§.position;
      }
      
      private function §^A§(param1:Event) : void
      {
         this.§^Y§.removeEventListener(Event.SOUND_COMPLETE,this.§^A§);
         dispatchEvent(param1);
      }
      
      private function §+]§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§^Y§.soundTransform;
         _loc2_.volume = param1;
         this.§^Y§.soundTransform = _loc2_;
      }
      
      public function §?!R§() : void
      {
         this.stop();
         this.§^A§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^Y§)
         {
            this.§^Y§.stop();
         }
      }
      
      public function §[!8§() : void
      {
         this.stop();
         this.§^Y§.removeEventListener(Event.SOUND_COMPLETE,this.§^A§);
         this.§^Y§ = null;
      }
      
      public function §?]§() : void
      {
         if(this.§^Y§)
         {
            this.§+]§(0);
            this.§2W§ = true;
         }
      }
      
      public function §9!3§() : void
      {
         if(this.§^Y§)
         {
            this.§+]§(this.§'!#§);
            this.§2W§ = false;
         }
      }
   }
}
