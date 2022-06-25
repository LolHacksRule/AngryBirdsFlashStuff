package §%!4§
{
   import § D§.§]!B§;
   import §##§.§%M§;
   import §##§.Popup;
   import §##§.TutorialPopupManager;
   import §##§.TutorialPowerUpPopup;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §2!H§.LevelSlingshotObject;
   import §4!9§.§6"§;
   import §6b§.§^9§;
   
   public class FacebookTutorialPopupManager extends TutorialPopupManager
   {
      
      private static var toBeShown:Array;
      
      private static var currentTutorial:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
      
      {
         var toBeShown:Boolean = false;
         var currentTutorial:Boolean = true;
         if(!(toBeShown && FacebookTutorialPopupManager))
         {
            loop0:
            while(true)
            {
               toBeShown = [];
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     currentTutorial = null;
                     while(true)
                     {
                        loop4:
                        while(!(toBeShown && FacebookTutorialPopupManager))
                        {
                           if(currentTutorial)
                           {
                              while(true)
                              {
                                 isOpen = false;
                                 while(!(toBeShown && toBeShown))
                                 {
                                    continue loop2;
                                    if(!(currentTutorial || currentTutorial))
                                    {
                                       continue;
                                    }
                                    if(!currentTutorial)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr50);
                                 }
                                 continue loop4;
                              }
                              return;
                              addr50:
                              addr91:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function FacebookTutorialPopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               §§goto(addr48);
            }
         }
         addr48:
         while(true)
         {
            if(_loc2_ || this)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private static function §?!A§(birdName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && currentUIView)
         {
         }
         if(_loc6_ || FacebookTutorialPopupManager)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(_loc6_)
                     {
                        §§push(null);
                        if(!(_loc6_ || FacebookTutorialPopupManager))
                        {
                           continue loop1;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(birdName);
                              loop7:
                              while(!_loc5_)
                              {
                                 §§pop().§§slot[1] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(_loc6_)
                                    {
                                       §§pop().§§slot[2] = currentUIView;
                                       while(_loc6_ || FacebookTutorialPopupManager)
                                       {
                                          while(!_loc5_)
                                          {
                                             continue loop8;
                                             if(_loc6_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_ || currentUIView)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push("");
                                                      if(!(_loc5_ && FacebookTutorialPopupManager))
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr427:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private static function §^C§(powerUpName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || addPowerUpTutorialToBeShown$1)
         {
         }
         if(_loc6_ || FacebookTutorialPopupManager)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(!(_loc6_ || powerUpName))
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                           loop11:
                           while(!(_loc5_ && addPowerUpTutorialToBeShown$1))
                           {
                              loop12:
                              while(!_loc5_)
                              {
                                 loop13:
                                 while(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(powerUpName);
                                          if(!(_loc5_ && powerUpName))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc5_ && powerUpName)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop());
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().§§slot[1] = §§pop();
                                                   break loop13;
                                                }
                                                addr129:
                                             }
                                          }
                                          §§pop().§§slot[3] = §§pop();
                                          while(_loc6_ || FacebookTutorialPopupManager)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop12;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop11;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr48);
                                             }
                                             else
                                             {
                                                try
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      §§pop().§§slot[4] = new TutorialPowerUpPopup(§^9§.§1<§(mTutorialPowerUpPopupBin),currentUIView,CompositeSpriteParser.§[o§(tutorialName,TextureManager.§8!X§),tutorialName);
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr220:
                                                            if(tutorialPopup)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_ || powerUpName)
                                                                  {
                                                                     toBeShown.push(tutorialPopup);
                                                                     addr243:
                                                                  }
                                                                  addr264:
                                                                  if(!(_loc6_ || addPowerUpTutorialToBeShown$1))
                                                                  {
                                                                     §§goto(addr264);
                                                                  }
                                                                  addr245:
                                                                  return;
                                                                  addr257:
                                                               }
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                catch(e:Error)
                                                {
                                                   if(_loc6_ || FacebookTutorialPopupManager)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr214:
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   trace("Tutorial named: " + tutorialName + " Not found");
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                          continue loop13;
                                       }
                                       addr104:
                                       while(_loc6_)
                                       {
                                          §§pop().§§slot[2] = currentUIView;
                                          break loop12;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                                 while(_loc6_)
                                 {
                                    §§goto(addr104);
                                    §§push(§§newactivation());
                                 }
                                 continue loop3;
                              }
                              while(true)
                              {
                                 continue loop11;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private static function §0?§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  addr44:
                  while(_loc5_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!(_loc6_ && birdsToShow))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr42);
            }
            §§goto(addr44);
         }
         var birdsToShow:Array = [];
         if(!_loc5_)
         {
         }
         var _loc3_:int = 0;
         loop4:
         for each(bird in §]!B§.§>F§.slingshot.§#P§)
         {
            if(_loc5_ || FacebookTutorialPopupManager)
            {
            }
            loop5:
            while(true)
            {
               if(birdsToShow.indexOf(bird.name) >= 0)
               {
                  continue loop4;
               }
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     addr95:
                     while(true)
                     {
                        birdsToShow.push(bird.name);
                        addr101:
                        while(true)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              continue loop6;
                           }
                           continue loop7;
                        }
                        continue loop5;
                     }
                  }
               }
            }
         }
         if(_loc5_ || FacebookTutorialPopupManager)
         {
         }
         return birdsToShow;
      }
      
      public static function §,!B§(param1:§6"§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc10_)
         {
         }
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(!(_loc10_ && FacebookTutorialPopupManager))
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
                     addr90:
                     while(!_loc10_)
                     {
                        if(!(_loc10_ && param3))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                     addr77:
                     if(_loc10_ && param1)
                     {
                        continue;
                     }
                     while(true)
                     {
                        if(_loc11_)
                        {
                           if(isOpen)
                           {
                              §§goto(addr45);
                           }
                           else
                           {
                              §§push(param2);
                              if(_loc11_ || FacebookTutorialPopupManager)
                              {
                                 §§push(§§pop());
                              }
                              var _loc4_:* = §§pop();
                              if(_loc10_ && param3)
                              {
                              }
                              do
                              {
                                 mPowerUps = [];
                              }
                              while(!_loc11_);
                              
                              §§push(param2);
                              loop8:
                              while(true)
                              {
                                 var _loc8_:* = §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push("POWERUP4");
                                    if(!_loc10_)
                                    {
                                       if(_loc11_ || param2)
                                       {
                                          §§push(_loc8_);
                                          if(_loc11_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   §§push(0);
                                                   if(!_loc11_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr536:
                                                   §§push(2);
                                                   if(!_loc11_)
                                                   {
                                                      addr575:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("POWERUP1");
                                                if(!(_loc10_ && FacebookTutorialPopupManager))
                                                {
                                                   addr491:
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc11_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc11_ || param1)
                                                            {
                                                               §§push(1);
                                                               if(_loc11_ || param3)
                                                               {
                                                                  addr615:
                                                                  loop46:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        addr433:
                                                                        _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                                                        addr421:
                                                                        mPowerUps.push(_loc4_);
                                                                        break;
                                                                        addr426:
                                                                        addr416:
                                                                        addr432:
                                                                        addr434:
                                                                        addr431:
                                                                        addr420:
                                                                        addr423:
                                                                     case 1:
                                                                        §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                        addr412:
                                                                        _loc4_ = §§pop();
                                                                        addr398:
                                                                        mPowerUps.push(_loc4_);
                                                                        addr413:
                                                                        break;
                                                                        addr413:
                                                                        addr411:
                                                                        addr397:
                                                                        addr400:
                                                                        addr403:
                                                                     case 2:
                                                                        addr374:
                                                                        §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              addr384:
                                                                              §§push(§§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    addr362:
                                                                                    while(_loc11_ || param1)
                                                                                    {
                                                                                       §§push(mPowerUps);
                                                                                       §§push(_loc4_);
                                                                                       while(!(_loc10_ && param2))
                                                                                       {
                                                                                          §§pop().push(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ && param2)
                                                                                             {
                                                                                                continue loop32;
                                                                                             }
                                                                                             if(!(_loc10_ && param3))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   break loop46;
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr413);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    §§goto(addr416);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr433);
                                                                              }
                                                                              §§goto(addr433);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr432);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr411);
                                                                        }
                                                                        §§goto(addr413);
                                                                     case 3:
                                                                        §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    addr313:
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc11_ || param1))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       addr324:
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr279:
                                                                                          §§push(mPowerUps);
                                                                                          §§push(_loc4_);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§pop().push(§§pop());
                                                                                                addr268:
                                                                                                if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          §§goto(addr343);
                                                                                          addr289:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       §§goto(addr433);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr412);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr374);
                                                                              }
                                                                           }
                                                                           §§goto(addr384);
                                                                        }
                                                                        §§goto(addr313);
                                                                     case 4:
                                                                        while(!_loc10_)
                                                                        {
                                                                           §§push(mPowerUps);
                                                                           while(_loc11_)
                                                                           {
                                                                              §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().push(§§pop());
                                                                                 addr251:
                                                                                 while(_loc11_ || param1)
                                                                                 {
                                                                                    while(!_loc10_)
                                                                                    {
                                                                                       §§push(mPowerUps);
                                                                                       if(!(_loc10_ && param3))
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                             continue loop35;
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       break loop8;
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 §§goto(addr400);
                                                                              }
                                                                           }
                                                                           §§goto(addr279);
                                                                        }
                                                                        §§goto(addr352);
                                                                  }
                                                                  §§push(mPowerUps);
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr567:
                                                               §§push(3);
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§goto(addr575);
                                                               }
                                                            }
                                                            §§goto(addr615);
                                                            §§goto(addr615);
                                                         }
                                                         else
                                                         {
                                                            §§push("POWERUP2");
                                                            if(!_loc10_)
                                                            {
                                                               addr522:
                                                               if(_loc11_ || FacebookTutorialPopupManager)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc11_)
                                                                  {
                                                                     addr533:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§goto(addr536);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr594:
                                                                           §§push(4);
                                                                           if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                           {
                                                                              §§goto(addr602);
                                                                           }
                                                                           §§goto(addr615);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("POWERUP3");
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                              {
                                                                                 addr559:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       §§goto(addr567);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr594);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("ALL");
                                                                                    if(_loc11_ || FacebookTutorialPopupManager)
                                                                                    {
                                                                                       addr585:
                                                                                       §§push(_loc8_);
                                                                                       addr584:
                                                                                    }
                                                                                    §§goto(addr585);
                                                                                 }
                                                                                 §§goto(addr615);
                                                                              }
                                                                           }
                                                                           §§goto(addr584);
                                                                        }
                                                                        §§goto(addr585);
                                                                     }
                                                                     §§goto(addr615);
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        §§goto(addr594);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr605:
                                                                        §§push(5);
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr615);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr605);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr615);
                                                                        §§push(5);
                                                                     }
                                                                     §§goto(addr615);
                                                                  }
                                                                  §§goto(addr605);
                                                               }
                                                            }
                                                            §§goto(addr585);
                                                         }
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                }
                                                §§goto(addr585);
                                             }
                                             §§goto(addr615);
                                          }
                                          §§goto(addr559);
                                       }
                                       §§goto(addr522);
                                    }
                                    §§goto(addr491);
                                 }
                                 §§goto(addr605);
                              }
                              var _loc5_:Array = §§pop();
                              if(!(_loc10_ && param2))
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(param3);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop11:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(int(_loc5_.length - 1));
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc10_ && param3))
                                                               {
                                                                  if(§§pop() < 0)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                     }
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           if(_loc5_.length > 0)
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(AngryBirdsFP11.sUserProgress);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§pop().saveTutorialSeen(_loc5_.toString());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   break loop19;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                addr800:
                                                                                                addr806:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr801:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr640:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§goto(addr800);
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              §§goto(addr898);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr737);
                                                                     }
                                                                     addr833:
                                                                     break;
                                                                  }
                                                                  §§goto(addr811);
                                                               }
                                                               break;
                                                            }
                                                            _loc8_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               var _loc9_:* = _loc5_;
                                                               if(_loc11_)
                                                               {
                                                                  addr891:
                                                                  for each(param2 in _loc9_)
                                                                  {
                                                                     addr880:
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr871:
                                                                        §^C§(param2,param1);
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr871);
                                                                              }
                                                                              §§goto(addr891);
                                                                           }
                                                                           §§goto(addr880);
                                                                        }
                                                                        addr877:
                                                                        §§goto(addr877);
                                                                     }
                                                                     addr890:
                                                                     §§goto(addr890);
                                                                  }
                                                                  §§goto(addr894);
                                                               }
                                                               §§goto(addr871);
                                                            }
                                                            addr894:
                                                            if(!_loc11_)
                                                            {
                                                            }
                                                            addr898:
                                                            return;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr833);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr801);
                           }
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc11_ || param1)
                           {
                              §§goto(addr77);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop5;
                              }
                              addr87:
                           }
                        }
                        continue loop2;
                     }
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public static function §"!]§(currentUIView:§6"§, skipChecks:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_)
         {
         }
         var birdName:String = null;
         var i:int = 0;
         var birdSeen:* = false;
         if(!_loc10_)
         {
            while(true)
            {
               while(true)
               {
                  addr60:
                  while(_loc9_)
                  {
                  }
               }
            }
            addr67:
         }
         while(true)
         {
            while(_loc10_)
            {
            }
            if(!isOpen)
            {
               break;
            }
            if(_loc9_)
            {
               if(_loc9_)
               {
                  addr47:
                  if(!_loc10_)
                  {
                     return;
                  }
                  §§goto(addr67);
               }
               §§goto(addr60);
            }
            §§goto(addr47);
         }
         var birdsToShow:Array = §0?§();
         if(!_loc10_)
         {
            loop5:
            while(true)
            {
               §§push(skipChecks);
               if(_loc9_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc10_)
               {
                  while(true)
                  {
                  }
                  addr282:
               }
               while(_loc9_)
               {
                  do
                  {
                     i = birdsToShow.length - 1;
                  }
                  while(_loc10_ && skipChecks);
                  
                  if(_loc10_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(i);
                     if(!_loc10_)
                     {
                        if(_loc9_ || skipChecks)
                        {
                           if(§§pop() < 0)
                           {
                              loop9:
                              for(; !(_loc10_ && skipChecks); if(!(_loc9_ || birdsToShow))
                              {
                                 continue;
                              },addr82:,§§push(AngryBirdsFP11.sUserProgress),if(!_loc10_)
                              {
                                 §§pop().saveTutorialSeen(birdsToShow.toString());
                                 if(_loc9_ || currentUIView)
                                 {
                                    if(_loc9_ || FacebookTutorialPopupManager)
                                    {
                                       if(_loc9_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr82);
                                          }
                                          break loop5;
                                       }
                                       addr357:
                                       §§goto(addr380);
                                       addr357:
                                    }
                                    addr232:
                                    §§push(AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(birdsToShow[i]));
                                    loop13:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          birdSeen = §§pop();
                                          if(!(_loc10_ && skipChecks))
                                          {
                                             if(!(_loc10_ && FacebookTutorialPopupManager))
                                             {
                                                §§push(birdSeen);
                                                if(_loc9_)
                                                {
                                                   continue loop13;
                                                }
                                                continue;
                                             }
                                             §§goto(addr378);
                                          }
                                          §§goto(addr373);
                                       }
                                    }
                                    addr248:
                                 }
                                 §§goto(addr357);
                              },§§goto(addr232))
                              {
                                 if(!_loc9_)
                                 {
                                    birdsToShow.splice(i,1);
                                    addr217:
                                    break;
                                    addr217:
                                 }
                                 while(true)
                                 {
                                    if(birdsToShow.length <= 0)
                                    {
                                       break loop5;
                                    }
                                    if(_loc10_)
                                    {
                                       continue loop9;
                                    }
                                    if(_loc10_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc10_ && currentUIView))
                                    {
                                       continue loop9;
                                    }
                                    addr378:
                                    addr378:
                                    loop22:
                                    while(true)
                                    {
                                       if(_loc10_ && skipChecks)
                                       {
                                          continue;
                                       }
                                       if(_loc9_)
                                       {
                                          return;
                                          addr373:
                                       }
                                       else
                                       {
                                          addr380:
                                       }
                                       while(true)
                                       {
                                          §3!A§();
                                          continue loop22;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          §§goto(addr156);
                                       }
                                       §§goto(addr380);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr248);
                                       }
                                       addr253:
                                    }
                                    §§goto(addr378);
                                 }
                                 §§goto(addr216);
                                 §§goto(addr217);
                              }
                              §§goto(addr373);
                           }
                           §§goto(addr253);
                        }
                        §§goto(addr169);
                     }
                     break;
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_)
                  {
                     var _loc8_:* = birdsToShow;
                     if(!(_loc10_ && birdsToShow))
                     {
                        loop15:
                        for each(birdName in _loc8_)
                        {
                           while(true)
                           {
                              loop17:
                              for(; _loc9_ || currentUIView; loop19:
                              while(_loc9_ || FacebookTutorialPopupManager)
                              {
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop19;
                                    }
                                    if(true)
                                    {
                                       continue loop15;
                                    }
                                    §§goto(addr309);
                                 }
                              })
                              {
                                 while(true)
                                 {
                                    §?!A§(birdName,currentUIView);
                                    continue loop17;
                                 }
                              }
                           }
                        }
                        addr354:
                        if(_loc9_)
                        {
                           §§goto(addr357);
                        }
                        §§goto(addr378);
                     }
                     §§goto(addr322);
                  }
                  §§goto(addr354);
               }
            }
            §§goto(addr289);
            §§push(0);
         }
         §§goto(addr282);
      }
      
      private static function §3!A§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(isOpen);
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(!_loc2_)
                     {
                        addr162:
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
                        {
                        }
                        loop4:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(toBeShown.length > 0);
                              if(_loc2_ && _loc3_)
                              {
                                 while(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          isOpen = true;
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                currentTutorial = toBeShown.pop();
                                                addr91:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop5;
                                                addr37:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              addr143:
                              continue loop4;
                           }
                        }
                        addr162:
                     }
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        §§goto(addr162);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr162);
               }
            }
         }
         §§goto(addr144);
      }
      
      public static function §<Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            loop0:
            while(true)
            {
               if(isOpen == true)
               {
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(toBeShown.length <= 0)
                        {
                           isOpen = false;
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(currentTutorial);
                                    if(!_loc1_)
                                    {
                                       §§push(true);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§pop().preClose(§§pop());
                                          loop5:
                                          while(!_loc1_)
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr133:
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr162:
                                                   while(true)
                                                   {
                                                      addr136:
                                                      while(_loc1_ && _loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            addr170:
                                                            while(true)
                                                            {
                                                               §§push(currentTutorial);
                                                               break loop4;
                                                            }
                                                         }
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      isOpen = false;
                                                   }
                                                }
                                                while(true)
                                                {
                                                }
                                                addr133:
                                             }
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §3!A§(false);
                                                   break loop5;
                                                }
                                                §§goto(addr136);
                                                §§goto(addr133);
                                             }
                                             continue loop2;
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§goto(addr29);
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().preClose(§§pop());
                                          §§goto(addr162);
                                       }
                                       addr160:
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              while(true)
                              {
                                 §§goto(addr160);
                              }
                           }
                        }
                        §§goto(addr169);
                     }
                  }
               }
               addr29:
               return;
            }
         }
         §§goto(addr133);
      }
   }
}
