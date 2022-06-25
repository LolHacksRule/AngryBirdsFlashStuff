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
         if(!_loc5_)
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
                     while(!_loc5_)
                     {
                        super(§>!^§.§8'§.Views.PopupView_EggFound[0],currentUIView);
                        while(true)
                        {
                           while(true)
                           {
                              mClip.EasterEgg.gotoAndStop(eggId);
                              addr136:
                              while(_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    SoundEngine.§9!X§("Found_GoldenEgg");
                                    addr113:
                                    while(!_loc5_)
                                    {
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        if(_loc4_ || eggId)
                        {
                           return;
                           addr50:
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            mClip.gotoAndPlay(1);
            for(; !_loc5_; loop12:
            while(_loc4_ || currentUIView)
            {
               mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               for(; _loc4_; if(!(_loc5_ && this))
               {
                  continue loop12;
               })
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr113);
               }
               §§goto(addr99);
               if(_loc5_ && eggId)
               {
                  continue;
               }
               §§goto(addr43);
            })
            {
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr155);
            }
            §§goto(addr136);
         }
         §§goto(addr50);
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
            while(true)
            {
               addr124:
               addr24:
               while(mClip.currentFrame == mClip.totalFrames)
               {
               }
               return;
               addr83:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               mClip.stop();
               while(true)
               {
                  if(_loc3_)
                  {
                     loop7:
                     while(_loc3_)
                     {
                        preClose();
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop7;
                        }
                        while(true)
                        {
                           §§goto(addr121);
                        }
                     }
                     continue;
                  }
                  §§goto(addr124);
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr120);
      }
   }
}
