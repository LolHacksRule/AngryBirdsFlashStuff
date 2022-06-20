package § o§
{
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   
   public class §3%§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §@#k§:String;
      
      public function §3%§(param1:int, param2:int, param3:String)
      {
         this.§@#k§ = param3;
         super(param1,param2,§=>§.§%" §.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §1"6§.mClip.txtMessage.text = this.§@#k§;
      }
   }
}
