package §?Q§
{
   import § "L§.§7`§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#"4§.§2"M§;
   import §#"4§.§<"G§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §]"U§.CoinShopPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §1k§, §2"M§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §@#g§:String = "";
      
      private var §7#A§:String = "";
      
      private var §<$$§:§,#@§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§false§.§4#;§.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§@#g§ = param2;
         this.§7#A§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         §;#'§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§!"p§);
         (§;#'§.getItemByName("TextField_Header") as §7`§).setText(this.§@#g§);
         (§;#'§.getItemByName("TextField_Content") as §7`§).setText(this.§7#A§);
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §!"p§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close(false,false);
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§<$$§ = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§<$$§);
      }
      
      public function §6#n§() : String
      {
         return ID;
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§7"'§;
      }
      
      public function §4!G§() : String
      {
         return §<"G§.§2!o§;
      }
   }
}
