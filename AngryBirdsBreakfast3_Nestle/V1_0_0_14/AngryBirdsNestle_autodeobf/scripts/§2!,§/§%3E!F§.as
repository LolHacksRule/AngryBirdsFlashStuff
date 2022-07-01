package §2!,§
{
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §4Y§.§%n§;
   import §8!$§.§1b§;
   import §^>§.§2"&§;
   import §^>§.§<!j§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>!F§ extends §,!#§
   {
      
      private static var §'T§:Class = §"p§;
      
      public static var §6H§:Number = 5000;
       
      
      private var §;!J§:Number;
      
      private var §]e§:§2"&§;
      
      private var §3X§:String;
      
      private var §6m§:Timer;
      
      private var §2-§:Boolean;
      
      public function §>!F§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§3X§ = param1;
         this.§;!J§ = param2;
         §[!k§ = true;
         super(§8!f§.§3!G§,§finally§.DEFAULT,this.§';§());
         this.§2-§ = param3;
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§'T§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§2-§)
         {
            this.§6m§ = new Timer(this.§;!J§,1);
            this.§6m§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7a§);
            this.§6m§.start();
         }
         this.§]e§ = new §2"&§(§;"#§,-AngryBirdsCustom.§1k§ / 2);
         this.§]e§.show(this.§3X§);
         this.§]e§.addEventListener(§<!j§.§89§,this.§<g§);
         if(!this.§2-§)
         {
            §1!!§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§,true);
         }
      }
      
      private function §>!p§(param1:MouseEvent) : void
      {
         §1!!§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§);
         if(this.§]e§)
         {
            this.§]e§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §7a§(param1:TimerEvent) : void
      {
         this.§]e§.hide();
      }
      
      private function §<g§(param1:§<!j§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§6m§)
         {
            this.§6m§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§7a§);
         }
         this.§]e§.removeEventListener(§<!j§.§89§,this.§<g§);
         §1!!§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§);
         this.§]e§.dispose();
         this.§]e§ = null;
         super.hide(param1,param2);
      }
      
      public function §,;§() : void
      {
         if(this.§]e§)
         {
            this.§]e§.hide();
         }
      }
      
      public function get container() : §%n§
      {
         return §;"#§;
      }
   }
}
