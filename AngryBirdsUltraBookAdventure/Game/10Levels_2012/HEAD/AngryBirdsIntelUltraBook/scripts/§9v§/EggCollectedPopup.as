package §9v§
{
   import §3!j§.SoundEngine;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.Event;
   
   public class EggCollectedPopup extends Popup
   {
       
      
      public function EggCollectedPopup(currentUIView:§-!H§, statePopup:StatePopupManager, eggId:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || currentUIView)
         {
         }
         if(_loc4_ || currentUIView)
         {
            while(true)
            {
               loop7:
               while(!(_loc5_ && this))
               {
                  SoundEngine.§`B§("Found_GoldenEgg");
                  loop8:
                  for(; !(_loc5_ && statePopup); while(_loc4_ || currentUIView)
                  {
                     if(_loc5_ && statePopup)
                     {
                        continue;
                     }
                     §§goto(addr46);
                  })
                  {
                     loop9:
                     while(true)
                     {
                        mClip.gotoAndPlay(1);
                        loop10:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                           addr178:
                           addr191:
                           while(_loc4_)
                           {
                              while(true)
                              {
                                 mClip.EasterEgg.gotoAndStop(eggId);
                                 break loop8;
                                 addr100:
                                 if(!(_loc5_ && this))
                                 {
                                    mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                    continue loop8;
                                 }
                              }
                           }
                           addr53:
                           while(true)
                           {
                              addr188:
                              while(true)
                              {
                                 break loop10;
                              }
                           }
                           if(!(_loc5_ && eggId))
                           {
                              return;
                           }
                        }
                        while(!_loc5_)
                        {
                           super(§3!5§.§4@§.Views.PopupView_EggFound[0],currentUIView);
                           §§goto(addr178);
                        }
                        §§goto(addr188);
                     }
                  }
                  while(true)
                  {
                     continue loop7;
                     §§goto(addr128);
                  }
                  addr128:
               }
            }
         }
         §§goto(addr191);
      }
      
      private function onEnterFrame(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               addr134:
               addr29:
               while(mClip.currentFrame == mClip.totalFrames)
               {
                  while(true)
                  {
                     addr107:
                     while(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr131);
      }
   }
}
