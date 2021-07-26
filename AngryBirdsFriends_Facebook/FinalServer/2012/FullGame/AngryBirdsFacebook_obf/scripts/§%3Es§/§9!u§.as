package §>s§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §9!u§ extends EventDispatcher
   {
       
      
      private var §^!#§:SoundChannel;
      
      private var §3!9§:String;
      
      private var §1"B§:Number;
      
      private var §^%§:Boolean;
      
      public function §9!u§(param1:SoundChannel, param2:String)
      {
         super();
         this.§^!#§ = param1;
         this.§3!9§ = param2;
         this.§^!#§.addEventListener(Event.SOUND_COMPLETE,this.§'Y§);
         this.§1"B§ = param1.soundTransform.volume;
         this.§^%§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§1"B§ = param1;
         if(!this.§^%§)
         {
            this.§ "6§(this.§1"B§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§1"B§;
      }
      
      public function get id() : String
      {
         return this.§3!9§;
      }
      
      public function get position() : Number
      {
         return this.§^!#§.position;
      }
      
      private function §'Y§(param1:Event) : void
      {
         this.§^!#§.removeEventListener(Event.SOUND_COMPLETE,this.§'Y§);
         dispatchEvent(param1);
      }
      
      private function § "6§(param1:Number) : void
      {
         if(this.§^!#§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§^!#§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§^!#§.soundTransform = _loc2_;
         }
      }
      
      public function § Q§() : void
      {
         this.stop();
         this.§'Y§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^!#§)
         {
            this.§^!#§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§^!#§.removeEventListener(Event.SOUND_COMPLETE,this.§'Y§);
         this.§^!#§ = null;
      }
      
      public function §;E§() : void
      {
         if(this.§^!#§)
         {
            this.§ "6§(0);
            this.§^%§ = true;
         }
      }
      
      public function §>!M§() : void
      {
         if(this.§^!#§)
         {
            this.§ "6§(this.§1"B§);
            this.§^%§ = false;
         }
      }
   }
}
