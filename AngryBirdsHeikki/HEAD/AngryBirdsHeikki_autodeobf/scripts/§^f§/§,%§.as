package §^f§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,%§ extends EventDispatcher
   {
       
      
      private var §1!3§:SoundChannel;
      
      private var §[,§:String;
      
      private var §#!#§:Number;
      
      private var §&!e§:Boolean;
      
      public function §,%§(param1:SoundChannel, param2:String)
      {
         super();
         this.§1!3§ = param1;
         this.§[,§ = param2;
         this.§1!3§.addEventListener(Event.SOUND_COMPLETE,this.§!!P§);
         this.§#!#§ = param1.soundTransform.volume;
         this.§&!e§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§#!#§ = param1;
         if(!this.§&!e§)
         {
            this.§9!X§(this.§#!#§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§#!#§;
      }
      
      public function get id() : String
      {
         return this.§[,§;
      }
      
      public function get position() : Number
      {
         return this.§1!3§.position;
      }
      
      private function §!!P§(param1:Event) : void
      {
         this.§1!3§.removeEventListener(Event.SOUND_COMPLETE,this.§!!P§);
         dispatchEvent(param1);
      }
      
      private function §9!X§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§1!3§.soundTransform;
         _loc2_.volume = param1;
         this.§1!3§.soundTransform = _loc2_;
      }
      
      public function §`!4§() : void
      {
         this.stop();
         this.§!!P§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§1!3§)
         {
            this.§1!3§.stop();
         }
      }
      
      public function §17§() : void
      {
         this.stop();
         this.§1!3§.removeEventListener(Event.SOUND_COMPLETE,this.§!!P§);
         this.§1!3§ = null;
      }
      
      public function §2!<§() : void
      {
         if(this.§1!3§)
         {
            this.§9!X§(0);
            this.§&!e§ = true;
         }
      }
      
      public function §#!I§() : void
      {
         if(this.§1!3§)
         {
            this.§9!X§(this.§#!#§);
            this.§&!e§ = false;
         }
      }
   }
}
