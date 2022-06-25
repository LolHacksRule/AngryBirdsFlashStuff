package §[!$§
{
   import §&"§.ExternalInterfaceHandler;
   import §'8§.FacebookLevelManager;
   import §0!Q§.UIEventListenerRovio;
   import §5=§.§9F§;
   import §6a§.UIButtonRovio;
   import §7t§.StateLevelEndFailRio;
   import §;!1§.§9u§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelEndFail extends StateLevelEndFailRio
   {
       
      
      private var §`$§:Array;
      
      private var §9$§:Boolean = false;
      
      private var §,!1§:Number = 41.666666666666664;
      
      private var §4c§:int = 0;
      
      public function StateFacebookLevelEndFail(initState:Boolean = false, name:String = "LevelEndFailStateRio")
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
                     this.§`$§ = [];
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
                     §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
                     loop3:
                     while(_loc2_)
                     {
                        while(!_loc1_)
                        {
                           §§push(this.§`$§);
                           while(true)
                           {
                              §§pop().push((§`=§.getItemByName("Button_Menu") as UIButtonRovio).x);
                              addr86:
                              §§push(this.§`$§);
                              if(_loc2_)
                              {
                                 §§pop().push((§`=§.getItemByName("Button_Replay") as UIButtonRovio).x);
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
                     (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
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
                  (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
                  while(true)
                  {
                     addr106:
                     while(_loc2_)
                     {
                        (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
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
                                 (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
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
         §§push(LevelManager.§8!I§());
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
                                                               (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                            }
                                                            addr208:
                                                         }
                                                         else
                                                         {
                                                            §§push(LevelManager.§%!M§());
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
                                                                  (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
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
                                                                        (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
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
      
      protected function §0p§(tmc:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && tmc)
         {
         }
         if(_loc3_ && tFrame)
         {
         }
         loop0:
         while(true)
         {
            addr40:
            addr52:
            addr69:
            while(true)
            {
               continue loop0;
            }
            var tFrame:int = tmc.currentFrame + 1;
            if(_loc4_)
            {
               loop3:
               while(true)
               {
                  §§push(tFrame);
                  loop4:
                  while(true)
                  {
                     if(§§pop() <= tmc.totalFrames)
                     {
                        loop9:
                        while(true)
                        {
                           tmc.gotoAndStop(tFrame);
                           while(_loc3_)
                           {
                           }
                           if(_loc4_ || tmc)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr142:
                              while(true)
                              {
                              }
                           }
                           while(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                              }
                              continue loop9;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        continue loop4;
                     }
                  }
               }
            }
            return;
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§4c§ += deltaTime;
                  while(!(_loc2_ && _loc2_))
                  {
                     loop3:
                     while(!_loc2_)
                     {
                        §§push(this.§4c§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= this.§,!1§)
                           {
                              while(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    this.§0p§(§`=§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
                                    loop7:
                                    while(true)
                                    {
                                       while(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             this.§4c§ = 0;
                                             continue loop7;
                                          }
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr29);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           addr29:
                           while(true)
                           {
                              §§push(super.run(deltaTime));
                              if(!_loc2_)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         if(!_loc7_)
         {
            while(true)
            {
               loop1:
               for(; !_loc7_; while(_loc8_ || eventName)
               {
                  super.uiInteractionHandler(eventIndex,eventName,component);
                  if(_loc7_)
                  {
                     continue;
                  }
                  §§goto(addr93);
               })
               {
                  do
                  {
                     continue loop1;
                  }
                  while(_loc7_ && component);
                  
               }
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
               if(_loc8_ || eventIndex)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc6_);
                     if(!(_loc7_ && eventIndex))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc8_ || component)
                           {
                              §§push(0);
                              if(!(_loc8_ || eventIndex))
                              {
                                 addr418:
                              }
                           }
                           else
                           {
                              addr372:
                              §§push(1);
                              if(_loc7_ && component)
                              {
                                 addr412:
                              }
                           }
                        }
                        else
                        {
                           §§push("SHARE_DEFAULT");
                           if(!(_loc7_ && eventIndex))
                           {
                              addr358:
                              if(!_loc7_)
                              {
                                 §§push(_loc6_);
                                 if(_loc8_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc8_ || component)
                                       {
                                          §§goto(addr372);
                                       }
                                       addr420:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             continue;
                                          case 1:
                                             break;
                                          case 2:
                                             loop5:
                                             while(true)
                                             {
                                                addr146:
                                                addr306:
                                                while(true)
                                                {
                                                   §§push(§9u§);
                                                   if(_loc8_ || eventIndex)
                                                   {
                                                   }
                                                   §§push(LevelManager.§1m§);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                   §§push(LevelManager.§!]§().writtenName + "-");
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() + FacebookLevelManager.§5j§(LevelManager.§1m§));
                                                      if(_loc8_ || this)
                                                      {
                                                      }
                                                   }
                                                   §§pop().§'!e§(§§pop(),§§pop(),§`S§.controller.getScore(),"");
                                                   continue loop5;
                                                }
                                                break loop4;
                                             }
                                             navigateToURL(urlReq,"_blank");
                                             §§goto(addr303);
                                             addr305:
                                       }
                                       §§push(ExternalInterfaceHandler);
                                       §§push("shareDefault");
                                       if(_loc8_ || eventIndex)
                                       {
                                       }
                                       §§push(LevelManager.§1m§);
                                       if(_loc8_ || component)
                                       {
                                       }
                                       §§push(LevelManager.§!]§().writtenName + "-");
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + FacebookLevelManager.§5j§(LevelManager.§1m§));
                                          if(_loc7_ && component)
                                          {
                                          }
                                       }
                                       §§push(0);
                                       if(_loc8_ || eventIndex)
                                       {
                                       }
                                       §§pop().§`F§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                                       §§goto(addr286);
                                    }
                                    else
                                    {
                                       §§push("EMBED");
                                       if(_loc8_ || eventIndex)
                                       {
                                          addr399:
                                       }
                                       addr401:
                                       if(§§pop() === _loc6_)
                                       {
                                          if(_loc8_)
                                          {
                                             addr404:
                                             §§push(2);
                                             if(!(_loc7_ && component))
                                             {
                                                §§goto(addr412);
                                             }
                                          }
                                       }
                                       else if(true)
                                       {
                                          §§goto(addr420);
                                          §§push(3);
                                       }
                                       §§goto(addr420);
                                    }
                                    §§goto(addr420);
                                 }
                                 §§goto(addr401);
                              }
                           }
                           §§goto(addr399);
                        }
                        §§goto(addr420);
                     }
                     §§goto(addr401);
                  }
               }
               §§goto(addr358);
            }
            §§goto(addr404);
         }
      }
   }
}
