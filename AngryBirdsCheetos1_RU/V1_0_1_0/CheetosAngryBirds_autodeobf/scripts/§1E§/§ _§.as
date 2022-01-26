package §1E§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § _§ extends EventDispatcher
   {
       
      
      private var §0P§:SoundChannel;
      
      private var §`w§:String;
      
      private var §!p§:Number;
      
      private var §1_§:Boolean;
      
      public function § _§(param1:SoundChannel, param2:String)
      {
         super();
         this.§0P§ = param1;
         this.§`w§ = param2;
         this.§0P§.addEventListener(Event.SOUND_COMPLETE,this.§#3§);
         this.§!p§ = param1.soundTransform.volume;
         this.§1_§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§!p§ = param1;
         if(!this.§1_§)
         {
            this.§`!2§(this.§!p§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§!p§;
      }
      
      public function get id() : String
      {
         return this.§`w§;
      }
      
      public function get position() : Number
      {
         return this.§0P§.position;
      }
      
      private function §#3§(param1:Event) : void
      {
         this.§0P§.removeEventListener(Event.SOUND_COMPLETE,this.§#3§);
         dispatchEvent(param1);
      }
      
      private function §`!2§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§0P§.soundTransform;
         _loc2_.volume = param1;
         this.§0P§.soundTransform = _loc2_;
      }
      
      public function §`o§() : void
      {
         this.stop();
         this.§#3§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§0P§)
         {
            this.§0P§.stop();
         }
      }
      
      public function §4D§() : void
      {
         this.stop();
         this.§0P§.removeEventListener(Event.SOUND_COMPLETE,this.§#3§);
         this.§0P§ = null;
      }
      
      public function §,y§() : void
      {
         if(this.§0P§)
         {
            this.§`!2§(0);
            this.§1_§ = true;
         }
      }
      
      public function §4v§() : void
      {
         if(this.§0P§)
         {
            this.§`!2§(this.§!p§);
            this.§1_§ = false;
         }
      }
   }
}
