package § o§
{
   import §&"J§.§4"W§;
   import §+"E§.§9"z§;
   import §6!0§.§ "8§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import §[§.§]"w§;
   import §^"U§.§&#c§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §]"w§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §<!_§:String = "PayerPromotionCompleted";
       
      
      private var §5"#§:§&#c§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function §5#s§(param1:§9"z§) : void
      {
         § "8§.§ "§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         § "8§.addCallback("newPayerPromotionSent",this.§!#f§);
      }
      
      override protected function init() : void
      {
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         §1"6§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§]6§);
      }
      
      private function §]6§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§5"#§ = new §&#c§(null,null);
         this.§5"#§.addEventListener(§9"z§.§9$>§,this.§5#s§);
         this.§5"#§.addEventListener(§9"z§.§@H§,this.§?$!§);
      }
      
      protected function §?$!§(param1:Event) : void
      {
         close();
      }
      
      private function §!#f§(param1:Object) : void
      {
         §-#+§.§;!$§.§6#Q§.§42§ = false;
         dispatchEvent(new Event(§<!_§));
         this.§5"#§.removeEventListener(§9"z§.§9$>§,this.§5#s§);
         this.§5"#§.removeEventListener(§9"z§.§@H§,this.§?$!§);
         § "8§.§+#R§("newPayerPromotionSent",this.§!#f§);
         §4"W§.§ "D§.§@!z§();
         close();
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §-"K§() : String
      {
         return ID;
      }
   }
}
