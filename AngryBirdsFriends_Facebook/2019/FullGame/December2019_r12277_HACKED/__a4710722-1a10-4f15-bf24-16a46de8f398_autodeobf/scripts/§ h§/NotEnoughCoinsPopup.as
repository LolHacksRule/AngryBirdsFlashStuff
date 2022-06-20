package § h§
{
   import § "v§.§4$4§;
   import §2$;§.§-$5§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §4$A§.§=$5§;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §=$5§, §'r§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §&!2§:String = "";
      
      private var §!"l§:String = "";
      
      private var §3"R§:§?!y§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§&n§.§7a§.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§&!2§ = param2;
         this.§!"l§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         §'o§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§=#p§);
         (§'o§.getItemByName("TextField_Header") as §-$5§).setText(this.§&!2§);
         (§'o§.getItemByName("TextField_Content") as §-$5§).setText(this.§!"l§);
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §=#p§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close(false,false);
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§3"R§ = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§3"R§);
      }
      
      public function §9M§() : String
      {
         return ID;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§5"!§;
      }
      
      public function §6#U§() : String
      {
         return §'@§.§5"r§;
      }
   }
}
