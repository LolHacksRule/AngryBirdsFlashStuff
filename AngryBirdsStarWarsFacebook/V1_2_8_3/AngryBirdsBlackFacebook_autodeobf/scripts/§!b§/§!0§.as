package §!b§
{
   import §%!G§.§0"V§;
   import §%!G§.§?!g§;
   import §+"Y§.§5;§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!0§
   {
      
      public static const §,!i§:int = 5 * 60;
       
      
      private var §7"6§:String = "";
      
      private var §5!Q§:int = 300.0;
      
      private var §1"p§:Timer;
      
      private var §5!X§:§?!g§;
      
      private var §5y§:Boolean = false;
      
      private var §=c§:Boolean = false;
      
      public function §!0§(param1:String, param2:int = 300.0)
      {
         super();
         this.§7"6§ = param1;
         this.§5!Q§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§1"p§)
         {
            this.§1"p§ = new Timer(this.§5!Q§ * 1000);
            this.§1"p§.addEventListener(TimerEvent.TIMER,this.§%!t§);
            this.§1"p§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§1"p§)
         {
            this.§1"p§.stop();
            this.§1"p§.removeEventListener(TimerEvent.TIMER,this.§%!t§);
            this.§1"p§ = null;
         }
      }
      
      public function set §?a§(param1:Boolean) : void
      {
         this.§5y§ = param1;
         if(!this.§5y§ && this.§=c§)
         {
            this.§2!q§();
         }
      }
      
      public function §!"j§() : void
      {
         if(!this.§5!X§)
         {
            this.§5!X§ = new §?!g§();
            this.§5!X§.addEventListener(Event.COMPLETE,this.§="`§);
            this.§5!X§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§5!X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§5!X§.load(§0"V§.§2"r§(§4"#§.SERVER_ROOT + "/serverversion"));
         }
      }
      
      private function §%!t§(param1:Event) : void
      {
         this.§!"j§();
      }
      
      private function §="`§(param1:Event) : void
      {
         var _loc2_:String = this.§5!X§.data;
         if(this.§7"6§ == null || this.§7"6§.length == 0)
         {
            this.§7"6§ = _loc2_;
         }
         this.§5!X§.removeEventListener(Event.COMPLETE,this.§="`§);
         this.§5!X§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5!X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5!X§ = null;
         if(_loc2_ != this.§7"6§)
         {
            if(this.§5y§)
            {
               this.§=c§ = true;
            }
            else
            {
               this.§2!q§();
            }
            this.§7"6§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         this.§5!X§.removeEventListener(Event.COMPLETE,this.§="`§);
         this.§5!X§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5!X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5!X§ = null;
      }
      
      private function §2!q§() : void
      {
         var _loc1_:§3!§ = new §5;§(§^!S§.ERROR,§2!s§.TOP);
         §4"#§.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
