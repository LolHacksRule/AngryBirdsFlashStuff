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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || ShutdownPopup)
         {
            §%!h§ = "ShutdownPopup";
            do
            {
               §,p§ = "Thank You!";
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function ShutdownPopup(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_Shutdown[0],§%!h§);
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §^c§.mClip.Container_Content.Title;
         if(_loc2_ || _loc1_)
         {
            _loc1_.Text.text = §,p§;
         }
         do
         {
            _loc1_.goldenBg.mask = _loc1_.Text;
            do
            {
               §^c§.mClip.Container_Content.mask = §^c§.mClip.MovieClip_ContentMask;
            }
            while(_loc3_ && this);
            
         }
         while(_loc3_ && this);
         
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(!_loc6_)
         {
            if("NAVIGATE_OUT" === _loc4_)
            {
               addr59:
               §§push(0);
               if(_loc5_ || param3)
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
                  navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
                  if(_loc5_ || this)
                  {
                     return;
                  }
                  break;
            }
            super.onUIInteraction(param1,param2,param3);
            return;
         }
         §§goto(addr59);
      }
   }
}
