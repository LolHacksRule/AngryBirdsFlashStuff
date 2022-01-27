package §1!]§
{
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §"_§.AbstractPopup;
   import §5s§.§ !_§;
   import §5s§.§,!#§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §,!_§ extends AbstractPopup
   {
      
      private static var §1!w§:Class = §0!]§;
      
      public static var §;V§:Number = 4000;
       
      
      private var §@u§:Number;
      
      private var §^"8§:§ !_§;
      
      private var §+!w§:String;
      
      private var §'!F§:Timer;
      
      public function §,!_§(param1:String, param2:Number = 2000)
      {
         this.§+!w§ = param1;
         this.§@u§ = param2;
         super(§&r§.§9r§,§3o§.§0!n§,§=Q§.§%!g§(§1!w§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'!F§ = new Timer(this.§@u§,1);
         this.§'!F§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§>!X§);
         this.§'!F§.start();
         this.§^"8§ = new § !_§(§&#§,-§^"=§.§5+§ / 2);
         this.§^"8§.show(this.§+!w§);
         this.§^"8§.addEventListener(§,!#§.§0"F§,this.§3!_§);
         §+!#§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§,true);
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         §+!#§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
         if(this.§^"8§)
         {
            this.§^"8§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §>!X§(param1:TimerEvent) : void
      {
         this.§^"8§.hide();
      }
      
      private function §3!_§(param1:§,!#§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§'!F§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§>!X§);
         this.§^"8§.removeEventListener(§,!#§.§0"F§,this.§3!_§);
         §+!#§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
         this.§^"8§.dispose();
         this.§^"8§ = null;
         super.hide(param1,param2);
      }
   }
}
