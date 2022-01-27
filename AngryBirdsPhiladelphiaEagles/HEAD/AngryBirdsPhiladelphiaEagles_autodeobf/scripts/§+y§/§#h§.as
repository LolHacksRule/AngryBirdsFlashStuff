package §+y§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §#h§ extends EventDispatcher
   {
       
      
      private var §+!$§:SoundChannel;
      
      private var §7W§:String;
      
      private var §4p§:Number;
      
      private var §<!"§:Boolean;
      
      public function §#h§(param1:SoundChannel, param2:String)
      {
         super();
         this.§+!$§ = param1;
         this.§7W§ = param2;
         this.§+!$§.addEventListener(Event.SOUND_COMPLETE,this.§=!5§);
         this.§4p§ = param1.soundTransform.volume;
         this.§<!"§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§4p§ = param1;
         if(!this.§<!"§)
         {
            this.§ !0§(this.§4p§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§4p§;
      }
      
      public function get id() : String
      {
         return this.§7W§;
      }
      
      public function get position() : Number
      {
         return this.§+!$§.position;
      }
      
      private function §=!5§(param1:Event) : void
      {
         this.§+!$§.removeEventListener(Event.SOUND_COMPLETE,this.§=!5§);
         dispatchEvent(param1);
      }
      
      private function § !0§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§+!$§.soundTransform;
         _loc2_.volume = param1;
         this.§+!$§.soundTransform = _loc2_;
      }
      
      public function §2e§() : void
      {
         this.stop();
         this.§=!5§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§+!$§)
         {
            this.§+!$§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§+!$§.removeEventListener(Event.SOUND_COMPLETE,this.§=!5§);
         this.§+!$§ = null;
      }
      
      public function §-!C§() : void
      {
         if(this.§+!$§)
         {
            this.§ !0§(0);
            this.§<!"§ = true;
         }
      }
      
      public function §;O§() : void
      {
         if(this.§+!$§)
         {
            this.§ !0§(this.§4p§);
            this.§<!"§ = false;
         }
      }
   }
}
