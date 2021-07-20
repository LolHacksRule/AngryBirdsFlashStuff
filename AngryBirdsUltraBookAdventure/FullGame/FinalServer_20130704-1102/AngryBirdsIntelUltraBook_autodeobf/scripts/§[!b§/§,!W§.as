package §[!b§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!W§ extends EventDispatcher
   {
       
      
      private var §9!1§:SoundChannel;
      
      private var §9!^§:String;
      
      private var §'9§:Number;
      
      private var §1[§:Boolean;
      
      public function §,!W§(param1:SoundChannel, param2:String)
      {
         super();
         this.§9!1§ = param1;
         this.§9!^§ = param2;
         this.§9!1§.addEventListener(Event.SOUND_COMPLETE,this.§^!l§);
         this.§'9§ = param1.soundTransform.volume;
         this.§1[§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§'9§ = param1;
         if(!this.§1[§)
         {
            this.§[,§(this.§'9§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§'9§;
      }
      
      public function get id() : String
      {
         return this.§9!^§;
      }
      
      public function get position() : Number
      {
         return this.§9!1§.position;
      }
      
      private function §^!l§(param1:Event) : void
      {
         this.§9!1§.removeEventListener(Event.SOUND_COMPLETE,this.§^!l§);
         dispatchEvent(param1);
      }
      
      private function §[,§(param1:Number) : void
      {
         if(this.§9!1§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§9!1§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§9!1§.soundTransform = _loc2_;
         }
      }
      
      public function §@!M§() : void
      {
         this.stop();
         this.§^!l§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§9!1§)
         {
            this.§9!1§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§9!1§.removeEventListener(Event.SOUND_COMPLETE,this.§^!l§);
         this.§9!1§ = null;
      }
      
      public function §3!?§() : void
      {
         if(this.§9!1§)
         {
            this.§[,§(0);
            this.§1[§ = true;
         }
      }
      
      public function §9!n§() : void
      {
         if(this.§9!1§)
         {
            this.§[,§(this.§'9§);
            this.§1[§ = false;
         }
      }
   }
}
