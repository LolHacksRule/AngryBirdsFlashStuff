package § h§
{
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   
   public class §<!K§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §""f§:String;
      
      public function §<!K§(param1:int, param2:int, param3:String)
      {
         this.§""f§ = param3;
         super(param1,param2,§&n§.§7a§.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §'o§.mClip.txtMessage.text = this.§""f§;
      }
   }
}
