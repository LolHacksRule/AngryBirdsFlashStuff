package §%!4§
{
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §=?§.SoundEngine;
   import flash.events.Event;
   
   public class EggCollectedPopup extends Popup
   {
       
      
      public function EggCollectedPopup(currentUIView:§6"§, statePopup:StatePopupManager, eggId:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        super(§>!^§.§8'§.Views.PopupView_EggFound[0],currentUIView);
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              mClip.EasterEgg.gotoAndStop(eggId);
                              addr155:
                              while(_loc4_)
                              {
                                 loop7:
                                 for(; _loc4_; if(_loc4_ || this)
                                 {
                                    return;
                                    addr52:
                                 })
                                 {
                                    SoundEngine.§9!X§("Found_GoldenEgg");
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop8;
                                          addr92:
                                          while(_loc4_ || this)
                                          {
                                             continue loop0;
                                             if(_loc4_ || eggId)
                                             {
                                                continue loop7;
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           if(_loc4_ || eggId)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function onEnterFrame(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               for(; mClip.currentFrame == mClip.totalFrames; while(_loc3_ || e)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               })
               {
                  while(true)
                  {
                     continue loop1;
                     addr46:
                     if(_loc3_ || this)
                     {
                        addr63:
                        if(_loc2_)
                        {
                           loop8:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr39:
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 §§goto(addr46);
                              }
                              addr66:
                              addr114:
                              while(_loc3_)
                              {
                                 preClose();
                                 continue loop8;
                              }
                              while(true)
                              {
                                 addr84:
                                 while(!(_loc2_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       mClip.stop();
                                       break loop8;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 §§goto(addr66);
                              }
                              break;
                              §§goto(addr39);
                           }
                           §§goto(addr84);
                        }
                        break loop1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr114);
      }
   }
}
