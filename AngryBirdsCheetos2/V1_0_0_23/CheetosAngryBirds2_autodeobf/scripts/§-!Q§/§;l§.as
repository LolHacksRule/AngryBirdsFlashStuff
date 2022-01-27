package §-!Q§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;l§ extends EventDispatcher
   {
       
      
      private var §>e§:SoundChannel;
      
      private var §7Q§:String;
      
      private var §+!#§:Number;
      
      private var §67§:Boolean;
      
      public function §;l§(param1:SoundChannel, param2:String)
      {
         super();
         this.§>e§ = param1;
         this.§7Q§ = param2;
         this.§>e§.addEventListener(Event.SOUND_COMPLETE,this.§#!4§);
         this.§+!#§ = param1.soundTransform.volume;
         this.§67§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§+!#§ = param1;
         if(!this.§67§)
         {
            this.§8k§(this.§+!#§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§+!#§;
      }
      
      public function get id() : String
      {
         return this.§7Q§;
      }
      
      public function get position() : Number
      {
         return this.§>e§.position;
      }
      
      private function §#!4§(param1:Event) : void
      {
         this.§>e§.removeEventListener(Event.SOUND_COMPLETE,this.§#!4§);
         dispatchEvent(param1);
      }
      
      private function §8k§(param1:Number) : void
      {
         if(this.§>e§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§>e§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§>e§.soundTransform = _loc2_;
         }
      }
      
      public function §8!K§() : void
      {
         this.stop();
         this.§#!4§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§>e§)
         {
            this.§>e§.stop();
         }
      }
      
      public function §;@§() : void
      {
         this.stop();
         this.§>e§.removeEventListener(Event.SOUND_COMPLETE,this.§#!4§);
         this.§>e§ = null;
      }
      
      public function §^!f§() : void
      {
         if(this.§>e§)
         {
            this.§8k§(0);
            this.§67§ = true;
         }
      }
      
      public function §2!?§() : void
      {
         if(this.§>e§)
         {
            this.§8k§(this.§+!#§);
            this.§67§ = false;
         }
      }
   }
}
