package §7p§
{
   import §%!4§.ErrorPopup;
   import §%!4§.§]!e§;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#s§
   {
      
      public static const DEFAULT_CHECK_INTERVAL:int = 5 * 60;
       
      
      private var §'!_§:String = "";
      
      private var §=y§:int = 300.0;
      
      private var §@!_§:Timer;
      
      private var §6h§:§>!K§;
      
      private var §+;§:Boolean = false;
      
      private var §1Y§:Boolean = false;
      
      public function §#s§(initialVersion:String, checkIntervalSeconds:int = 300.0)
      {
         super();
         this.§'!_§ = initialVersion;
         this.§=y§ = checkIntervalSeconds;
      }
      
      public function start() : void
      {
         if(!this.§@!_§)
         {
            this.§@!_§ = new Timer(this.§=y§ * 1000);
            this.§@!_§.addEventListener(TimerEvent.TIMER,this.§[^§);
            this.§@!_§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§@!_§)
         {
            this.§@!_§.stop();
            this.§@!_§.removeEventListener(TimerEvent.TIMER,this.§[^§);
            this.§@!_§ = null;
         }
      }
      
      public function set §5^§(value:Boolean) : void
      {
         this.§+;§ = value;
         if(!this.§+;§ && this.§1Y§)
         {
            §]!e§.§[!R§();
         }
      }
      
      public function §,x§() : void
      {
         if(!this.§6h§)
         {
            this.§6h§ = new §>!K§();
            this.§6h§.addEventListener(Event.COMPLETE,this.§ !G§);
            this.§6h§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§6h§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§6h§.addEventListener(RetryingURLLoaderErrorEvent.§3Y§,this.onError);
            this.§6h§.load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/serverversion"));
         }
      }
      
      private function §[^§(e:Event) : void
      {
         this.§,x§();
      }
      
      private function § !G§(e:Event) : void
      {
         var version:String = this.§6h§.data;
         if(this.§'!_§ == null || this.§'!_§.length == 0)
         {
            this.§'!_§ = version;
         }
         this.§6h§.removeEventListener(Event.COMPLETE,this.§ !G§);
         this.§6h§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§6h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§6h§.removeEventListener(RetryingURLLoaderErrorEvent.§3Y§,this.onError);
         this.§6h§ = null;
         if(version != this.§'!_§)
         {
            trace("Server has been updated");
            if(this.§+;§)
            {
               this.§1Y§ = true;
            }
            else
            {
               §]!e§.§[!R§();
            }
            this.§'!_§ = version;
            this.stop();
         }
         else
         {
            trace("Still same old " + version + " of the server...");
         }
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§3Y§)
         {
            §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         this.§6h§.removeEventListener(Event.COMPLETE,this.§ !G§);
         this.§6h§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§6h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§6h§ = null;
      }
   }
}
