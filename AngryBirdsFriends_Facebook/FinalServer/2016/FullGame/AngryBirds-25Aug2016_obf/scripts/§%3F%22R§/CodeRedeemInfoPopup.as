package §?"R§
{
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class CodeRedeemInfoPopup extends AbstractPopup
   {
       
      
      private var §9#W§:String = "";
      
      private var §2!Z§:String = "";
      
      public function CodeRedeemInfoPopup(param1:int, param2:int, param3:String = "", param4:String = "redeem_gift")
      {
         this.§9#W§ = param3;
         this.§2!Z§ = param4;
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_RedeemCodeInfo[0],"CodeRedeemInfoPopup");
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         (§7!j§.getItemByName("TextField_Text") as §]$!§).setText(this.§9#W§);
         (§7!j§.getItemByName("ImageRef") as §="T§).mClip.gotoAndStop(this.§2!Z§);
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
