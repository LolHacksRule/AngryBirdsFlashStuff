package §1k§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §'"9§ extends EventDispatcher
   {
       
      
      private var §'!Z§:SoundChannel;
      
      private var §4W§:String;
      
      private var §3N§:Number;
      
      private var §]!g§:Boolean;
      
      public function §'"9§(param1:SoundChannel, param2:String)
      {
         super();
         this.§'!Z§ = param1;
         this.§4W§ = param2;
         this.§'!Z§.addEventListener(Event.SOUND_COMPLETE,this.§!l§);
         this.§3N§ = param1.soundTransform.volume;
         this.§]!g§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§3N§ = param1;
         if(!this.§]!g§)
         {
            this.§5-§(this.§3N§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§3N§;
      }
      
      public function get id() : String
      {
         return this.§4W§;
      }
      
      public function get position() : Number
      {
         return this.§'!Z§.position;
      }
      
      private function §!l§(param1:Event) : void
      {
         this.§'!Z§.removeEventListener(Event.SOUND_COMPLETE,this.§!l§);
         dispatchEvent(param1);
      }
      
      private function §5-§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§'!Z§.soundTransform;
         _loc2_.volume = param1;
         this.§'!Z§.soundTransform = _loc2_;
      }
      
      public function §^!5§() : void
      {
         this.stop();
         this.§!l§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§'!Z§)
         {
            this.§'!Z§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§'!Z§.removeEventListener(Event.SOUND_COMPLETE,this.§!l§);
         this.§'!Z§ = null;
      }
      
      public function §-N§() : void
      {
         if(this.§'!Z§)
         {
            this.§5-§(0);
            this.§]!g§ = true;
         }
      }
      
      public function §`!3§() : void
      {
         if(this.§'!Z§)
         {
            this.§5-§(this.§3N§);
            this.§]!g§ = false;
         }
      }
   }
}
