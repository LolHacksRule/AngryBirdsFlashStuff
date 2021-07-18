package §3C§
{
   import §0N§.§0!g§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §7!H§.AbstractPopup;
   import §9y§.§3!D§;
   import §9y§.§8"3§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^p§ extends AbstractPopup
   {
      
      private static var §7"@§:Class = §,5§;
      
      public static var §>F§:Number = 4000;
       
      
      private var §<!W§:Number;
      
      private var §?4§:§8"3§;
      
      private var §-9§:String;
      
      private var §+C§:Timer;
      
      public function §^p§(param1:String, param2:Number = 2000)
      {
         this.§-9§ = param1;
         this.§<!W§ = param2;
         super(§1#§.§7!_§,§8"6§.§ K§,§0!g§.§[!y§(§7"@§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+C§ = new Timer(this.§<!W§,1);
         this.§+C§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§[!5§);
         this.§+C§.start();
         this.§?4§ = new §8"3§(§[S§,-§`Y§.§3!h§ / 2);
         this.§?4§.show(this.§-9§);
         this.§?4§.addEventListener(§3!D§.§7!I§,this.§2">§);
         §3!+§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         this.§?4§.hide();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §[!5§(param1:TimerEvent) : void
      {
         this.§?4§.hide();
      }
      
      private function §2">§(param1:§3!D§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§+C§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[!5§);
         this.§?4§.removeEventListener(§3!D§.§7!I§,this.§2">§);
         §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         this.§?4§.dispose();
         this.§?4§ = null;
         super.hide(param1,param2);
      }
   }
}
