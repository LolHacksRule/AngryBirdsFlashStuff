package §_-7§
{
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import §_-qO§.§ in§;
   import flash.events.MouseEvent;
   
   public class §_-42§ extends Popup
   {
      
      public static const §_-aP§:String = "generalError";
      
      public static const §_-06o§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-aP§ = "generalError";
         }
         do
         {
            §_-06o§ = "thirdPartyCookiesDisabled";
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §_-42§(param1:§_-5q§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(§_-vB§.§_-ky§.Views.PopupView_Error[0],param1);
            while(true)
            {
               mClip.gotoAndStop([§_-aP§,§_-06o§].indexOf(param3) + 1);
               loop1:
               while(_loc5_ || param2)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-pZ§);
                  loop2:
                  while(true)
                  {
                     § in§.pause();
                     loop3:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           AngryBirdsFP11.§_-07§.§_-DE§();
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §_-pZ§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            AngryBirdsFP11.§_-07§.§_-DE§();
         }
         do
         {
            §_-05J§.§_-0At§("window.location.reload");
         }
         while(_loc2_);
         
      }
   }
}
