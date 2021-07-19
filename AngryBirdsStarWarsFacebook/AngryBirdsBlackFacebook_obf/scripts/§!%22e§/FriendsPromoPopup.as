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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!h§ = "FriendsPromoPopup";
         }
      }
      
      public function FriendsPromoPopup(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_FriendsPromo[0],§%!h§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2.toUpperCase();
         if(_loc6_)
         {
            if("NAVIGATE_OUT" === _loc4_)
            {
               addr72:
               §§push(0);
               if(_loc5_ && this)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  if(_loc6_ || param3)
                  {
                     navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
                     return;
                  }
                  break;
               default:
                  super.onUIInteraction(param1,param2,param3);
            }
            return;
         }
         §§goto(addr72);
      }
   }
}
