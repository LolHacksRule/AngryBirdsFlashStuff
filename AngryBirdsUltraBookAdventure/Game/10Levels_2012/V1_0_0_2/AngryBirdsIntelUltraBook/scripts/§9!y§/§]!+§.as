package §9!y§
{
   import §"R§.§ !Q§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.Event;
   
   public class §]!+§ extends Popup
   {
       
      
      public function §]!+§(param1:§'!^§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(§[!'§.§+@§.Views.PopupView_EggFound[0],param1);
            while(true)
            {
               mClip.EasterEgg.gotoAndStop(param3);
               loop2:
               for(; !(_loc5_ && this); if(_loc4_ || param2)
               {
                  return;
               })
               {
                  mClip.gotoAndPlay(1);
                  while(!_loc5_)
                  {
                     mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     if(_loc4_)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     § !Q§.playSound("Found_GoldenEgg");
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               if(!_loc3_)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  addr83:
                  while(true)
                  {
                     mClip.stop();
                     while(!(_loc3_ && param1))
                     {
                        preClose();
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        §§goto(addr24);
                     }
                  }
                  addr83:
               }
               §§goto(addr83);
            }
            addr24:
            return;
         }
         §§goto(addr83);
      }
   }
}
