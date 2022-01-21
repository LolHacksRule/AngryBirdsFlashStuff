package § !m§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § !M§ extends EventDispatcher
   {
       
      
      private var §@!m§:SoundChannel;
      
      private var §-!3§:String;
      
      private var §6W§:Number;
      
      private var §#W§:Boolean;
      
      public function § !M§(param1:SoundChannel, param2:String)
      {
         super();
         this.§@!m§ = param1;
         this.§-!3§ = param2;
         this.§@!m§.addEventListener(Event.SOUND_COMPLETE,this.§ !6§);
         this.§6W§ = param1.soundTransform.volume;
         this.§#W§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§6W§ = param1;
         if(!this.§#W§)
         {
            this.§,![§(this.§6W§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§6W§;
      }
      
      public function get id() : String
      {
         return this.§-!3§;
      }
      
      public function get position() : Number
      {
         return this.§@!m§.position;
      }
      
      private function § !6§(param1:Event) : void
      {
         this.§@!m§.removeEventListener(Event.SOUND_COMPLETE,this.§ !6§);
         dispatchEvent(param1);
      }
      
      private function §,![§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§@!m§.soundTransform;
         _loc2_.volume = param1;
         this.§@!m§.soundTransform = _loc2_;
      }
      
      public function §34§() : void
      {
         this.stop();
         this.§ !6§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@!m§)
         {
            this.§@!m§.stop();
         }
      }
      
      public function §[d§() : void
      {
         this.stop();
         this.§@!m§.removeEventListener(Event.SOUND_COMPLETE,this.§ !6§);
         this.§@!m§ = null;
      }
      
      public function §=!%§() : void
      {
         if(this.§@!m§)
         {
            this.§,![§(0);
            this.§#W§ = true;
         }
      }
      
      public function §3!&§() : void
      {
         if(this.§@!m§)
         {
            this.§,![§(this.§6W§);
            this.§#W§ = false;
         }
      }
   }
}
