package §%!'§
{
   import §&!"§.§5"§;
   import §&!"§.§`B§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&x§
   {
      
      public static const §]"K§:int = 5 * 60;
       
      
      private var §%q§:String = "";
      
      private var §`2§:int = 300.0;
      
      private var §=!t§:Timer;
      
      private var §+! §:§9!S§;
      
      private var §<!0§:Boolean = false;
      
      private var §]!#§:Boolean = false;
      
      public function §&x§(param1:String, param2:int = 300.0)
      {
         super();
         this.§%q§ = param1;
         this.§`2§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§=!t§)
         {
            this.§=!t§ = new Timer(this.§`2§ * 1000);
            this.§=!t§.addEventListener(TimerEvent.TIMER,this.§]!,§);
            this.§=!t§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§=!t§)
         {
            this.§=!t§.stop();
            this.§=!t§.removeEventListener(TimerEvent.TIMER,this.§]!,§);
            this.§=!t§ = null;
         }
      }
      
      public function set §3_§(param1:Boolean) : void
      {
         this.§<!0§ = param1;
         if(!this.§<!0§ && this.§]!#§)
         {
            §`B§.§&!2§();
         }
      }
      
      public function §"E§() : void
      {
         if(!this.§+! §)
         {
            this.§+! § = new §9!S§();
            this.§+! §.addEventListener(Event.COMPLETE,this.§`!D§);
            this.§+! §.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+! §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+! §.addEventListener(§="B§.§2"B§,this.onError);
            this.§+! §.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/serverversion"));
         }
      }
      
      private function §]!,§(param1:Event) : void
      {
         this.§"E§();
      }
      
      private function §`!D§(param1:Event) : void
      {
         var _loc2_:String = this.§+! §.data;
         if(this.§%q§ == null || this.§%q§.length == 0)
         {
            this.§%q§ = _loc2_;
         }
         this.§+! §.removeEventListener(Event.COMPLETE,this.§`!D§);
         this.§+! §.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+! §.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+! §.removeEventListener(§="B§.§2"B§,this.onError);
         this.§+! § = null;
         if(_loc2_ != this.§%q§)
         {
            if(this.§<!0§)
            {
               this.§]!#§ = true;
            }
            else
            {
               §`B§.§&!2§();
            }
            this.§%q§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         this.§+! §.removeEventListener(Event.COMPLETE,this.§`!D§);
         this.§+! §.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+! §.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+! § = null;
      }
   }
}
