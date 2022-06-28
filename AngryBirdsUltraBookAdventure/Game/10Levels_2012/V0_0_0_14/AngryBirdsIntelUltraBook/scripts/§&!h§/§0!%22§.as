package §&!h§
{
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §9!Q§.§2!S§;
   import §9!Q§.§7o§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0!"§
   {
      
      public static const §2U§:int = 5 * 60;
       
      
      private var §"o§:String = "";
      
      private var §-!+§:int = 300.0;
      
      private var §1!<§:Timer;
      
      private var §?p§:§"!m§;
      
      private var §%4§:Boolean = false;
      
      private var §7'§:Boolean = false;
      
      public function §0!"§(param1:String, param2:int = 300.0)
      {
         super();
         this.§"o§ = param1;
         this.§-!+§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§1!<§)
         {
            this.§1!<§ = new Timer(this.§-!+§ * 1000);
            this.§1!<§.addEventListener(TimerEvent.TIMER,this.§3$§);
            this.§1!<§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§1!<§)
         {
            this.§1!<§.stop();
            this.§1!<§.removeEventListener(TimerEvent.TIMER,this.§3$§);
            this.§1!<§ = null;
         }
      }
      
      public function set §?0§(param1:Boolean) : void
      {
         this.§%4§ = param1;
         if(!this.§%4§ && this.§7'§)
         {
            §7o§.§<!_§();
         }
      }
      
      public function §0!X§() : void
      {
         if(!this.§?p§)
         {
            this.§?p§ = new §"!m§();
            this.§?p§.addEventListener(Event.COMPLETE,this.§7?§);
            this.§?p§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§?p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§?p§.addEventListener(§^!g§.§]P§,this.onError);
            this.§?p§.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/serverversion"));
         }
      }
      
      private function §3$§(param1:Event) : void
      {
         this.§0!X§();
      }
      
      private function §7?§(param1:Event) : void
      {
         var _loc2_:String = this.§?p§.data;
         if(this.§"o§ == null || this.§"o§.length == 0)
         {
            this.§"o§ = _loc2_;
         }
         this.§?p§.removeEventListener(Event.COMPLETE,this.§7?§);
         this.§?p§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§?p§.removeEventListener(§^!g§.§]P§,this.onError);
         this.§?p§ = null;
         if(_loc2_ != this.§"o§)
         {
            if(this.§%4§)
            {
               this.§7'§ = true;
            }
            else
            {
               §7o§.§<!_§();
            }
            this.§"o§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §^!g§.§]P§)
         {
            §7o§.§-Y§(§2!S§.§2u§);
         }
         this.§?p§.removeEventListener(Event.COMPLETE,this.§7?§);
         this.§?p§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§?p§ = null;
      }
   }
}
