package §0R§
{
   import §,!_§.§"!c§;
   import §,!_§.§>!_§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §<"s§.§%![§;
   import §<"s§.§0u§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>v§
   {
      
      public static const §&"v§:int = 5 * 60;
       
      
      private var §^+§:String = "";
      
      private var §="R§:int = 300.0;
      
      private var §use§:Timer;
      
      private var §<"0§:§"!c§;
      
      private var §`#0§:Boolean = false;
      
      private var §'"x§:Boolean = false;
      
      public function §>v§(param1:String, param2:int = 300.0)
      {
         super();
         this.§^+§ = param1;
         this.§="R§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§use§)
         {
            this.§use§ = new Timer(this.§="R§ * 1000);
            this.§use§.addEventListener(TimerEvent.TIMER,this.§^"_§);
            this.§use§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§use§)
         {
            this.§use§.stop();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§^"_§);
            this.§use§ = null;
         }
      }
      
      public function set §`§(param1:Boolean) : void
      {
         this.§`#0§ = param1;
         if(!this.§`#0§ && this.§'"x§)
         {
            this.§["3§();
         }
      }
      
      public function §""6§() : void
      {
         if(!this.§<"0§)
         {
            this.§<"0§ = new §"!c§();
            this.§<"0§.addEventListener(Event.COMPLETE,this.§0![§);
            this.§<"0§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§<"0§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§<"0§.load(§>!_§.§^O§(§;"@§.SERVER_ROOT + "/serverversion"));
         }
      }
      
      private function §^"_§(param1:Event) : void
      {
         this.§""6§();
      }
      
      private function §0![§(param1:Event) : void
      {
         var _loc2_:String = this.§<"0§.data;
         if(this.§^+§ == null || this.§^+§.length == 0)
         {
            this.§^+§ = _loc2_;
         }
         this.§<"0§.removeEventListener(Event.COMPLETE,this.§0![§);
         this.§<"0§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<"0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<"0§ = null;
         if(_loc2_ != this.§^+§)
         {
            if(this.§`#0§)
            {
               this.§'"x§ = true;
            }
            else
            {
               this.§["3§();
            }
            this.§^+§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         this.§<"0§.removeEventListener(Event.COMPLETE,this.§0![§);
         this.§<"0§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<"0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<"0§ = null;
      }
      
      private function §["3§() : void
      {
         var _loc1_:§5!R§ = new §%![§(§0u§.ERROR,§^T§.TOP);
         §;"@§.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
