package §;!1§
{
   import §!!0§.SoundEngine;
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import flash.events.Event;
   
   public class EggCollectedPopup extends Popup
   {
       
      
      public function EggCollectedPopup(currentUIView:§`X§, statePopup:StatePopupManager, eggId:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || statePopup)
         {
            while(true)
            {
               loop1:
               for(; _loc5_ || this; while(_loc5_ || statePopup)
               {
                  §§goto(addr142);
               })
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        super(§+q§.§%M§.Views.PopupView_EggFound[0],currentUIView);
                        continue loop1;
                        addr68:
                        if(_loc4_ && eggId)
                        {
                           continue;
                        }
                        addr75:
                        if(_loc5_)
                        {
                           if(_loc4_)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!(_loc4_ && eggId))
                                 {
                                    if(_loc5_)
                                    {
                                       mClip.gotoAndPlay(1);
                                       loop10:
                                       while(true)
                                       {
                                          addr88:
                                          addr124:
                                          loop11:
                                          while(!(_loc4_ && currentUIView))
                                          {
                                             mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                             while(true)
                                             {
                                                if(!(_loc4_ && eggId))
                                                {
                                                   continue loop10;
                                                }
                                                continue loop11;
                                                §§goto(addr75);
                                             }
                                             continue loop3;
                                          }
                                          addr142:
                                          while(!(_loc4_ && currentUIView))
                                          {
                                             SoundEngine.§-!h§("Found_GoldenEgg");
                                             while(true)
                                             {
                                                continue loop9;
                                             }
                                             §§goto(addr88);
                                          }
                                          while(true)
                                          {
                                             mClip.EasterEgg.gotoAndStop(eggId);
                                             break loop9;
                                             §§goto(addr124);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr121);
                              }
                              while(true)
                              {
                                 §§goto(addr124);
                              }
                              addr139:
                           }
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                        §§goto(addr54);
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      private function onEnterFrame(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               for(; _loc3_ || e; if(!(_loc2_ && _loc3_))
               {
                  addr24:
                  return;
               })
               {
                  if(mClip.currentFrame != mClip.totalFrames)
                  {
                     §§goto(addr24);
                  }
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              mClip.stop();
                              while(true)
                              {
                                 while(!(_loc2_ && this))
                                 {
                                    continue loop4;
                                    while(_loc3_ || this)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop5;
                                          }
                                          continue;
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        preClose();
                        §§goto(addr51);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
   }
}
