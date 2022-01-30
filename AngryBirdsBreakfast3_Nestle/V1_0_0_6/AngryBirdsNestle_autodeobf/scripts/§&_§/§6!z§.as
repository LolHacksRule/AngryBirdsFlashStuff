package §&_§
{
   import §'-§.§"x§;
   import §'-§.§9u§;
   import §0!$§.§2!K§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §[!F§.§3j§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §6!z§ extends §-"!§
   {
      
      private static var §0g§:Class = §7!4§;
      
      public static var §%p§:Number = 5000;
       
      
      private var §+<§:Number;
      
      private var §1"0§:§9u§;
      
      private var §`l§:String;
      
      private var §function§:Timer;
      
      private var §#!Z§:Boolean;
      
      public function §6!z§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§`l§ = param1;
         this.§+<§ = param2;
         §null§ = true;
         super(§^!=§.§^"!§,§+!]§.DEFAULT,this.§;!<§());
         this.§#!Z§ = param3;
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§0g§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§#!Z§)
         {
            this.§function§ = new Timer(this.§+<§,1);
            this.§function§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§#!O§);
            this.§function§.start();
         }
         this.§1"0§ = new §9u§(§[!<§,-AngryBirdsCustom.§<N§ / 2);
         this.§1"0§.show(this.§`l§);
         this.§1"0§.addEventListener(§"x§.§+e§,this.§2",§);
         if(!this.§#!Z§)
         {
            §&X§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§,true);
         }
      }
      
      private function §=!4§(param1:MouseEvent) : void
      {
         §&X§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§);
         if(this.§1"0§)
         {
            this.§1"0§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §#!O§(param1:TimerEvent) : void
      {
         this.§1"0§.hide();
      }
      
      private function §2",§(param1:§"x§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§function§)
         {
            this.§function§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§#!O§);
         }
         this.§1"0§.removeEventListener(§"x§.§+e§,this.§2",§);
         §&X§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§);
         this.§1"0§.dispose();
         this.§1"0§ = null;
         super.hide(param1,param2);
      }
      
      public function §5D§() : void
      {
         if(this.§1"0§)
         {
            this.§1"0§.hide();
         }
      }
      
      public function get container() : §3j§
      {
         return §[!<§;
      }
   }
}
