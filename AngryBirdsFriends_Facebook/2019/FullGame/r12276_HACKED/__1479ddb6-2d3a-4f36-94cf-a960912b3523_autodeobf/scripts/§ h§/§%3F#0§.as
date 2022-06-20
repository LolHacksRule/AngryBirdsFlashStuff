package § h§
{
   import §2$;§.§-$5§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §?#0§ extends AbstractPopup
   {
       
      
      private var §&!2§:String = "";
      
      private var §!"l§:String = "";
      
      public function §?#0§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§&n§.§7a§.Views.PopupView_ShopItemInfoPopup[0]);
         this.§&!2§ = param2;
         this.§!"l§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         §'o§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§1",§);
         (§'o§.getItemByName("TextField_Header") as §-$5§).setText(this.§&!2§);
         (§'o§.getItemByName("TextField_Content") as §-$5§).setText(this.§!"l§);
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
