package §>z§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   
   public class §`"J§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §0!W§:String;
      
      public function §`"J§(param1:int, param2:int, param3:String)
      {
         this.§0!W§ = param3;
         super(param1,param2,§?l§.§3m§.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §&!M§.mClip.txtMessage.text = this.§0!W§;
      }
   }
}
