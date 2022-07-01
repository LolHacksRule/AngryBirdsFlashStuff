package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §2!"§.§+^§;
   import §2!"§.§8K§;
   import §;"+§.§^!i§;
   import §;4§.§%@§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'!<§ extends §1>§
   {
      
      private static var §+e§:Class = §-!8§;
      
      public static var §%!v§:Number = 5000;
       
      
      private var §"!s§:Number;
      
      private var §"]§:§8K§;
      
      private var §<q§:String;
      
      private var §>!a§:Timer;
      
      private var §?!6§:Boolean;
      
      public function §'!<§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§<q§ = param1;
         this.§"!s§ = param2;
         §!d§ = true;
         super(§4&§.§;!C§,§ !+§.DEFAULT,this.§'!N§());
         this.§?!6§ = param3;
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§+e§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§?!6§)
         {
            this.§>!a§ = new Timer(this.§"!s§,1);
            this.§>!a§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§[!>§);
            this.§>!a§.start();
         }
         this.§"]§ = new §8K§(§@!U§,-AngryBirdsCustom.§-v§ / 2);
         this.§"]§.show(this.§<q§);
         this.§"]§.addEventListener(§+^§.§1!b§,this.§%!h§);
         if(!this.§?!6§)
         {
            §>!t§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§,true);
         }
      }
      
      private function §'!u§(param1:MouseEvent) : void
      {
         §>!t§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§);
         if(this.§"]§)
         {
            this.§"]§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §[!>§(param1:TimerEvent) : void
      {
         this.§"]§.hide();
      }
      
      private function §%!h§(param1:§+^§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§>!a§)
         {
            this.§>!a§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[!>§);
         }
         this.§"]§.removeEventListener(§+^§.§1!b§,this.§%!h§);
         §>!t§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§);
         this.§"]§.dispose();
         this.§"]§ = null;
         super.hide(param1,param2);
      }
      
      public function §#!^§() : void
      {
         if(this.§"]§)
         {
            this.§"]§.hide();
         }
      }
      
      public function get container() : §^!i§
      {
         return §@!U§;
      }
   }
}
