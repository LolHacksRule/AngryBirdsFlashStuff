package §?"R§
{
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §3T§ extends AbstractPopup
   {
       
      
      private var §<!8§:String = "";
      
      private var §'3§:String = "";
      
      public function §3T§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§@#`§.§#!c§.Views.PopupView_ShopItemInfoPopup[0]);
         this.§<!8§ = param2;
         this.§'3§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§'#p§);
         (§7!j§.getItemByName("TextField_Header") as §]$!§).setText(this.§<!8§);
         (§7!j§.getItemByName("TextField_Content") as §]$!§).setText(this.§'3§);
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
