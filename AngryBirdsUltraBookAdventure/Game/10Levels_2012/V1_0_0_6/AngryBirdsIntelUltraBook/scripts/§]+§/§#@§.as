package §]+§
{
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §?N§.§!!m§;
   import §?N§.§]!e§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#@§
   {
      
      public static const §8'§:int = 5 * 60;
       
      
      private var §5g§:String = "";
      
      private var §&6§:int = 300.0;
      
      private var §^[§:Timer;
      
      private var §0M§:§7^§;
      
      private var §,A§:Boolean = false;
      
      private var §&3§:Boolean = false;
      
      public function §#@§(param1:String, param2:int = 300.0)
      {
         super();
         this.§5g§ = param1;
         this.§&6§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§^[§)
         {
            this.§^[§ = new Timer(this.§&6§ * 1000);
            this.§^[§.addEventListener(TimerEvent.TIMER,this.§!!3§);
            this.§^[§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§^[§)
         {
            this.§^[§.stop();
            this.§^[§.removeEventListener(TimerEvent.TIMER,this.§!!3§);
            this.§^[§ = null;
         }
      }
      
      public function set §&§(param1:Boolean) : void
      {
         this.§,A§ = param1;
         if(!this.§,A§ && this.§&3§)
         {
            §]!e§.§1!&§();
         }
      }
      
      public function §7!O§() : void
      {
         if(!this.§0M§)
         {
            this.§0M§ = new §7^§();
            this.§0M§.addEventListener(Event.COMPLETE,this.§%0§);
            this.§0M§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§0M§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§0M§.addEventListener(§!!5§.§[!§,this.onError);
            this.§0M§.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/serverversion"));
         }
      }
      
      private function §!!3§(param1:Event) : void
      {
         this.§7!O§();
      }
      
      private function §%0§(param1:Event) : void
      {
         var _loc2_:String = this.§0M§.data;
         if(this.§5g§ == null || this.§5g§.length == 0)
         {
            this.§5g§ = _loc2_;
         }
         this.§0M§.removeEventListener(Event.COMPLETE,this.§%0§);
         this.§0M§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0M§.removeEventListener(§!!5§.§[!§,this.onError);
         this.§0M§ = null;
         if(_loc2_ != this.§5g§)
         {
            if(this.§,A§)
            {
               this.§&3§ = true;
            }
            else
            {
               §]!e§.§1!&§();
            }
            this.§5g§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §!!5§.§[!§)
         {
            §]!e§.§>k§(§!!m§.§[!x§);
         }
         this.§0M§.removeEventListener(Event.COMPLETE,this.§%0§);
         this.§0M§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0M§ = null;
      }
   }
}
