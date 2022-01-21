package §?!g§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-!B§ extends EventDispatcher
   {
       
      
      private var §@P§:SoundChannel;
      
      private var §,[§:String;
      
      private var §=A§:Number;
      
      private var § !W§:Boolean;
      
      public function §-!B§(param1:SoundChannel, param2:String)
      {
         super();
         this.§@P§ = param1;
         this.§,[§ = param2;
         this.§@P§.addEventListener(Event.SOUND_COMPLETE,this.§&d§);
         this.§=A§ = param1.soundTransform.volume;
         this.§ !W§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§=A§ = param1;
         if(!this.§ !W§)
         {
            this.§4!R§(this.§=A§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§=A§;
      }
      
      public function get id() : String
      {
         return this.§,[§;
      }
      
      public function get position() : Number
      {
         return this.§@P§.position;
      }
      
      private function §&d§(param1:Event) : void
      {
         this.§@P§.removeEventListener(Event.SOUND_COMPLETE,this.§&d§);
         dispatchEvent(param1);
      }
      
      private function §4!R§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§@P§.soundTransform;
         _loc2_.volume = param1;
         this.§@P§.soundTransform = _loc2_;
      }
      
      public function §?V§() : void
      {
         this.stop();
         this.§&d§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@P§)
         {
            this.§@P§.stop();
         }
      }
      
      public function §@@§() : void
      {
         this.stop();
         this.§@P§.removeEventListener(Event.SOUND_COMPLETE,this.§&d§);
         this.§@P§ = null;
      }
      
      public function §7!f§() : void
      {
         if(this.§@P§)
         {
            this.§4!R§(0);
            this.§ !W§ = true;
         }
      }
      
      public function §8F§() : void
      {
         if(this.§@P§)
         {
            this.§4!R§(this.§=A§);
            this.§ !W§ = false;
         }
      }
   }
}
