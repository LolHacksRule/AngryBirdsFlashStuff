package §<-§
{
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §^!m§.§4!i§;
   import §^!m§.§;0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!h§
   {
      
      public static const §9g§:int = 5 * 60;
       
      
      private var §6!2§:String = "";
      
      private var §4r§:int = 300.0;
      
      private var §4!K§:Timer;
      
      private var §[t§:§45§;
      
      private var §5!#§:Boolean = false;
      
      private var § !=§:Boolean = false;
      
      public function §-!h§(param1:String, param2:int = 300.0)
      {
         super();
         this.§6!2§ = param1;
         this.§4r§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§4!K§)
         {
            this.§4!K§ = new Timer(this.§4r§ * 1000);
            this.§4!K§.addEventListener(TimerEvent.TIMER,this.§;h§);
            this.§4!K§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§4!K§)
         {
            this.§4!K§.stop();
            this.§4!K§.removeEventListener(TimerEvent.TIMER,this.§;h§);
            this.§4!K§ = null;
         }
      }
      
      public function set §!r§(param1:Boolean) : void
      {
         this.§5!#§ = param1;
         if(!this.§5!#§ && this.§ !=§)
         {
            §4!i§.§<"§();
         }
      }
      
      public function §7Q§() : void
      {
         if(!this.§[t§)
         {
            this.§[t§ = new §45§();
            this.§[t§.addEventListener(Event.COMPLETE,this.§+r§);
            this.§[t§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§[t§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§[t§.addEventListener(§4-§.§4!m§,this.onError);
            this.§[t§.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/serverversion"));
         }
      }
      
      private function §;h§(param1:Event) : void
      {
         this.§7Q§();
      }
      
      private function §+r§(param1:Event) : void
      {
         var _loc2_:String = this.§[t§.data;
         if(this.§6!2§ == null || this.§6!2§.length == 0)
         {
            this.§6!2§ = _loc2_;
         }
         this.§[t§.removeEventListener(Event.COMPLETE,this.§+r§);
         this.§[t§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[t§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[t§.removeEventListener(§4-§.§4!m§,this.onError);
         this.§[t§ = null;
         if(_loc2_ != this.§6!2§)
         {
            if(this.§5!#§)
            {
               this.§ !=§ = true;
            }
            else
            {
               §4!i§.§<"§();
            }
            this.§6!2§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §4-§.§4!m§)
         {
            §4!i§.§>t§(§;0§.§-!W§);
         }
         this.§[t§.removeEventListener(Event.COMPLETE,this.§+r§);
         this.§[t§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[t§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[t§ = null;
      }
   }
}
