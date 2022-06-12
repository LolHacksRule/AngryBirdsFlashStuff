package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §6!B§.§>!E§;
   import flash.events.Event;
   
   public class §;!q§ extends Popup
   {
       
      
      public function §;!q§(param1:§7!A§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§ "A§.§4[§.Views.PopupView_EggFound[0],param1);
            loop0:
            while(true)
            {
               §]"5§ = §%!x§;
               loop1:
               while(true)
               {
                  if(param3.indexOf("300") == -1)
                  {
                     mClip.spin.visible = true;
                     loop2:
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 mClip.EasterEgg.gotoAndStop(param3);
                                 while(true)
                                 {
                                    §>!E§.§7N§("Found_GoldenEgg");
                                    while(!(_loc4_ && param2))
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             mClip.gotoAndPlay(1);
                                             while(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue;
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       addr112:
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                           addr101:
                        }
                        else
                        {
                           while(true)
                           {
                              mClip.spin.visible = false;
                           }
                           addr108:
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr108);
               }
            }
         }
         §§goto(addr101);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
               addr73:
            }
            return;
         }
         §§goto(addr73);
      }
   }
}
