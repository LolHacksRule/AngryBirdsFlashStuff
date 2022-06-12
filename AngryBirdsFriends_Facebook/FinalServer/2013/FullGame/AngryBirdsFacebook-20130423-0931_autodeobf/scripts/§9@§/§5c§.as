package §9@§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5c§
   {
      
      public static const §+">§:int = 5 * 60;
       
      
      private var §<"<§:String = "";
      
      private var §`,§:int = 300.0;
      
      private var §;z§:Timer;
      
      private var §4S§:§3d§;
      
      private var §4!#§:Boolean = false;
      
      private var §]"P§:Boolean = false;
      
      public function §5c§(param1:String, param2:int = 300.0)
      {
         super();
         this.§<"<§ = param1;
         this.§`,§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§;z§)
         {
            this.§;z§ = new Timer(this.§`,§ * 1000);
            this.§;z§.addEventListener(TimerEvent.TIMER,this.§7!9§);
            this.§;z§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§;z§)
         {
            this.§;z§.stop();
            this.§;z§.removeEventListener(TimerEvent.TIMER,this.§7!9§);
            this.§;z§ = null;
         }
      }
      
      public function set §<!J§(param1:Boolean) : void
      {
         this.§4!#§ = param1;
         if(!this.§4!#§ && this.§]"P§)
         {
            §9"6§.§&",§();
         }
      }
      
      public function §[!k§() : void
      {
         if(!this.§4S§)
         {
            this.§4S§ = new §3d§();
            this.§4S§.addEventListener(Event.COMPLETE,this.§ !m§);
            this.§4S§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§4S§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§4S§.addEventListener(§9G§.§33§,this.onError);
            this.§4S§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/serverversion"));
         }
      }
      
      private function §7!9§(param1:Event) : void
      {
         this.§[!k§();
      }
      
      private function § !m§(param1:Event) : void
      {
         var _loc2_:String = this.§4S§.data;
         if(this.§<"<§ == null || this.§<"<§.length == 0)
         {
            this.§<"<§ = _loc2_;
         }
         this.§4S§.removeEventListener(Event.COMPLETE,this.§ !m§);
         this.§4S§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4S§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4S§.removeEventListener(§9G§.§33§,this.onError);
         this.§4S§ = null;
         if(_loc2_ != this.§<"<§)
         {
            if(this.§4!#§)
            {
               this.§]"P§ = true;
            }
            else
            {
               §9"6§.§&",§();
            }
            this.§<"<§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         this.§4S§.removeEventListener(Event.COMPLETE,this.§ !m§);
         this.§4S§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4S§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4S§ = null;
      }
   }
}
