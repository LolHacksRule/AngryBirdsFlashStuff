package §!"e§
{
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ShutdownPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "ShutdownPopup";
      
      private static const §,p§:String = "Thank You!";
       
      
      public function ShutdownPopup(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_Shutdown[0],§%!h§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §^c§.mClip.Container_Content.Title;
         _loc1_.Text.text = §,p§;
         _loc1_.goldenBg.mask = _loc1_.Text;
         §^c§.mClip.Container_Content.mask = §^c§.mClip.MovieClip_ContentMask;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
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
