package §!"e§
{
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FriendsPromoPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "FriendsPromoPopup";
       
      
      public function FriendsPromoPopup(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_FriendsPromo[0],§%!h§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2.toUpperCase())
         {
            case "NAVIGATE_OUT":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
