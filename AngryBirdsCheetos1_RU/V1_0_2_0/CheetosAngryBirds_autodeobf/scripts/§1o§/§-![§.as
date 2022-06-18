package §1o§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-![§ extends EventDispatcher
   {
       
      
      private var §'!;§:SoundChannel;
      
      private var §`m§:String;
      
      private var §]!E§:Number;
      
      private var §^!_§:Boolean;
      
      public function §-![§(param1:SoundChannel, param2:String)
      {
         super();
         this.§'!;§ = param1;
         this.§`m§ = param2;
         this.§'!;§.addEventListener(Event.SOUND_COMPLETE,this.§'!"§);
         this.§]!E§ = param1.soundTransform.volume;
         this.§^!_§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§]!E§ = param1;
         if(!this.§^!_§)
         {
            this.§=1§(this.§]!E§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§]!E§;
      }
      
      public function get id() : String
      {
         return this.§`m§;
      }
      
      public function get position() : Number
      {
         return this.§'!;§.position;
      }
      
      private function §'!"§(param1:Event) : void
      {
         this.§'!;§.removeEventListener(Event.SOUND_COMPLETE,this.§'!"§);
         dispatchEvent(param1);
      }
      
      private function §=1§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§'!;§.soundTransform;
         _loc2_.volume = param1;
         this.§'!;§.soundTransform = _loc2_;
      }
      
      public function §"!=§() : void
      {
         this.stop();
         this.§'!"§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§'!;§)
         {
            this.§'!;§.stop();
         }
      }
      
      public function §0'§() : void
      {
         this.stop();
         this.§'!;§.removeEventListener(Event.SOUND_COMPLETE,this.§'!"§);
         this.§'!;§ = null;
      }
      
      public function §&!H§() : void
      {
         if(this.§'!;§)
         {
            this.§=1§(0);
            this.§^!_§ = true;
         }
      }
      
      public function §-9§() : void
      {
         if(this.§'!;§)
         {
            this.§=1§(this.§]!E§);
            this.§^!_§ = false;
         }
      }
   }
}
