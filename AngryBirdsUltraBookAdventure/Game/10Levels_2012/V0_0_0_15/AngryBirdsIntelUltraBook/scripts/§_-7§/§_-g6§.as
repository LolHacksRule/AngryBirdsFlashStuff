package §_-7§
{
   import §_-4g§.§_-pX§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import flash.events.Event;
   
   public class §_-g6§ extends Popup
   {
       
      
      public function §_-g6§(param1:§_-5q§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(§_-vB§.§_-ky§.Views.PopupView_EggFound[0],param1);
            while(true)
            {
               mClip.EasterEgg.gotoAndStop(param3);
            }
            addr105:
         }
         loop1:
         while(true)
         {
            §_-pX§.playSound("Found_GoldenEgg");
            while(_loc5_)
            {
               mClip.gotoAndPlay(1);
               while(!(_loc4_ && param3))
               {
                  continue loop1;
                  mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
               }
            }
            §§goto(addr105);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               loop0:
               while(true)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  loop1:
                  while(true)
                  {
                     mClip.stop();
                     while(!_loc3_)
                     {
                        preClose();
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               addr52:
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
