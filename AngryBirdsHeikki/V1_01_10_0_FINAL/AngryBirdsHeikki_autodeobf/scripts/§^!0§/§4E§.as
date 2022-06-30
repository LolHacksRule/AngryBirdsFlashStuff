package §^!0§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4E§ extends EventDispatcher
   {
       
      
      private var §&l§:SoundChannel;
      
      private var §[M§:String;
      
      private var §,8§:Number;
      
      private var §#3§:Boolean;
      
      public function §4E§(param1:SoundChannel, param2:String)
      {
         super();
         this.§&l§ = param1;
         this.§[M§ = param2;
         this.§&l§.addEventListener(Event.SOUND_COMPLETE,this.§3!M§);
         this.§,8§ = param1.soundTransform.volume;
         this.§#3§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§,8§ = param1;
         if(!this.§#3§)
         {
            this.§>!E§(this.§,8§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§,8§;
      }
      
      public function get id() : String
      {
         return this.§[M§;
      }
      
      public function get position() : Number
      {
         return this.§&l§.position;
      }
      
      private function §3!M§(param1:Event) : void
      {
         this.§&l§.removeEventListener(Event.SOUND_COMPLETE,this.§3!M§);
         dispatchEvent(param1);
      }
      
      private function §>!E§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§&l§.soundTransform;
         _loc2_.volume = param1;
         this.§&l§.soundTransform = _loc2_;
      }
      
      public function §6`§() : void
      {
         this.stop();
         this.§3!M§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§&l§)
         {
            this.§&l§.stop();
         }
      }
      
      public function §&$§() : void
      {
         this.stop();
         this.§&l§.removeEventListener(Event.SOUND_COMPLETE,this.§3!M§);
         this.§&l§ = null;
      }
      
      public function §#!b§() : void
      {
         if(this.§&l§)
         {
            this.§>!E§(0);
            this.§#3§ = true;
         }
      }
      
      public function §6E§() : void
      {
         if(this.§&l§)
         {
            this.§>!E§(this.§,8§);
            this.§#3§ = false;
         }
      }
   }
}
