package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   
   public class §3"m§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §2!X§:String;
      
      public function §3"m§(param1:int, param2:int, param3:String)
      {
         this.§2!X§ = param3;
         super(param1,param2,§1Q§.§5T§.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §,#2§.mClip.txtMessage.text = this.§2!X§;
      }
   }
}
