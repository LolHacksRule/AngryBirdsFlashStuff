package §+"Y§
{
   import §+"x§.AbstractPopup;
   import §8!h§.§-V§;
   import §[!H§.§^x§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ShutdownPopup extends AbstractPopup
   {
      
      public static const §-"§:String = "ShutdownPopup";
      
      private static const §-i§:String = "Thank You!";
       
      
      public function ShutdownPopup(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_Shutdown[0],§-"§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[#,§.mClip.Container_Content.Title;
         _loc1_.Text.text = §-i§;
         _loc1_.goldenBg.mask = _loc1_.Text;
         §[#,§.mClip.Container_Content.mask = §[#,§.mClip.MovieClip_ContentMask;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2.toUpperCase())
         {
            case "NAVIGATE_OUT":
               navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
