package §@z§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §7p§.§+!N§;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateLevelEndFailRio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §<?§ extends StateLevelEndFailRio
   {
       
      
      private var §0!Z§:Array;
      
      public function §<?§(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && name)
         {
         }
         if(_loc4_ || initState)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  do
                  {
                     this.§0!Z§ = [];
                     do
                     {
                        continue loop0;
                     }
                     while(_loc3_);
                     
                  }
                  while(!_loc4_);
                  
                  addr79:
                  while(_loc4_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc4_ || initState))
                     {
                        continue loop0;
                     }
                     §§goto(addr59);
                  }
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super.init();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
                     while(true)
                     {
                        continue loop2;
                        addr43:
                        if(_loc1_ || _loc1_)
                        {
                           return;
                           addr50:
                        }
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§0!Z§);
                     if(_loc2_ && _loc1_)
                     {
                        break;
                     }
                     §§pop().push((§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x);
                     loop8:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           if(!(_loc1_ || this))
                           {
                              continue loop8;
                           }
                           if(_loc1_)
                           {
                              §§goto(addr43);
                           }
                           else
                           {
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr50);
                     }
                  }
                  while(true)
                  {
                     §§pop().push((§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x);
                     §§goto(addr100);
                     §§goto(addr86);
                  }
                  addr86:
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr90);
               §§push(this.§0!Z§);
            }
         }
         §§goto(addr83);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               super.activate();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  loop2:
                  while(true)
                  {
                     (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
                     loop3:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           §]!B§.§>F§.background.§"d§();
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                                 addr55:
                                 if(!_loc2_)
                                 {
                                 }
                                 do
                                 {
                                    §5!M§.getItemByName("Button_NextLevel").setVisibility(false);
                                    while(_loc1_)
                                    {
                                    }
                                 }
                                 while(!_loc2_);
                                 
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       addr38:
                                       break;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr24:
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      override protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
            }
            addr115:
         }
         while(true)
         {
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
            loop2:
            for(; _loc2_; loop4:
            while(_loc2_ || this)
            {
               loop5:
               while(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop4;
                  }
                  §§goto(addr115);
               }
               §§goto(addr96);
            })
            {
               while(true)
               {
                  (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
                  continue loop2;
               }
            }
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            if(_loc2_ || _loc3_)
            {
            }
         }
         §§push(LevelManager.§>!1§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var nextLevelId:* = §§pop();
         if(_loc2_)
         {
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 while(true)
                                 {
                                    §§push(nextLevelId);
                                    addr217:
                                    addr211:
                                    while(true)
                                    {
                                       §§push(§§pop().isLevelOpen(§§pop()));
                                       addr218:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr219:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(LevelManager.§var§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().§7n§(§§pop()));
                                          if(!_loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc3_ && this))
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop4;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr218);
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      break loop13;
                                                   }
                                                   continue loop13;
                                                }
                                                addr46:
                                                return;
                                                addr170:
                                                addr205:
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr208);
                                       }
                                       else
                                       {
                                          §§goto(addr217);
                                       }
                                       §§goto(addr46);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           if(!§§pop())
                           {
                              continue loop1;
                           }
                           §§goto(addr205);
                        }
                     }
                  }
               }
               while(!(_loc3_ && _loc3_))
               {
                  §§goto(addr211);
               }
            }
         }
         §§goto(addr104);
      }
      
      override protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && component)
         {
         }
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         if(_loc8_ || eventIndex)
         {
            while(true)
            {
               while(_loc8_ || component)
               {
                  loop2:
                  while(!(_loc7_ && eventName))
                  {
                     while(true)
                     {
                        while(_loc8_)
                        {
                           super.uiInteractionHandler(eventIndex,eventName,component);
                           if(_loc8_)
                           {
                              §§push(eventName);
                              loop5:
                              while(true)
                              {
                                 var _loc6_:* = §§pop();
                                 if(_loc8_ || eventName)
                                 {
                                    §§push("FRIENDS_BUTTON");
                                    if(!(_loc7_ && eventIndex))
                                    {
                                       if(!_loc7_)
                                       {
                                          addr345:
                                          §§push(_loc6_);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc7_ && eventName))
                                                {
                                                   §§push(0);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr382:
                                                   §§push(1);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("SHARE_DEFAULT");
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_ || eventName)
                                                   {
                                                      addr371:
                                                      §§push(_loc6_);
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc7_ && component))
                                                            {
                                                               §§goto(addr382);
                                                            }
                                                            addr435:
                                                            loop14:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  continue;
                                                               case 1:
                                                                  while(true)
                                                                  {
                                                                     §§push(ExternalInterfaceHandler);
                                                                     §§push("shareDefault");
                                                                     if(_loc8_ || eventName)
                                                                     {
                                                                     }
                                                                     §§push(LevelManager.§var§);
                                                                     if(_loc7_)
                                                                     {
                                                                     }
                                                                     §§push(LevelManager.§&!e§().writtenName + "-");
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop() + FacebookLevelManager.§%!P§(LevelManager.§var§));
                                                                        if(_loc7_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc7_)
                                                                     {
                                                                     }
                                                                     §§pop().§>!2§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                                                                     break loop14;
                                                                  }
                                                                  addr296:
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     addr241:
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           break loop5;
                                                                        }
                                                                        addr318:
                                                                     }
                                                                     break loop5;
                                                                     addr311:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr320:
                                                                  }
                                                                  navigateToURL(urlReq,"_blank");
                                                                  §§goto(addr318);
                                                                  addr308:
                                                               case 2:
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop14;
                                                                        addr157:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§]!e§);
                                                                        if(_loc8_ || eventName)
                                                                        {
                                                                        }
                                                                        §§push(LevelManager.§var§);
                                                                        if(_loc7_ && component)
                                                                        {
                                                                        }
                                                                        §§push(LevelManager.§&!e§().writtenName + "-");
                                                                        if(!(_loc7_ && eventIndex))
                                                                        {
                                                                           §§push(§§pop() + FacebookLevelManager.§%!P§(LevelManager.§var§));
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              addr206:
                                                                           }
                                                                           §§pop().§<!5§(§§pop(),§§pop(),§]!B§.controller.getScore(),"");
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && component))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                        }
                                                                        §§goto(addr206);
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  §§goto(addr318);
                                                            }
                                                            if(!(_loc8_ || eventIndex))
                                                            {
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         else
                                                         {
                                                            §§push("EMBED");
                                                            if(!(_loc7_ && component))
                                                            {
                                                               addr395:
                                                               if(§§pop() === _loc6_)
                                                               {
                                                                  if(!(_loc7_ && eventIndex))
                                                                  {
                                                                     addr414:
                                                                     §§push(2);
                                                                     if(_loc7_ && eventName)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else if(true)
                                                               {
                                                                  §§goto(addr435);
                                                                  §§push(3);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            §§goto(addr395);
                                                         }
                                                         §§goto(addr435);
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr394);
                                                }
                                                §§goto(addr371);
                                             }
                                             §§goto(addr435);
                                          }
                                       }
                                       §§goto(addr395);
                                    }
                                    §§goto(addr345);
                                 }
                                 §§goto(addr414);
                              }
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
   }
}
