package §<"s§
{
   import §,"v§.§@§;
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §^!`§.§%n§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FriendsPromoPopup extends AbstractPopup
   {
      
      public static const §^"3§:String = "FriendsPromoPopup";
       
      
      public function FriendsPromoPopup(param1:int, param2:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_FriendsPromo[0],§^"3§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2.toUpperCase())
         {
            case "NAVIGATE_OUT":
               §@§.§=Y§("misc_menubuttonproceed_1");
               navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
