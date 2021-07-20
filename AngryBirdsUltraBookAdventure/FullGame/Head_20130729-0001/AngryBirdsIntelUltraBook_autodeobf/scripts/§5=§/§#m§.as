package §5=§
{
   import §;!1§.§9u§;
   import §;!1§.ErrorPopup;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#m§
   {
      
      public static const DEFAULT_CHECK_INTERVAL:int = 5 * 60;
       
      
      private var §7&§:String = "";
      
      private var §%;§:int = 300.0;
      
      private var §,F§:Timer;
      
      private var §8!U§:§[!<§;
      
      private var §">§:Boolean = false;
      
      private var §?e§:Boolean = false;
      
      public function §#m§(initialVersion:String, checkIntervalSeconds:int = 300.0)
      {
         super();
         this.§7&§ = initialVersion;
         this.§%;§ = checkIntervalSeconds;
      }
      
      public function start() : void
      {
         if(!this.§,F§)
         {
            this.§,F§ = new Timer(this.§%;§ * 1000);
            this.§,F§.addEventListener(TimerEvent.TIMER,this.§`!2§);
            this.§,F§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§,F§)
         {
            this.§,F§.stop();
            this.§,F§.removeEventListener(TimerEvent.TIMER,this.§`!2§);
            this.§,F§ = null;
         }
      }
      
      public function set §8!k§(value:Boolean) : void
      {
         this.§">§ = value;
         if(!this.§">§ && this.§?e§)
         {
            §9u§.§%l§();
         }
      }
      
      public function §&J§() : void
      {
         if(!this.§8!U§)
         {
            this.§8!U§ = new §[!<§();
            this.§8!U§.addEventListener(Event.COMPLETE,this.§3Y§);
            this.§8!U§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§8!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§8!U§.addEventListener(RetryingURLLoaderErrorEvent.§6!O§,this.onError);
            this.§8!U§.load(§+!I§.§[O§(AngryBirdsFP11.SERVER_ROOT + "/serverversion"));
         }
      }
      
      private function §`!2§(e:Event) : void
      {
         this.§&J§();
      }
      
      private function §3Y§(e:Event) : void
      {
         var version:String = this.§8!U§.data;
         if(this.§7&§ == null || this.§7&§.length == 0)
         {
            this.§7&§ = version;
         }
         this.§8!U§.removeEventListener(Event.COMPLETE,this.§3Y§);
         this.§8!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§8!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§8!U§.removeEventListener(RetryingURLLoaderErrorEvent.§6!O§,this.onError);
         this.§8!U§ = null;
         if(version != this.§7&§)
         {
            trace("Server has been updated");
            if(this.§">§)
            {
               this.§?e§ = true;
            }
            else
            {
               §9u§.§%l§();
            }
            this.§7&§ = version;
            this.stop();
         }
         else
         {
            trace("Still same old " + version + " of the server...");
         }
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§6!O§)
         {
            §9u§.§4!L§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         this.§8!U§.removeEventListener(Event.COMPLETE,this.§3Y§);
         this.§8!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§8!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§8!U§ = null;
      }
   }
}
