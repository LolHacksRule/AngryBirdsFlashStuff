package §?!N§
{
   import §%#v§.§0"j§;
   import §5!$§.§-#j§;
   import §;$5§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §&#^§ extends AbstractPopup
   {
       
      
      private var §^?§:String = "";
      
      private var §]=§:String = "";
      
      public function §&#^§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§0"j§.§-i§.Views.PopupView_ShopItemInfoPopup[0]);
         this.§^?§ = param2;
         this.§]=§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         §8#Y§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§'#+§);
         (§8#Y§.getItemByName("TextField_Header") as §-#j§).setText(this.§^?§);
         (§8#Y§.getItemByName("TextField_Content") as §-#j§).setText(this.§]=§);
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
