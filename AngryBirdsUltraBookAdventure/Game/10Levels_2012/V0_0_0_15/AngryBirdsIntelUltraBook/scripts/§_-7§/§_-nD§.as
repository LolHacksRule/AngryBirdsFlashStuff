package §_-7§
{
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import §_-qO§.§ in§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §_-nD§ extends Popup
   {
       
      
      public function §_-nD§(param1:§_-5q§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(§_-vB§.§_-ky§.Views.PopupServerUpdated_Error[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-pZ§);
               loop1:
               while(_loc3_)
               {
                  § in§.pause();
                  while(true)
                  {
                     AngryBirdsFP11.§_-07§.§_-DE§();
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §_-pZ§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.§_-07§.stage.displayState = StageDisplayState.NORMAL;
         }
         do
         {
            §_-05J§.§_-0At§("window.location.reload");
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
