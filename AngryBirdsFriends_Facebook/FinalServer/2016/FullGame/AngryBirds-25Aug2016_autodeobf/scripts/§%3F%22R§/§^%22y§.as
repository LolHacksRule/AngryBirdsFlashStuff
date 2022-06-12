package §?"R§
{
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   
   public class §^"y§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §4c§:String;
      
      public function §^"y§(param1:int, param2:int, param3:String)
      {
         this.§4c§ = param3;
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.txtMessage.text = this.§4c§;
      }
   }
}
