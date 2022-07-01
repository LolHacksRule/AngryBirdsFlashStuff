package §%9§
{
   import §"I§.§ !R§;
   import §,!9§.§+l§;
   import §,!9§.§>"$§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§9!'§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'F§ extends §<a§
   {
      
      private static var §@g§:Class = §[!`§;
      
      public static var §8!7§:Number = 5000;
       
      
      private var §#h§:Number;
      
      private var § 3§:§>"$§;
      
      private var §0!Y§:String;
      
      private var §'#§:Timer;
      
      private var §[r§:Boolean;
      
      public function §'F§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§0!Y§ = param1;
         this.§#h§ = param2;
         §8!^§ = true;
         super(§9r§.§"F§,§>!H§.DEFAULT,this.§^!!§());
         this.§[r§ = param3;
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§@g§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§[r§)
         {
            this.§'#§ = new Timer(this.§#h§,1);
            this.§'#§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§>q§);
            this.§'#§.start();
         }
         this.§ 3§ = new §>"$§(§0+§,-AngryBirdsCustom.§1a§ / 2);
         this.§ 3§.show(this.§0!Y§);
         this.§ 3§.addEventListener(§+l§.§,!q§,this.§"!@§);
         if(!this.§[r§)
         {
            §9!1§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§,true);
         }
      }
      
      private function §0!H§(param1:MouseEvent) : void
      {
         §9!1§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§);
         if(this.§ 3§)
         {
            this.§ 3§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §>q§(param1:TimerEvent) : void
      {
         this.§ 3§.hide();
      }
      
      private function §"!@§(param1:§+l§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§'#§)
         {
            this.§'#§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§>q§);
         }
         this.§ 3§.removeEventListener(§+l§.§,!q§,this.§"!@§);
         §9!1§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§);
         this.§ 3§.dispose();
         this.§ 3§ = null;
         super.hide(param1,param2);
      }
      
      public function §;z§() : void
      {
         if(this.§ 3§)
         {
            this.§ 3§.hide();
         }
      }
      
      public function get container() : §9!'§
      {
         return §0+§;
      }
   }
}
