package §`q§
{
   import §3!!§.§5" §;
   import §=!7§.§%!%§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §]K§.§+!o§;
   import §]K§.§>!I§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!!U§ extends §'!O§
   {
      
      private static var §'!t§:Class = §?!K§;
      
      public static var §<&§:Number = 5000;
       
      
      private var §-!T§:Number;
      
      private var §1"$§:§>!I§;
      
      private var §;d§:String;
      
      private var §!"+§:Timer;
      
      private var §@!"§:Boolean;
      
      public function §!!U§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§;d§ = param1;
         this.§-!T§ = param2;
         §0!2§ = true;
         super(§%!T§.§[!N§,§#!q§.DEFAULT,this.§@A§());
         this.§@!"§ = param3;
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§'!t§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§@!"§)
         {
            this.§!"+§ = new Timer(this.§-!T§,1);
            this.§!"+§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§+!Q§);
            this.§!"+§.start();
         }
         this.§1"$§ = new §>!I§(§#t§,-AngryBirdsCustom.§^!y§ / 2);
         this.§1"$§.show(this.§;d§);
         this.§1"$§.addEventListener(§+!o§.§1!=§,this.§ _§);
         if(!this.§@!"§)
         {
            §6R§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§,true);
         }
      }
      
      private function §5!'§(param1:MouseEvent) : void
      {
         §6R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§);
         if(this.§1"$§)
         {
            this.§1"$§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §+!Q§(param1:TimerEvent) : void
      {
         this.§1"$§.hide();
      }
      
      private function § _§(param1:§+!o§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§!"+§)
         {
            this.§!"+§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§+!Q§);
         }
         this.§1"$§.removeEventListener(§+!o§.§1!=§,this.§ _§);
         §6R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§);
         this.§1"$§.dispose();
         this.§1"$§ = null;
         super.hide(param1,param2);
      }
      
      public function § !B§() : void
      {
         if(this.§1"$§)
         {
            this.§1"$§.hide();
         }
      }
      
      public function get container() : §5" §
      {
         return §#t§;
      }
   }
}
