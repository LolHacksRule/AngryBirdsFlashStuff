package §8T§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §'F§ extends EventDispatcher
   {
       
      
      private var §`!+§:SoundChannel;
      
      private var §'!3§:String;
      
      private var §9f§:Number;
      
      private var §>D§:Boolean;
      
      public function §'F§(param1:SoundChannel, param2:String)
      {
         super();
         this.§`!+§ = param1;
         this.§'!3§ = param2;
         this.§`!+§.addEventListener(Event.SOUND_COMPLETE,this.§9y§);
         this.§9f§ = param1.soundTransform.volume;
         this.§>D§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§9f§ = param1;
         if(!this.§>D§)
         {
            this.§=!&§(this.§9f§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§9f§;
      }
      
      public function get id() : String
      {
         return this.§'!3§;
      }
      
      public function get position() : Number
      {
         return this.§`!+§.position;
      }
      
      private function §9y§(param1:Event) : void
      {
         this.§`!+§.removeEventListener(Event.SOUND_COMPLETE,this.§9y§);
         dispatchEvent(param1);
      }
      
      private function §=!&§(param1:Number) : void
      {
         if(this.§`!+§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§`!+§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§`!+§.soundTransform = _loc2_;
         }
      }
      
      public function §[f§() : void
      {
         this.stop();
         this.§9y§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§`!+§)
         {
            this.§`!+§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§`!+§.removeEventListener(Event.SOUND_COMPLETE,this.§9y§);
         this.§`!+§ = null;
      }
      
      public function §+=§() : void
      {
         if(this.§`!+§)
         {
            this.§=!&§(0);
            this.§>D§ = true;
         }
      }
      
      public function §9U§() : void
      {
         if(this.§`!+§)
         {
            this.§=!&§(this.§9f§);
            this.§>D§ = false;
         }
      }
   }
}
