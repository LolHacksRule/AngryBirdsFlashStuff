package §#!2§
{
   import §"!2§.UIButtonRovio;
   import §#!X§.LevelManager;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9c§.StateLevelEndFailRio;
   import §9v§.§4!c§;
   import §>!<§.UIEventListenerRovio;
   import §[g§.FacebookLevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §5s§ extends StateLevelEndFailRio
   {
       
      
      private var §2R§:Array;
      
      public function §5s§(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && name))
         {
            while(true)
            {
               loop1:
               while(_loc3_)
               {
                  do
                  {
                     this.§2R§ = [];
                     do
                     {
                        loop4:
                        do
                        {
                           super(initState,name);
                           while(!_loc4_)
                           {
                              if(_loc3_ || this)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        while(!_loc3_);
                        
                     }
                     while(!_loc3_);
                     
                  }
                  while(!(_loc3_ || name));
                  
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
                     loop3:
                     while(_loc2_)
                     {
                        while(!_loc1_)
                        {
                           §§push(this.§2R§);
                           while(true)
                           {
                              §§pop().push((§^,§.getItemByName("Button_Menu") as UIButtonRovio).x);
                              addr86:
                              §§push(this.§2R§);
                              if(_loc2_)
                              {
                                 §§pop().push((§^,§.getItemByName("Button_Replay") as UIButtonRovio).x);
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    addr84:
                                    while(_loc2_)
                                    {
                                       §§goto(addr86);
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr84);
                                 }
                                 return;
                                 addr51:
                                 addr110:
                              }
                           }
                           if(_loc2_ || _loc1_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  loop2:
                  while(_loc1_)
                  {
                     (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
                     while(true)
                     {
                        addr95:
                        while(_loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr40);
      }
      
      override protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
                  while(true)
                  {
                     addr106:
                     while(_loc2_)
                     {
                        (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
                        continue loop1;
                     }
                     continue loop0;
                     addr64:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     addr71:
                     if(_loc3_ && _loc3_)
                     {
                        loop7:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr64);
                           }
                           else
                           {
                              while(true)
                              {
                                 (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
                                 continue loop7;
                              }
                              addr74:
                           }
                        }
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     if(!_loc3_)
                     {
                        return;
                        addr40:
                     }
                     §§goto(addr106);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr74);
         }
         §§goto(addr40);
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_)
         {
            if(!_loc2_)
            {
            }
         }
         §§push(LevelManager.§`l§());
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var nextLevelId:* = §§pop();
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(Boolean(nextLevelId));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(nextLevelId);
                                    addr219:
                                    while(true)
                                    {
                                       §§push(§§pop().isLevelOpen(§§pop()));
                                       addr220:
                                       while(!(_loc3_ && this))
                                       {
                                          §§push(!§§pop());
                                          if(_loc2_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc3_ && nextLevelId)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                            }
                                                            addr208:
                                                         }
                                                         else
                                                         {
                                                            §§push(LevelManager.§2! §());
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
                                                                  loop15:
                                                                  while(_loc2_ || nextLevelId)
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr136:
                                                                        addr136:
                                                                        if(_loc3_ && nextLevelId)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           addr268:
                                                                        }
                                                                     }
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                                        break;
                                                                     }
                                                                     addr165:
                                                                     break loop14;
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr136);
                                                            }
                                                            else
                                                            {
                                                               addr190:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop1;
                                                               }
                                                               addr190:
                                                            }
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      return;
                                                      addr198:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   §§goto(addr268);
                                                }
                                             }
                                             addr232:
                                          }
                                          §§goto(addr267);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr232);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      override protected function hideButtons() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && eventIndex)
         {
         }
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         if(!(_loc7_ && eventName))
         {
            loop0:
            while(true)
            {
               do
               {
                  continue loop0;
               }
               while(!_loc8_);
               
            }
         }
         §§push(eventName);
         loop4:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(!_loc7_)
            {
               §§push("FRIENDS_BUTTON");
               if(_loc8_ || eventName)
               {
                  if(!(_loc7_ && this))
                  {
                     addr370:
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc7_)
                              {
                                 addr432:
                              }
                           }
                           else
                           {
                              addr402:
                              §§push(1);
                              if(!_loc8_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push("SHARE_DEFAULT");
                           if(!_loc7_)
                           {
                              if(_loc8_ || component)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc7_ && eventIndex))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr402);
                                       }
                                       else
                                       {
                                          addr435:
                                          §§push(3);
                                          if(_loc8_ || this)
                                          {
                                             addr445:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   continue;
                                                case 1:
                                                   break;
                                                case 2:
                                                   loop9:
                                                   while(!(_loc7_ && eventName))
                                                   {
                                                      do
                                                      {
                                                         §§push(§4!c§);
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         §§push(LevelManager.§!=§);
                                                         if(_loc8_ || eventName)
                                                         {
                                                         }
                                                         §§push(LevelManager.§7+§().writtenName + "-");
                                                         if(!(_loc7_ && component))
                                                         {
                                                            §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                                                            if(_loc7_)
                                                            {
                                                            }
                                                         }
                                                         §§pop().§4!]§(§§pop(),§§pop(),§4!T§.controller.getScore(),"");
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ && eventIndex))
                                                            {
                                                               if(!(_loc8_ || eventName))
                                                               {
                                                                  break loop9;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  navigateToURL(urlReq,"_blank");
                                                                  break loop4;
                                                               }
                                                               addr345:
                                                               addr336:
                                                               addr343:
                                                               continue;
                                                            }
                                                            continue loop9;
                                                         }
                                                         if(!(_loc7_ && eventName))
                                                         {
                                                            break loop4;
                                                         }
                                                         §§goto(addr343);
                                                         continue loop9;
                                                      }
                                                      while(false);
                                                      
                                                      break loop4;
                                                   }
                                                   break;
                                                   §§goto(addr257);
                                                   addr328:
                                             }
                                             §§push(ExternalInterfaceHandler);
                                             §§push("shareDefault");
                                             if(_loc7_ && eventName)
                                             {
                                             }
                                             §§push(LevelManager.§!=§);
                                             if(_loc7_ && eventName)
                                             {
                                             }
                                             §§push(LevelManager.§7+§().writtenName + "-");
                                             if(!(_loc7_ && component))
                                             {
                                                §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                                                if(_loc8_ || eventName)
                                                {
                                                }
                                             }
                                             §§push(0);
                                             if(_loc8_ || this)
                                             {
                                             }
                                             §§pop().§!!@§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                                             §§goto(addr328);
                                             addr443:
                                             addr333:
                                          }
                                          §§goto(addr445);
                                       }
                                    }
                                    else
                                    {
                                       §§push("EMBED");
                                       if(!_loc8_)
                                       {
                                       }
                                       addr421:
                                       if(§§pop() === _loc6_)
                                       {
                                          if(!(_loc7_ && eventName))
                                          {
                                             §§push(2);
                                             if(_loc8_)
                                             {
                                                §§goto(addr432);
                                             }
                                             else
                                             {
                                                §§goto(addr443);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr435);
                                          }
                                       }
                                       else if(false)
                                       {
                                          §§goto(addr435);
                                       }
                                       else
                                       {
                                          §§goto(addr445);
                                          §§push(3);
                                       }
                                       §§goto(addr445);
                                    }
                                    §§goto(addr435);
                                 }
                              }
                           }
                           §§goto(addr421);
                        }
                        §§goto(addr445);
                     }
                  }
                  §§goto(addr421);
               }
               §§goto(addr370);
            }
            §§goto(addr435);
         }
      }
   }
}
