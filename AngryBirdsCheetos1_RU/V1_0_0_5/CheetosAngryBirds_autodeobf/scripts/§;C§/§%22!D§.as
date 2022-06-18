package §;C§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §"!D§ extends EventDispatcher
   {
       
      
      private var §1F§:SoundChannel;
      
      private var §;[§:String;
      
      private var §#! §:Number;
      
      private var §#a§:Boolean;
      
      public function §"!D§(param1:SoundChannel, param2:String)
      {
         super();
         this.§1F§ = param1;
         this.§;[§ = param2;
         this.§1F§.addEventListener(Event.SOUND_COMPLETE,this.§0!>§);
         this.§#! § = param1.soundTransform.volume;
         this.§#a§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§#! § = param1;
         if(!this.§#a§)
         {
            this.§ !=§(this.§#! §);
         }
      }
      
      public function get volume() : Number
      {
         return this.§#! §;
      }
      
      public function get id() : String
      {
         return this.§;[§;
      }
      
      public function get position() : Number
      {
         return this.§1F§.position;
      }
      
      private function §0!>§(param1:Event) : void
      {
         this.§1F§.removeEventListener(Event.SOUND_COMPLETE,this.§0!>§);
         dispatchEvent(param1);
      }
      
      private function § !=§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§1F§.soundTransform;
         _loc2_.volume = param1;
         this.§1F§.soundTransform = _loc2_;
      }
      
      public function §^!U§() : void
      {
         this.§0!>§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§1F§)
         {
            this.§1F§.stop();
         }
      }
      
      public function §'s§() : void
      {
         this.stop();
         this.§1F§.removeEventListener(Event.SOUND_COMPLETE,this.§0!>§);
         this.§1F§ = null;
      }
      
      public function §]V§() : void
      {
         if(this.§1F§)
         {
            this.§ !=§(0);
            this.§#a§ = true;
         }
      }
      
      public function §9!$§() : void
      {
         if(this.§1F§)
         {
            this.§ !=§(this.§#! §);
            this.§#a§ = false;
         }
      }
   }
}
