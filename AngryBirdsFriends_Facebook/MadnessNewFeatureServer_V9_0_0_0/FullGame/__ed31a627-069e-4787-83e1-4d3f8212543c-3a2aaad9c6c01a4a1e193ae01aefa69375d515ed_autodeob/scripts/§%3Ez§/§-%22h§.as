package §>z§
{
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §-"h§ extends AbstractPopup
   {
       
      
      private var §"3§:String = "";
      
      private var § &§:String = "";
      
      public function §-"h§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§?l§.§3m§.Views.PopupView_ShopItemInfoPopup[0]);
         this.§"3§ = param2;
         this.§ &§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         §&!M§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§@!2§);
         (§&!M§.getItemByName("TextField_Header") as §`"$§).setText(this.§"3§);
         (§&!M§.getItemByName("TextField_Content") as §`"$§).setText(this.§ &§);
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
