package §9!!§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import § $§.RetryingURLLoaderErrorEvent;
   import §9v§.§4!c§;
   import §9v§.ErrorPopup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §->§
   {
      
      public static const DEFAULT_CHECK_INTERVAL:int = 5 * 60;
       
      
      private var §6%§:String = "";
      
      private var §<Z§:int = 300.0;
      
      private var §&V§:Timer;
      
      private var §>M§:§1!6§;
      
      private var §<!E§:Boolean = false;
      
      private var §+w§:Boolean = false;
      
      public function §->§(initialVersion:String, checkIntervalSeconds:int = 300.0)
      {
         super();
         this.§6%§ = initialVersion;
         this.§<Z§ = checkIntervalSeconds;
      }
      
      public function start() : void
      {
         if(!this.§&V§)
         {
            this.§&V§ = new Timer(this.§<Z§ * 1000);
            this.§&V§.addEventListener(TimerEvent.TIMER,this.§5o§);
            this.§&V§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§&V§)
         {
            this.§&V§.stop();
            this.§&V§.removeEventListener(TimerEvent.TIMER,this.§5o§);
            this.§&V§ = null;
         }
      }
      
      public function set §`!4§(value:Boolean) : void
      {
         this.§<!E§ = value;
         if(!this.§<!E§ && this.§+w§)
         {
            §4!c§.§5X§();
         }
      }
      
      public function §<R§() : void
      {
         if(!this.§>M§)
         {
            this.§>M§ = new §1!6§();
            this.§>M§.addEventListener(Event.COMPLETE,this.§1!^§);
            this.§>M§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>M§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>M§.addEventListener(RetryingURLLoaderErrorEvent.§9#§,this.onError);
            this.§>M§.load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/serverversion"));
         }
      }
      
      private function §5o§(e:Event) : void
      {
         this.§<R§();
      }
      
      private function §1!^§(e:Event) : void
      {
         var version:String = this.§>M§.data;
         if(this.§6%§ == null || this.§6%§.length == 0)
         {
            this.§6%§ = version;
         }
         this.§>M§.removeEventListener(Event.COMPLETE,this.§1!^§);
         this.§>M§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>M§.removeEventListener(RetryingURLLoaderErrorEvent.§9#§,this.onError);
         this.§>M§ = null;
         if(version != this.§6%§)
         {
            trace("Server has been updated");
            if(this.§<!E§)
            {
               this.§+w§ = true;
            }
            else
            {
               §4!c§.§5X§();
            }
            this.§6%§ = version;
            this.stop();
         }
         else
         {
            trace("Still same old " + version + " of the server...");
         }
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§9#§)
         {
            §4!c§.§?!U§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         this.§>M§.removeEventListener(Event.COMPLETE,this.§1!^§);
         this.§>M§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>M§ = null;
      }
   }
}
