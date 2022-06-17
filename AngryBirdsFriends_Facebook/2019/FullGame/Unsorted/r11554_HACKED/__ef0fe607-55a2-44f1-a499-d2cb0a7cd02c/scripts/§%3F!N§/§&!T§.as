package §?!N§
{
   import §%#v§.§0"j§;
   import §;$5§.AbstractPopup;
   
   public class §&!T§ extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var §2#M§:String;
      
      public function §&!T§(param1:int, param2:int, param3:String)
      {
         this.§2#M§ = param3;
         super(param1,param2,§0"j§.§-i§.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §8#Y§.mClip.txtMessage.text = this.§2#M§;
      }
   }
}
