package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   
   public class §[!z§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §+V§:String;
      
      public function §[!z§(param1:int, param2:int, param3:String)
      {
         this.§+V§ = param3;
         super(param1,param2,§false§.§4#;§.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §;#'§.mClip.txtMessage.text = this.§+V§;
      }
   }
}
