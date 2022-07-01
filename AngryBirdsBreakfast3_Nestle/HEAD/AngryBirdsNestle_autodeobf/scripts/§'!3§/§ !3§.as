package §'!3§
{
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§,6§;
   import §[!5§.§+!1§;
   import §[!5§.§2p§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § !3§ extends §;!o§
   {
      
      private static var §`!x§:Class = §&!u§;
      
      public static var §0!3§:Number = 5000;
       
      
      private var §]!_§:Number;
      
      private var §!e§:§2p§;
      
      private var §1!G§:String;
      
      private var §?!@§:Timer;
      
      private var §<n§:Boolean;
      
      public function § !3§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§1!G§ = param1;
         this.§]!_§ = param2;
         §^J§ = true;
         super(§`!t§.§9r§,§4z§.DEFAULT,this.§'!,§());
         this.§<n§ = param3;
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§`!x§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§<n§)
         {
            this.§?!@§ = new Timer(this.§]!_§,1);
            this.§?!@§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5!P§);
            this.§?!@§.start();
         }
         this.§!e§ = new §2p§(§29§,-AngryBirdsCustom.§`!,§ / 2);
         this.§!e§.show(this.§1!G§);
         this.§!e§.addEventListener(§+!1§.§[!U§,this.§!!y§);
         if(!this.§<n§)
         {
            §-p§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§,o§,true);
         }
      }
      
      private function §,o§(param1:MouseEvent) : void
      {
         §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
         if(this.§!e§)
         {
            this.§!e§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §5!P§(param1:TimerEvent) : void
      {
         this.§!e§.hide();
      }
      
      private function §!!y§(param1:§+!1§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§?!@§)
         {
            this.§?!@§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§5!P§);
         }
         this.§!e§.removeEventListener(§+!1§.§[!U§,this.§!!y§);
         §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
         this.§!e§.dispose();
         this.§!e§ = null;
         super.hide(param1,param2);
      }
      
      public function §2!l§() : void
      {
         if(this.§!e§)
         {
            this.§!e§.hide();
         }
      }
      
      public function get container() : §,6§
      {
         return §29§;
      }
   }
}
