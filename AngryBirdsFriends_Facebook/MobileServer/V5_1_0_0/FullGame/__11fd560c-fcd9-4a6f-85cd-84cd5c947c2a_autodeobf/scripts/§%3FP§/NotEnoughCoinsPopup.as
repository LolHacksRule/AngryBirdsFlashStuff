package §?P§
{
   import § %§.§1Q§;
   import §0#m§.§8#§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §4#V§.CoinShopPopup;
   import §<h§.§%M§;
   import §@!M§.§!"p§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §8#§, §7E§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §#"P§:String = "";
      
      private var §'7§:String = "";
      
      private var §=9§:§%#;§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§1Q§.§5T§.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§#"P§ = param2;
         this.§'7§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §,#2§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§%!U§);
         (§,#2§.getItemByName("TextField_Header") as §%M§).setText(this.§#"P§);
         (§,#2§.getItemByName("TextField_Content") as §%M§).setText(this.§'7§);
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §%!U§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close(false,false);
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§=9§ = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§=9§);
      }
      
      public function §+#k§() : String
      {
         return ID;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§[$6§;
      }
      
      public function §0'§() : String
      {
         return §`"x§.§,!y§;
      }
   }
}
