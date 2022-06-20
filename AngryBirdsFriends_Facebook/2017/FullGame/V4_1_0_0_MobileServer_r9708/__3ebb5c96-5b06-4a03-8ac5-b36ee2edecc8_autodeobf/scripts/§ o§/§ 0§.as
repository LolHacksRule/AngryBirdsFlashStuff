package § o§
{
   import §%#A§.§^!4§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class § 0§ extends AbstractPopup
   {
       
      
      private var §%4§:String = "";
      
      private var §0"]§:String = "";
      
      public function § 0§(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§=>§.§%" §.Views.PopupView_ShopItemInfoPopup[0]);
         this.§%4§ = param2;
         this.§0"]§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         §1"6§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         (§1"6§.getItemByName("TextField_Header") as §^!4§).setText(this.§%4§);
         (§1"6§.getItemByName("TextField_Content") as §^!4§).setText(this.§0"]§);
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
   }
}
