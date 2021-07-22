package §5!Y§
{
   import §8m§.§@"M§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   
   public class §2E§ extends Popup
   {
       
      
      public function §2E§(param1:§`_§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_EggFound[0],param1);
            while(true)
            {
               §""W§ = §[M§;
               loop1:
               for(; !(_loc4_ && param1); if(!(_loc4_ && param3))
               {
                  return;
               })
               {
                  while(true)
                  {
                     if(param3.indexOf("300") != -1)
                     {
                        if(!(_loc4_ && param3))
                        {
                           mClip.spin.visible = false;
                        }
                        loop3:
                        while(true)
                        {
                           addr79:
                           loop4:
                           while(true)
                           {
                              mClip.EasterEgg.gotoAndStop(param3);
                              while(true)
                              {
                                 §@"M§.§3"C§("Found_GoldenEgg");
                                 while(!_loc4_)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          mClip.gotoAndPlay(1);
                                          while(_loc5_)
                                          {
                                             mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                             if(!(_loc4_ && param2))
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        mClip.spin.visible = true;
                     }
                     while(true)
                     {
                        §§goto(addr79);
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               if(_loc3_ || param1)
               {
                  addr79:
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               }
               while(true)
               {
                  mClip.stop();
                  while(!(_loc2_ && param1))
                  {
                     preClose(false);
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr79);
      }
   }
}
