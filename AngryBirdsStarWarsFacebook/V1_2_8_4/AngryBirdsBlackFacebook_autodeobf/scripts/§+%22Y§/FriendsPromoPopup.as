package §+"Y§
{
   import §+"x§.AbstractPopup;
   import §8!h§.§-V§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FriendsPromoPopup extends AbstractPopup
   {
      
      public static const §-"§:String = "FriendsPromoPopup";
       
      
      public function FriendsPromoPopup(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_FriendsPromo[0],§-"§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2.toUpperCase())
         {
            case "NAVIGATE_OUT":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
