package § o§
{
   import §%#A§.§'=§;
   import §%#A§.§^!4§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class CodeRedeemInfoPopup extends AbstractPopup
   {
       
      
      private var §&!0§:String = "";
      
      private var §+1§:String = "";
      
      public function CodeRedeemInfoPopup(param1:int, param2:int, param3:String = "", param4:String = "redeem_gift")
      {
         this.§&!0§ = param3;
         this.§+1§ = param4;
         super(param1,param2,§=>§.§%" §.Views.PopupView_RedeemCodeInfo[0],"CodeRedeemInfoPopup");
      }
      
      override protected function init() : void
      {
         super.init();
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         (§1"6§.getItemByName("TextField_Text") as §^!4§).setText(this.§&!0§);
         (§1"6§.getItemByName("ImageRef") as §'=§).mClip.gotoAndStop(this.§+1§);
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
