package §+"C§
{
   import §&e§.§<x§;
   import §&e§.§?5§;
   import §+"2§.§?d§;
   import §+"2§.AbstractPopup;
   import §+"2§.§`B§;
   import §6!C§.§7[§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §["G§ extends AbstractPopup
   {
      
      private static var §+"0§:Class = §!]§;
      
      public static var §[!r§:Number = 4000;
       
      
      private var §%9§:Number;
      
      private var §0>§:§<x§;
      
      private var §]p§:String;
      
      private var §^1§:Timer;
      
      public function §["G§(param1:String, param2:Number = 2000)
      {
         this.§]p§ = param1;
         this.§%9§ = param2;
         super(§?d§.§!!i§,§`B§.§-! §,§7[§.§[!n§(§+"0§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§^1§ = new Timer(this.§%9§,1);
         this.§^1§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2&§);
         this.§^1§.start();
         this.§0>§ = new §<x§(§ 1§,-§["!§.§9"-§ / 2);
         this.§0>§.show(this.§]p§);
         this.§0>§.addEventListener(§?5§.§,W§,this.§@"4§);
         §1s§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§,true);
      }
      
      private function §3!u§(param1:MouseEvent) : void
      {
         §1s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         if(this.§0>§)
         {
            this.§0>§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §2&§(param1:TimerEvent) : void
      {
         this.§0>§.hide();
      }
      
      private function §@"4§(param1:§?5§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§^1§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2&§);
         this.§0>§.removeEventListener(§?5§.§,W§,this.§@"4§);
         §1s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         this.§0>§.dispose();
         this.§0>§ = null;
         super.hide(param1,param2);
      }
   }
}
