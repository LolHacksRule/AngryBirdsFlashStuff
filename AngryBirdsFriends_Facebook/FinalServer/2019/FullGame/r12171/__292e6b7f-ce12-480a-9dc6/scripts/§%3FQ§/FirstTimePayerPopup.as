package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#$?§.§7!b§;
   import §,#,§.§]§;
   import §7"&§.§1k§;
   import §;!L§.§%"j§;
   import §[#V§.§1!>§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §1k§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §7"S§:String = "PayerPromotionCompleted";
       
      
      private var §9o§:§%"j§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function § #d§(param1:§1!>§) : void
      {
         §7!b§.§7@§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         §7!b§.addCallback("newPayerPromotionSent",this.§7#l§);
      }
      
      override protected function init() : void
      {
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         §;#'§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§5"w§);
      }
      
      private function §5"w§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§9o§ = new §%"j§(null,null);
         this.§9o§.addEventListener(§1!>§.§^#b§,this.§ #d§);
         this.§9o§.addEventListener(§1!>§.§6#!§,this.§;!!§);
      }
      
      protected function §;!!§(param1:Event) : void
      {
         close();
      }
      
      private function §7#l§(param1:Object) : void
      {
         §@z§.§ !D§.§0x§.§##[§ = false;
         dispatchEvent(new Event(§7"S§));
         this.§9o§.removeEventListener(§1!>§.§^#b§,this.§ #d§);
         this.§9o§.removeEventListener(§1!>§.§6#!§,this.§;!!§);
         §7!b§.§&#&§("newPayerPromotionSent",this.§7#l§);
         §]#0§.§+!,§.§@!z§();
         close();
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §6#n§() : String
      {
         return ID;
      }
   }
}
