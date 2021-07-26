package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §<h§.§%M§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §3M§ extends AbstractPopup
   {
       
      
      private var §#"P§:String = "";
      
      private var §'7§:String = "";
      
      public function §3M§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§1Q§.§5T§.Views.PopupView_ShopItemInfoPopup[0]);
         this.§#"P§ = param2;
         this.§'7§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §,#2§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§="!§);
         (§,#2§.getItemByName("TextField_Header") as §%M§).setText(this.§#"P§);
         (§,#2§.getItemByName("TextField_Content") as §%M§).setText(this.§'7§);
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
