package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §-!r§.AbstractPopup;
   import §`!w§.§?!U§;
   import §`>§.§1!,§;
   import §`>§.§>7§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&A§ extends AbstractPopup
   {
      
      private static var §6!>§:Class = §,"9§;
      
      public static var §?!d§:Number = 4000;
       
      
      private var §@"#§:Number;
      
      private var §[n§:§>7§;
      
      private var §5"E§:String;
      
      private var §;"%§:Timer;
      
      public function §&A§(param1:String, param2:Number = 2000)
      {
         this.§5"E§ = param1;
         this.§@"#§ = param2;
         super(§>§.§3"=§,§'!h§.§3"4§,§?!U§.§3!c§(§6!>§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§;"%§ = new Timer(this.§@"#§,1);
         this.§;"%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§?h§);
         this.§;"%§.start();
         this.§[n§ = new §>7§(§3!a§,-§@T§.§[s§ / 2);
         this.§[n§.show(this.§5"E§);
         this.§[n§.addEventListener(§1!,§.§43§,this.§!!§);
         §3!L§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§`L§,true);
      }
      
      private function §`L§(param1:MouseEvent) : void
      {
         §3!L§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         if(this.§[n§)
         {
            this.§[n§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §?h§(param1:TimerEvent) : void
      {
         this.§[n§.hide();
      }
      
      private function §!!§(param1:§1!,§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§;"%§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§?h§);
         this.§[n§.removeEventListener(§1!,§.§43§,this.§!!§);
         §3!L§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         this.§[n§.dispose();
         this.§[n§ = null;
         super.hide(param1,param2);
      }
   }
}
