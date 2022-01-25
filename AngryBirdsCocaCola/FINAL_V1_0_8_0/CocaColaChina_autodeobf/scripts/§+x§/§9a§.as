package §+x§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §9a§ extends EventDispatcher
   {
       
      
      private var §1<§:SoundChannel;
      
      private var §9!'§:String;
      
      private var §`i§:Number;
      
      private var §+2§:Boolean;
      
      public function §9a§(param1:SoundChannel, param2:String)
      {
         super();
         this.§1<§ = param1;
         this.§9!'§ = param2;
         this.§1<§.addEventListener(Event.SOUND_COMPLETE,this.§#![§);
         this.§`i§ = param1.soundTransform.volume;
         this.§+2§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§`i§ = param1;
         if(!this.§+2§)
         {
            this.§'!'§(this.§`i§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§`i§;
      }
      
      public function get id() : String
      {
         return this.§9!'§;
      }
      
      public function get position() : Number
      {
         return this.§1<§.position;
      }
      
      private function §#![§(param1:Event) : void
      {
         this.§1<§.removeEventListener(Event.SOUND_COMPLETE,this.§#![§);
         dispatchEvent(param1);
      }
      
      private function §'!'§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§1<§.soundTransform;
         _loc2_.volume = param1;
         this.§1<§.soundTransform = _loc2_;
      }
      
      public function §&!#§() : void
      {
         this.stop();
         this.§#![§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§1<§)
         {
            this.§1<§.stop();
         }
      }
      
      public function §7!E§() : void
      {
         this.stop();
         this.§1<§.removeEventListener(Event.SOUND_COMPLETE,this.§#![§);
         this.§1<§ = null;
      }
      
      public function §]!>§() : void
      {
         if(this.§1<§)
         {
            this.§'!'§(0);
            this.§+2§ = true;
         }
      }
      
      public function §8Y§() : void
      {
         if(this.§1<§)
         {
            this.§'!'§(this.§`i§);
            this.§+2§ = false;
         }
      }
   }
}
