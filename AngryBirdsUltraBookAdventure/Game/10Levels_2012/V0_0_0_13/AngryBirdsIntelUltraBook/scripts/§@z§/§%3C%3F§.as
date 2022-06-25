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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || name)
         {
            while(true)
            {
               while(_loc3_)
               {
                  while(_loc3_ || initState)
                  {
                     this.§0!Z§ = [];
                     while(true)
                     {
                        §§goto(addr76);
                     }
                  }
               }
            }
         }
         addr76:
         loop4:
         while(true)
         {
            super(initState,name);
            while(true)
            {
               if(!_loc4_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop4;
            }
            continue loop3;
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
               while(true)
               {
                  addr127:
                  while(_loc2_ || this)
                  {
                     §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr75);
         }
         §§goto(addr39);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               super.activate();
               while(true)
               {
                  while(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
                        while(!(_loc1_ && this))
                        {
                           loop4:
                           while(!_loc1_)
                           {
                              §]!B§.§>F§.background.§"d§();
                              loop5:
                              while(true)
                              {
                                 for(; LevelManager.§&!e§().name == "1000"; do
                                 {
                                    §5!M§.getItemByName("Button_NextLevel").setVisibility(false);
                                    while(!(_loc2_ || _loc1_))
                                    {
                                    }
                                 }
                                 while(!_loc2_);
                                 ,if(!_loc1_)
                                 {
                                    continue loop5;
                                 })
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr29:
                                 return;
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr29);
                              }
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      override protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            addr118:
            while(true)
            {
               (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
               while(true)
               {
                  addr79:
                  while(_loc2_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(_loc3_)
            {
            }
         }
         §§push(LevelManager.§>!1§());
         if(!_loc3_)
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
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop13:
                           while(true)
                           {
                              §§pop();
                              addr257:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 addr191:
                                 while(true)
                                 {
                                    addr192:
                                    §§push(§§pop().isLevelOpen(nextLevelId));
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr201:
                                       §§push(Boolean(!§§pop()));
                                    }
                                    addr203:
                                    if(_loc2_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop13;
                                 }
                              }
                           }
                           addr256:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc2_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(LevelManager.§var§);
                                          if(_loc2_ || nextLevelId)
                                          {
                                             §§push(§§pop().§7n§(§§pop()));
                                             loop7:
                                             while(_loc2_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                loop8:
                                                while(!(_loc3_ && _loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr178:
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§push(LevelManager.§>s§());
                                                      if(_loc3_ && nextLevelId)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
                                                         loop10:
                                                         for(; _loc2_; if(!_loc2_)
                                                         {
                                                            continue;
                                                         },if(_loc2_ || this)
                                                         {
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               §§goto(addr138);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr113:
                                                            if(_loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                               break loop10;
                                                            }
                                                            addr126:
                                                            addr95:
                                                         },§§goto(addr36))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr178);
                                                               }
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr126);
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      §§goto(addr113);
                                                      continue loop8;
                                                   }
                                                   (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                   return;
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr192);
                                       }
                                       break;
                                    }
                                    §§goto(addr191);
                                 }
                              }
                           }
                           §§goto(addr176);
                        }
                     }
                  }
               }
               §§goto(addr256);
            }
         }
         §§goto(addr125);
      }
      
      override protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_)
         {
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         if(_loc8_)
         {
            while(true)
            {
               loop1:
               while(_loc8_ || this)
               {
                  while(true)
                  {
                     while(!_loc7_)
                     {
                        super.uiInteractionHandler(eventIndex,eventName,component);
                        if(_loc8_ || eventName)
                        {
                           if(!_loc7_)
                           {
                              §§push(eventName);
                              loop4:
                              while(true)
                              {
                                 var _loc6_:* = §§pop();
                                 if(_loc8_ || component)
                                 {
                                    §§push("FRIENDS_BUTTON");
                                    if(_loc8_ || eventName)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(_loc6_);
                                          if(_loc8_ || eventName)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(0);
                                                   if(_loc7_ && eventIndex)
                                                   {
                                                      addr362:
                                                   }
                                                }
                                                else
                                                {
                                                   addr397:
                                                   §§push(3);
                                                   if(!(_loc7_ && eventName))
                                                   {
                                                      addr405:
                                                   }
                                                }
                                                addr407:
                                                loop14:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      continue;
                                                   case 1:
                                                      break;
                                                   case 2:
                                                      loop6:
                                                      while(_loc8_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§]!e§);
                                                            if(_loc7_)
                                                            {
                                                            }
                                                            §§push(LevelManager.§var§);
                                                            if(!_loc8_)
                                                            {
                                                            }
                                                            §§push(LevelManager.§&!e§().writtenName + "-");
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() + FacebookLevelManager.§%!P§(LevelManager.§var§));
                                                               if(!_loc8_)
                                                               {
                                                               }
                                                            }
                                                            §§pop().§<!5§(§§pop(),§§pop(),§]!B§.controller.getScore(),"");
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc7_ && component)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr268:
                                                                  continue;
                                                               }
                                                               continue loop6;
                                                            }
                                                            if(!(_loc8_ || eventName))
                                                            {
                                                               break loop14;
                                                            }
                                                            if(!(_loc7_ && component))
                                                            {
                                                               break loop4;
                                                            }
                                                            addr278:
                                                            break loop4;
                                                         }
                                                      }
                                                      §§goto(addr278);
                                                      addr285:
                                                }
                                                continue loop5;
                                             }
                                             §§push("SHARE_DEFAULT");
                                             if(!_loc7_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr338:
                                                   §§push(_loc6_);
                                                   if(!(_loc7_ && component))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && eventName))
                                                         {
                                                            §§push(1);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§goto(addr362);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr405);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr397);
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      else
                                                      {
                                                         §§push("EMBED");
                                                         if(_loc7_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   addr368:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc7_ && eventIndex))
                                                      {
                                                         addr386:
                                                         §§push(2);
                                                         if(_loc8_ || eventName)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr397);
                                                      }
                                                   }
                                                   else if(false)
                                                   {
                                                      §§goto(addr397);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                   §§goto(addr407);
                                                }
                                             }
                                             §§goto(addr368);
                                             §§push(_loc6_);
                                             §§goto(addr397);
                                          }
                                          §§goto(addr368);
                                       }
                                    }
                                    §§goto(addr338);
                                 }
                                 §§goto(addr386);
                              }
                              return;
                              addr102:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
   }
}
