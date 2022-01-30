package §%B§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7!9§ extends EventDispatcher
   {
       
      
      private var §+"9§:SoundChannel;
      
      private var §2!u§:String;
      
      private var §+!c§:Number;
      
      private var §+!X§:Boolean;
      
      public function §7!9§(param1:SoundChannel, param2:String)
      {
         super();
         this.§+"9§ = param1;
         this.§2!u§ = param2;
         this.§+"9§.addEventListener(Event.SOUND_COMPLETE,this.§4"9§);
         this.§+!c§ = param1.soundTransform.volume;
         this.§+!X§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§+!c§ = param1;
         if(!this.§+!X§)
         {
            this.§`!l§(this.§+!c§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§+!c§;
      }
      
      public function get id() : String
      {
         return this.§2!u§;
      }
      
      public function get position() : Number
      {
         return this.§+"9§.position;
      }
      
      private function §4"9§(param1:Event) : void
      {
         this.§+"9§.removeEventListener(Event.SOUND_COMPLETE,this.§4"9§);
         dispatchEvent(param1);
      }
      
      private function §`!l§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§+"9§.soundTransform;
         _loc2_.volume = param1;
         this.§+"9§.soundTransform = _loc2_;
      }
      
      public function §'Q§() : void
      {
         this.stop();
         this.§4"9§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§+"9§)
         {
            this.§+"9§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§+"9§.removeEventListener(Event.SOUND_COMPLETE,this.§4"9§);
         this.§+"9§ = null;
      }
      
      public function §+![§() : void
      {
         if(this.§+"9§)
         {
            this.§`!l§(0);
            this.§+!X§ = true;
         }
      }
      
      public function §9!1§() : void
      {
         if(this.§+"9§)
         {
            this.§`!l§(this.§+!c§);
            this.§+!X§ = false;
         }
      }
   }
}
