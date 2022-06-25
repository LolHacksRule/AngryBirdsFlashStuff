package §_-7§
{
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import §_-qO§.§ in§;
   import flash.events.MouseEvent;
   
   public class §_-ir§ extends Popup
   {
       
      
      public function §_-ir§(param1:§_-5q§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§_-vB§.§_-ky§.Views.PopupView_Warning[0],param1);
         }
         while(true)
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-KN§);
            while(!_loc3_)
            {
               § in§.pause();
               while(!_loc3_)
               {
                  AngryBirdsFP11.§_-07§.§_-DE§();
                  if(_loc4_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §_-KN§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
         }
         while(true)
         {
            § in§.resume();
            while(_loc2_ || this)
            {
               this.close();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
