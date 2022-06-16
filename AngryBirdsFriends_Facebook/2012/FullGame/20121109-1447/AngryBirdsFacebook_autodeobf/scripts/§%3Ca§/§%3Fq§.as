package §<a§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?q§
   {
      
      public static const §,!"§:int = 5 * 60;
       
      
      private var §=i§:String = "";
      
      private var §[R§:int = 300.0;
      
      private var §]"1§:Timer;
      
      private var § 5§:§0]§;
      
      private var §9J§:Boolean = false;
      
      private var §>Q§:Boolean = false;
      
      public function §?q§(param1:String, param2:int = 300.0)
      {
         super();
         this.§=i§ = param1;
         this.§[R§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§]"1§)
         {
            this.§]"1§ = new Timer(this.§[R§ * 1000);
            this.§]"1§.addEventListener(TimerEvent.TIMER,this.§6!!§);
            this.§]"1§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§]"1§)
         {
            this.§]"1§.stop();
            this.§]"1§.removeEventListener(TimerEvent.TIMER,this.§6!!§);
            this.§]"1§ = null;
         }
      }
      
      public function set §`W§(param1:Boolean) : void
      {
         this.§9J§ = param1;
         if(!this.§9J§ && this.§>Q§)
         {
            §%?§.§&B§();
         }
      }
      
      public function §""§() : void
      {
         if(!this.§ 5§)
         {
            this.§ 5§ = new §0]§();
            this.§ 5§.addEventListener(Event.COMPLETE,this.§1!w§);
            this.§ 5§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ 5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ 5§.addEventListener(§+!D§.§25§,this.onError);
            this.§ 5§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/serverversion"));
         }
      }
      
      private function §6!!§(param1:Event) : void
      {
         this.§""§();
      }
      
      private function §1!w§(param1:Event) : void
      {
         var _loc2_:String = this.§ 5§.data;
         if(this.§=i§ == null || this.§=i§.length == 0)
         {
            this.§=i§ = _loc2_;
         }
         this.§ 5§.removeEventListener(Event.COMPLETE,this.§1!w§);
         this.§ 5§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ 5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ 5§.removeEventListener(§+!D§.§25§,this.onError);
         this.§ 5§ = null;
         if(_loc2_ != this.§=i§)
         {
            if(this.§9J§)
            {
               this.§>Q§ = true;
            }
            else
            {
               §%?§.§&B§();
            }
            this.§=i§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         this.§ 5§.removeEventListener(Event.COMPLETE,this.§1!w§);
         this.§ 5§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ 5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ 5§ = null;
      }
   }
}
