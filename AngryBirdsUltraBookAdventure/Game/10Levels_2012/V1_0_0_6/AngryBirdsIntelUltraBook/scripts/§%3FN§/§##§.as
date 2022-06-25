package §?N§
{
   import §,B§.Popup;
   import §5!c§.§9'§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.Event;
   
   public class §##§ extends Popup
   {
       
      
      public function §##§(param1:§4`§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§ !I§.§3!a§.Views.PopupView_EggFound[0],param1);
            while(true)
            {
               mClip.EasterEgg.gotoAndStop(param3);
               loop3:
               while(_loc5_ || param3)
               {
                  mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  if(!_loc4_)
                  {
                     addr43:
                     if(!_loc5_)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              mClip.gotoAndPlay(1);
                              continue loop3;
                           }
                           addr80:
                           while(true)
                           {
                              §9'§.playSound("Found_GoldenEgg");
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               loop0:
               while(true)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  addr79:
                  addr56:
                  while(true)
                  {
                     mClip.stop();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
