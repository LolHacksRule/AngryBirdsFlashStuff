package §?Q§
{
   import § "L§.§7`§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §`#_§ extends AbstractPopup
   {
       
      
      private var §@#g§:String = "";
      
      private var §7#A§:String = "";
      
      public function §`#_§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§false§.§4#;§.Views.PopupView_ShopItemInfoPopup[0]);
         this.§@#g§ = param2;
         this.§7#A§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         §;#'§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§,!<§);
         (§;#'§.getItemByName("TextField_Header") as §7`§).setText(this.§@#g§);
         (§;#'§.getItemByName("TextField_Content") as §7`§).setText(this.§7#A§);
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
