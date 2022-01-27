package §#!0§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §0!7§ extends EventDispatcher
   {
       
      
      private var §9!G§:SoundChannel;
      
      private var §;!9§:String;
      
      private var §[E§:Number;
      
      private var §3!F§:Boolean;
      
      public function §0!7§(param1:SoundChannel, param2:String)
      {
         super();
         this.§9!G§ = param1;
         this.§;!9§ = param2;
         this.§9!G§.addEventListener(Event.SOUND_COMPLETE,this.§3!"§);
         this.§[E§ = param1.soundTransform.volume;
         this.§3!F§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§[E§ = param1;
         if(!this.§3!F§)
         {
            this.§@q§(this.§[E§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§[E§;
      }
      
      public function get id() : String
      {
         return this.§;!9§;
      }
      
      public function get position() : Number
      {
         return this.§9!G§.position;
      }
      
      private function §3!"§(param1:Event) : void
      {
         this.§9!G§.removeEventListener(Event.SOUND_COMPLETE,this.§3!"§);
         dispatchEvent(param1);
      }
      
      private function §@q§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§9!G§.soundTransform;
         _loc2_.volume = param1;
         this.§9!G§.soundTransform = _loc2_;
      }
      
      public function §]!1§() : void
      {
         this.stop();
         this.§3!"§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§9!G§)
         {
            this.§9!G§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§9!G§.removeEventListener(Event.SOUND_COMPLETE,this.§3!"§);
         this.§9!G§ = null;
      }
      
      public function §#B§() : void
      {
         if(this.§9!G§)
         {
            this.§@q§(0);
            this.§3!F§ = true;
         }
      }
      
      public function §=!B§() : void
      {
         if(this.§9!G§)
         {
            this.§@q§(this.§[E§);
            this.§3!F§ = false;
         }
      }
   }
}
