package §0X§
{
   import §9!y§.§2v§;
   import §9!y§.§@M§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3S§
   {
      
      public static const §]!;§:int = 5 * 60;
       
      
      private var §2'§:String = "";
      
      private var §;V§:int = 300.0;
      
      private var §^x§:Timer;
      
      private var §6a§:§!e§;
      
      private var §4!K§:Boolean = false;
      
      private var §[!l§:Boolean = false;
      
      public function §3S§(param1:String, param2:int = 300.0)
      {
         super();
         this.§2'§ = param1;
         this.§;V§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§^x§)
         {
            this.§^x§ = new Timer(this.§;V§ * 1000);
            this.§^x§.addEventListener(TimerEvent.TIMER,this.§]!V§);
            this.§^x§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§^x§)
         {
            this.§^x§.stop();
            this.§^x§.removeEventListener(TimerEvent.TIMER,this.§]!V§);
            this.§^x§ = null;
         }
      }
      
      public function set §default§(param1:Boolean) : void
      {
         this.§4!K§ = param1;
         if(!this.§4!K§ && this.§[!l§)
         {
            §@M§.§-!@§();
         }
      }
      
      public function §6,§() : void
      {
         if(!this.§6a§)
         {
            this.§6a§ = new §!e§();
            this.§6a§.addEventListener(Event.COMPLETE,this.§<t§);
            this.§6a§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§6a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§6a§.addEventListener(§3!^§.§2_§,this.onError);
            this.§6a§.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/serverversion"));
         }
      }
      
      private function §]!V§(param1:Event) : void
      {
         this.§6,§();
      }
      
      private function §<t§(param1:Event) : void
      {
         var _loc2_:String = this.§6a§.data;
         if(this.§2'§ == null || this.§2'§.length == 0)
         {
            this.§2'§ = _loc2_;
         }
         this.§6a§.removeEventListener(Event.COMPLETE,this.§<t§);
         this.§6a§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§6a§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§6a§.removeEventListener(§3!^§.§2_§,this.onError);
         this.§6a§ = null;
         if(_loc2_ != this.§2'§)
         {
            if(this.§4!K§)
            {
               this.§[!l§ = true;
            }
            else
            {
               §@M§.§-!@§();
            }
            this.§2'§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §3!^§.§2_§)
         {
            §@M§.§!!g§(§2v§.§'1§);
         }
         this.§6a§.removeEventListener(Event.COMPLETE,this.§<t§);
         this.§6a§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§6a§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§6a§ = null;
      }
   }
}
