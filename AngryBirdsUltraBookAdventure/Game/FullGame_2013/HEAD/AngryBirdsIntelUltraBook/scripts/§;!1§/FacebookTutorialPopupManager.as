package §;!1§
{
   import §"$§.§3!R§;
   import §"$§.Popup;
   import §"$§.TutorialPopupManager;
   import §"$§.TutorialPowerUpPopup;
   import §,!7§.CompositeSpriteParser;
   import §,!7§.TextureManager;
   import §<u§.§<y§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import §]!@§.LevelSlingshotObject;
   
   public class FacebookTutorialPopupManager extends TutorialPopupManager
   {
      
      private static var toBeShown:Array;
      
      private static var currentTutorial:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
      
      {
         var toBeShown:Boolean = false;
         var currentTutorial:Boolean = true;
         if(currentTutorial || currentTutorial)
         {
            while(true)
            {
               toBeShown = [];
               addr99:
               while(true)
               {
                  addr94:
                  while(true)
                  {
                     currentTutorial = null;
                  }
               }
            }
            addr101:
         }
         loop3:
         while(true)
         {
            loop4:
            while(currentTutorial)
            {
               isOpen = false;
               while(true)
               {
                  if(!(toBeShown && currentTutorial))
                  {
                     continue loop3;
                  }
                  continue loop4;
                  addr81:
                  if(toBeShown && toBeShown)
                  {
                     continue;
                  }
                  if(currentTutorial)
                  {
                     if(!toBeShown)
                     {
                        break loop3;
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr99);
               }
               continue loop3;
            }
            §§goto(addr94);
         }
      }
      
      public function FacebookTutorialPopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            if(_loc1_ || _loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private static function §]e§(birdName:String, currentUIView:§`X§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || tutorialName)
         {
         }
         var tutorialPopup:§3!R§ = null;
         if(!(_loc7_ && tutorialName))
         {
            while(true)
            {
               loop1:
               for(; _loc6_; while(true)
               {
                  if(_loc6_ || currentUIView)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr42);
         }
         §§push("");
         if(_loc7_)
         {
         }
         var tutorialName:* = §§pop();
         §§push(birdName);
         loop5:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push("BIRD_BLACK");
               if(!(_loc7_ && birdName))
               {
                  if(!_loc7_)
                  {
                     §§push(_loc5_);
                     if(!(_loc7_ && tutorialName))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(!(_loc7_ && FacebookTutorialPopupManager))
                              {
                                 addr580:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       addr361:
                                       tutorialName = "TUTORIAL_BLACK";
                                       break loop5;
                                       addr360:
                                       addr362:
                                       addr355:
                                       addr359:
                                    case 1:
                                       §§push("TUTORIAL_BLUE");
                                       if(_loc7_)
                                       {
                                       }
                                       addr351:
                                       tutorialName = §§pop();
                                       break loop5;
                                       addr342:
                                       addr350:
                                       addr352:
                                    case 2:
                                       addr328:
                                       tutorialName = "TUTORIAL_RED";
                                       addr327:
                                       break;
                                       addr326:
                                       addr327:
                                       addr339:
                                    case 3:
                                       addr299:
                                       §§push("TUTORIAL_WHITE");
                                       if(_loc6_ || tutorialName)
                                       {
                                          addr308:
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             tutorialName = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                if(!(_loc7_ && FacebookTutorialPopupManager))
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr292:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr351);
                                          }
                                          §§goto(addr342);
                                       }
                                       else
                                       {
                                          §§goto(addr326);
                                       }
                                    case 4:
                                       addr281:
                                       tutorialName = "TUTORIAL_YELLOW";
                                       addr279:
                                       if(_loc7_ && tutorialName)
                                       {
                                          break;
                                       }
                                       break loop5;
                                       addr274:
                                       break;
                                    case 5:
                                       §§push("TUTORIAL_BOOMERANG");
                                       if(_loc7_)
                                       {
                                       }
                                       addr265:
                                       if(_loc6_)
                                       {
                                          addr268:
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             tutorialName = §§pop();
                                             break loop5;
                                             addr271:
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr360);
                                       }
                                       §§goto(addr361);
                                    case 6:
                                       addr213:
                                       §§push("TUTORIAL_BIG_BROTHER");
                                       if(_loc6_ || tutorialName)
                                       {
                                          if(!(_loc7_ && currentUIView))
                                          {
                                             if(!(_loc7_ && FacebookTutorialPopupManager))
                                             {
                                                if(_loc6_ || currentUIView)
                                                {
                                                   addr242:
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr247:
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               tutorialName = §§pop();
                                                               addr252:
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr292);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr351);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr327);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                else
                                                {
                                                   §§goto(addr359);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr350);
                                             }
                                             §§goto(addr351);
                                          }
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          §§goto(addr265);
                                       }
                                    case 7:
                                       §§push("TUTORIAL_MIGHTYEAGLE");
                                       if(!(_loc7_ && tutorialName))
                                       {
                                          if(_loc6_)
                                          {
                                             if(!(_loc7_ && FacebookTutorialPopupManager))
                                             {
                                                addr155:
                                                if(_loc6_ || FacebookTutorialPopupManager)
                                                {
                                                   if(!(_loc7_ && tutorialName))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr308);
                                                }
                                                else
                                                {
                                                   §§goto(addr242);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr299);
                                             }
                                             §§goto(addr327);
                                          }
                                          else
                                          {
                                             §§goto(addr213);
                                          }
                                       }
                                       §§goto(addr155);
                                    default:
                                       while(true)
                                       {
                                          if(!(_loc7_ && birdName))
                                          {
                                             if(_loc6_ || tutorialName)
                                             {
                                                if(!(_loc7_ && tutorialName))
                                                {
                                                   trace("Tutorial not found! " + birdName);
                                                   for(; _loc6_; if(!(_loc7_ && currentUIView))
                                                   {
                                                      return;
                                                   })
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && birdName))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               break loop5;
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && currentUIView))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr274);
                                                               continue loop12;
                                                            }
                                                            addr194:
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr352);
                                             }
                                             else
                                             {
                                                §§goto(addr271);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr252);
                                          }
                                       }
                                       §§goto(addr351);
                                 }
                                 break;
                                 addr321:
                              }
                           }
                           else
                           {
                              addr412:
                              §§push(1);
                              if(_loc7_)
                              {
                              }
                           }
                           §§goto(addr580);
                        }
                        else
                        {
                           §§push("BIRD_BLUE");
                           if(_loc6_)
                           {
                              addr403:
                              if(_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr412);
                                       }
                                       §§goto(addr580);
                                    }
                                    else
                                    {
                                       §§push("BIRD_RED");
                                       if(_loc6_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc7_ && tutorialName))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || tutorialName)
                                                   {
                                                      §§push(2);
                                                      if(!_loc6_)
                                                      {
                                                         addr498:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr521:
                                                      §§push(5);
                                                      if(_loc7_)
                                                      {
                                                         addr578:
                                                      }
                                                   }
                                                   §§goto(addr580);
                                                }
                                                else
                                                {
                                                   §§push("BIRD_WHITE");
                                                   if(!(_loc7_ && tutorialName))
                                                   {
                                                      addr450:
                                                      if(!(_loc7_ && currentUIView))
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc6_ || FacebookTutorialPopupManager)
                                                         {
                                                            addr466:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr469:
                                                                  §§push(3);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr472);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr555:
                                                                     §§goto(addr580);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr547:
                                                                  §§push(6);
                                                                  if(!(_loc7_ && FacebookTutorialPopupManager))
                                                                  {
                                                                     §§goto(addr555);
                                                                  }
                                                                  §§goto(addr580);
                                                               }
                                                               §§goto(addr580);
                                                            }
                                                            else
                                                            {
                                                               §§push("BIRD_YELLOW");
                                                               if(_loc6_)
                                                               {
                                                                  addr476:
                                                                  if(_loc6_)
                                                                  {
                                                                     addr479:
                                                                     §§push(_loc5_);
                                                                     if(!(_loc7_ && birdName))
                                                                     {
                                                                        addr487:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc7_ && currentUIView))
                                                                           {
                                                                              §§push(4);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr498);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr572:
                                                                                 §§goto(addr580);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr547);
                                                                           }
                                                                           §§goto(addr580);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("BIRD_GREEN");
                                                                           if(!(_loc7_ && birdName))
                                                                           {
                                                                              addr507:
                                                                              if(_loc6_ || FacebookTutorialPopupManager)
                                                                              {
                                                                                 addr515:
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr521);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr575:
                                                                                          §§push(8);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                          §§goto(addr580);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push("BIRD_REDBIG");
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr528:
                                                                                          if(!(_loc7_ && birdName))
                                                                                          {
                                                                                             addr536:
                                                                                             §§push(_loc5_);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc7_ && birdName))
                                                                                                   {
                                                                                                      §§goto(addr547);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr564:
                                                                                                      §§push(7);
                                                                                                      if(_loc6_ || birdName)
                                                                                                      {
                                                                                                         §§goto(addr572);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr578);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr580);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push("BIRD_SARDINE");
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr559:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr580);
                                                                                             }
                                                                                             addr561:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr564);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr575);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr575);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr580);
                                                                                                   §§push(8);
                                                                                                }
                                                                                                §§goto(addr580);
                                                                                             }
                                                                                             §§goto(addr575);
                                                                                          }
                                                                                          §§goto(addr559);
                                                                                       }
                                                                                       §§goto(addr561);
                                                                                       §§push(_loc5_);
                                                                                    }
                                                                                    §§goto(addr575);
                                                                                 }
                                                                                 §§goto(addr561);
                                                                              }
                                                                              §§goto(addr559);
                                                                           }
                                                                           §§goto(addr536);
                                                                        }
                                                                     }
                                                                     §§goto(addr536);
                                                                  }
                                                                  §§goto(addr559);
                                                               }
                                                               §§goto(addr515);
                                                            }
                                                         }
                                                         §§goto(addr487);
                                                      }
                                                      §§goto(addr507);
                                                   }
                                                }
                                                §§goto(addr580);
                                             }
                                             §§goto(addr487);
                                          }
                                          §§goto(addr479);
                                       }
                                       §§goto(addr507);
                                    }
                                 }
                                 §§goto(addr487);
                              }
                              §§goto(addr528);
                           }
                           §§goto(addr476);
                        }
                     }
                     §§goto(addr466);
                  }
                  §§goto(addr450);
               }
               §§goto(addr403);
            }
            §§goto(addr469);
         }
         try
         {
            tutorialPopup = new §3!R§(§<y§.§1P§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§3k§(tutorialName,TextureManager.§7!E§));
            if(!(_loc7_ && currentUIView))
            {
               if(_loc6_ || FacebookTutorialPopupManager)
               {
                  addr645:
                  if(tutorialPopup)
                  {
                     if(_loc6_)
                     {
                        if(!(_loc7_ && birdName))
                        {
                           toBeShown.push(tutorialPopup);
                           while(!_loc6_)
                           {
                           }
                           addr658:
                           addr673:
                        }
                        §§goto(addr660);
                     }
                     §§goto(addr658);
                  }
                  addr660:
                  return;
                  addr615:
               }
               §§goto(addr673);
            }
            §§goto(addr615);
         }
         catch(e:Error)
         {
            if(_loc6_ || FacebookTutorialPopupManager)
            {
            }
            §§goto(addr645);
         }
         §§goto(addr660);
      }
      
      private static function §]>§(powerUpName:String, currentUIView:§`X§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         var tutorialPopup:TutorialPowerUpPopup = null;
         if(_loc6_ || FacebookTutorialPopupManager)
         {
            while(true)
            {
               while(_loc6_ || tutorialName)
               {
                  loop2:
                  while(true)
                  {
                     addr39:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private static function §+d§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(!_loc5_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(!_loc6_)
               {
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var birdsToShow:Array = [];
            if(!_loc5_)
            {
            }
            var _loc3_:int = 0;
            loop3:
            for each(bird in §`S§.§[o§.slingshot.§2!X§)
            {
               if(!(_loc6_ && FacebookTutorialPopupManager))
               {
                  while(true)
                  {
                     if(birdsToShow.indexOf(bird.name) < 0)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        birdsToShow.push(bird.name);
                        while(!_loc5_)
                        {
                        }
                        if(!(_loc6_ && bird))
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop3;
                  }
                  addr126:
               }
               §§goto(addr126);
            }
            if(_loc6_ && _loc3_)
            {
            }
            return birdsToShow;
         }
      }
      
      public static function §`!H§(param1:§`X§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || FacebookTutorialPopupManager)
         {
         }
         var _loc6_:* = 0;
         var _loc7_:Boolean = false;
         if(!(_loc10_ && param1))
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
                     while(!_loc10_)
                     {
                        addr70:
                        if(_loc10_ && param2)
                        {
                           continue;
                        }
                        if(isOpen)
                        {
                           addr53:
                           if(_loc11_)
                           {
                              if(!_loc10_)
                              {
                                 if(!_loc11_)
                                 {
                                    while(!_loc10_)
                                    {
                                       while(true)
                                       {
                                          if(!(_loc11_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr70);
                                          §§goto(addr53);
                                       }
                                       return;
                                    }
                                    continue loop2;
                                    addr80:
                                 }
                                 §§goto(addr60);
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr60);
                        }
                        §§push(param2);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc10_ && param1))
                        {
                           do
                           {
                              mPowerUps = [];
                           }
                           while(!(_loc11_ || FacebookTutorialPopupManager));
                           
                        }
                        §§push(param2);
                        loop9:
                        while(true)
                        {
                           var _loc8_:* = §§pop();
                           if(!(_loc10_ && param3))
                           {
                              §§push("POWERUP4");
                              if(!_loc10_)
                              {
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(_loc8_);
                                    if(_loc11_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc11_)
                                          {
                                             §§push(0);
                                             if(!(_loc11_ || param3))
                                             {
                                                addr574:
                                             }
                                          }
                                          else
                                          {
                                             addr524:
                                             §§push(1);
                                             if(_loc10_ && FacebookTutorialPopupManager)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("POWERUP1");
                                          if(!(_loc10_ && param2))
                                          {
                                             if(_loc11_)
                                             {
                                                addr518:
                                                §§push(_loc8_);
                                                if(_loc11_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         §§goto(addr524);
                                                      }
                                                      else
                                                      {
                                                         addr593:
                                                         §§push(4);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            addr609:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  addr438:
                                                                  §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                  if(!_loc10_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr453:
                                                                     §§push(mPowerUps);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr428:
                                                                        §§pop().push(_loc4_);
                                                                        break;
                                                                        addr430:
                                                                        addr421:
                                                                     }
                                                                     break loop9;
                                                                  }
                                                                  continue;
                                                                  addr453:
                                                                  addr433:
                                                                  break;
                                                               case 1:
                                                                  addr415:
                                                                  _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
                                                                  addr416:
                                                                  if(_loc11_)
                                                                  {
                                                                     addr401:
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        §§push(mPowerUps);
                                                                        if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                        {
                                                                           addr396:
                                                                           §§pop().push(_loc4_);
                                                                           while(_loc10_ && param1)
                                                                           {
                                                                           }
                                                                           break;
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                                  §§goto(addr421);
                                                                  addr414:
                                                                  addr413:
                                                               case 2:
                                                                  §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        addr365:
                                                                        §§push(§§pop());
                                                                        if(!(_loc11_ || FacebookTutorialPopupManager))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        addr343:
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           addr331:
                                                                           §§push(mPowerUps);
                                                                           §§push(_loc4_);
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§pop().push(§§pop());
                                                                              loop45:
                                                                              while(true)
                                                                              {
                                                                                 addr324:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break loop45;
                                                                                    }
                                                                                    continue loop45;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr428);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr416);
                                                                        }
                                                                        addr374:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr414);
                                                                     }
                                                                     §§goto(addr416);
                                                                  }
                                                                  §§goto(addr365);
                                                               case 3:
                                                                  §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr303:
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_ && FacebookTutorialPopupManager)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ && param3)
                                                                                          {
                                                                                             continue loop43;
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr254:
                                                                                             §§push(mPowerUps);
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§pop().push(§§pop());
                                                                                                   addr266:
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr324);
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr433);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr415);
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr438);
                                                                              }
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr413);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr365);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  §§goto(addr303);
                                                               case 4:
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     §§push(mPowerUps);
                                                                     addr223:
                                                                     while(!(_loc10_ && param2))
                                                                     {
                                                                        §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                        while(true)
                                                                        {
                                                                           §§pop().push(§§pop());
                                                                           continue loop32;
                                                                        }
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                            }
                                                            §§push(mPowerUps);
                                                            break;
                                                         }
                                                         addr607:
                                                         §§goto(addr609);
                                                         §§goto(addr609);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("POWERUP2");
                                                      if(_loc11_)
                                                      {
                                                         addr536:
                                                         if(!_loc10_)
                                                         {
                                                            addr539:
                                                            §§push(_loc8_);
                                                            if(_loc11_)
                                                            {
                                                               addr542:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr545:
                                                                     §§push(2);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§goto(addr609);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr574);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr566:
                                                                     §§push(3);
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        §§goto(addr574);
                                                                     }
                                                                     §§goto(addr609);
                                                                  }
                                                                  §§goto(addr609);
                                                               }
                                                               else
                                                               {
                                                                  §§push("POWERUP3");
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr552:
                                                                     if(_loc11_)
                                                                     {
                                                                        addr555:
                                                                        §§push(_loc8_);
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           addr563:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§goto(addr566);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr593);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("ALL");
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 addr583:
                                                                              }
                                                                           }
                                                                           §§goto(addr609);
                                                                        }
                                                                        addr585:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              §§goto(addr593);
                                                                           }
                                                                        }
                                                                        else if(true)
                                                                        {
                                                                           §§goto(addr609);
                                                                           §§push(5);
                                                                        }
                                                                        §§goto(addr609);
                                                                        §§goto(addr609);
                                                                     }
                                                                     §§goto(addr585);
                                                                     §§push(_loc8_);
                                                                  }
                                                                  §§goto(addr555);
                                                               }
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                         §§goto(addr552);
                                                      }
                                                      §§goto(addr583);
                                                   }
                                                   §§goto(addr609);
                                                }
                                                §§goto(addr563);
                                             }
                                             §§goto(addr536);
                                          }
                                          §§goto(addr539);
                                       }
                                       §§goto(addr609);
                                    }
                                    §§goto(addr542);
                                 }
                                 §§goto(addr518);
                              }
                              §§goto(addr552);
                           }
                           §§goto(addr545);
                        }
                        var _loc5_:Array = §§pop();
                        if(_loc11_)
                        {
                           loop11:
                           while(true)
                           {
                              §§push(param3);
                              if(!_loc10_)
                              {
                                 §§push(!§§pop());
                              }
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc11_)
                                          {
                                             §§push(int(_loc5_.length - 1));
                                             loop15:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc11_ || param2)
                                                      {
                                                         if(§§pop() < 0)
                                                         {
                                                            loop21:
                                                            while(!(_loc10_ && param1))
                                                            {
                                                               while(_loc5_.length > 0)
                                                               {
                                                                  continue loop11;
                                                                  if(!(_loc11_ || param2))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
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
                                                                        return;
                                                                     }
                                                                     addr897:
                                                                     addr897:
                                                                     addr897:
                                                                     addr897:
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc10_ && param2)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§goto(addr630);
                                                                                    }
                                                                                    while(!(_loc10_ && param2))
                                                                                    {
                                                                                       §§goto(addr641);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          _loc5_.splice(_loc6_,1);
                                                                                          while(true)
                                                                                          {
                                                                                             break loop21;
                                                                                          }
                                                                                          addr752:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr715:
                                                                                          §§push(_loc6_);
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                addr732:
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   break loop17;
                                                                                                }
                                                                                             }
                                                                                             _loc6_ = §§pop();
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§goto(addr732);
                                                                                          addr793:
                                                                                       }
                                                                                    }
                                                                                    addr743:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§goto(addr715);
                                                                                    addr759:
                                                                                    addr687:
                                                                                 }
                                                                                 §§goto(addr897);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr759);
                                                                                    }
                                                                                    addr758:
                                                                                 }
                                                                                 §§goto(addr715);
                                                                              }
                                                                           }
                                                                           §§goto(addr758);
                                                                        }
                                                                        §§goto(addr752);
                                                                        continue loop21;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                     if(_loc11_ || FacebookTutorialPopupManager)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               break loop17;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  §§goto(addr743);
                                                               }
                                                            }
                                                         }
                                                         else if(_loc10_ && FacebookTutorialPopupManager)
                                                         {
                                                            addr896:
                                                            §§goto(addr897);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr773);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   _loc8_ = §§pop();
                                                   if(_loc11_ || FacebookTutorialPopupManager)
                                                   {
                                                      var _loc9_:* = _loc5_;
                                                      if(!_loc10_)
                                                      {
                                                         addr890:
                                                         for each(param2 in _loc9_)
                                                         {
                                                            addr872:
                                                            §]>§(param2,param1);
                                                            addr889:
                                                            addr881:
                                                            if(_loc11_)
                                                            {
                                                               if(_loc11_ || param2)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr872);
                                                                     }
                                                                     §§goto(addr890);
                                                                  }
                                                                  §§goto(addr889);
                                                               }
                                                               §§goto(addr881);
                                                            }
                                                            addr878:
                                                            §§goto(addr878);
                                                         }
                                                         addr893:
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr896);
                                                         }
                                                         §§goto(addr897);
                                                      }
                                                      §§goto(addr872);
                                                   }
                                                   §§goto(addr893);
                                                }
                                             }
                                          }
                                          §§goto(addr897);
                                       }
                                    }
                                 }
                                 §§goto(addr832);
                              }
                           }
                        }
                        §§goto(addr897);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr85);
         }
      }
      
      public static function §0W§(currentUIView:§`X§, skipChecks:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || skipChecks)
         {
         }
         var birdName:String = null;
         var i:int = 0;
         var birdSeen:Boolean = false;
         if(_loc10_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     addr65:
                     addr72:
                     while(_loc9_ && birdsToShow)
                     {
                        continue loop1;
                     }
                     while(isOpen)
                     {
                        if(!_loc9_)
                        {
                           if(!_loc9_)
                           {
                              if(_loc10_ || skipChecks)
                              {
                                 return;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        §§goto(addr65);
                        §§goto(addr72);
                     }
                     addr85:
                     var birdsToShow:Array = §+d§();
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(skipChecks);
                           if(_loc10_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           addr296:
                           if(_loc9_ && birdsToShow)
                           {
                              continue;
                           }
                           addr164:
                           §§push(i);
                           if(_loc10_)
                           {
                              if(!(_loc9_ && FacebookTutorialPopupManager))
                              {
                                 if(!_loc9_)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       addr179:
                                       addr180:
                                       if(birdsToShow.length > 0)
                                       {
                                          if(_loc10_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      addr156:
                                                      if(!(_loc9_ && FacebookTutorialPopupManager))
                                                      {
                                                         addr110:
                                                         §§push(AngryBirdsFP11.sUserProgress);
                                                         if(_loc10_ || birdsToShow)
                                                         {
                                                            §§pop().saveTutorialSeen(birdsToShow.toString());
                                                            addr125:
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc10_ || currentUIView)
                                                               {
                                                                  if(!(_loc9_ && currentUIView))
                                                                  {
                                                                     if(_loc10_ || skipChecks)
                                                                     {
                                                                        if(_loc10_ || birdsToShow)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr110);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                     addr409:
                                                                     if(!(_loc10_ || FacebookTutorialPopupManager))
                                                                     {
                                                                        while(!_loc9_)
                                                                        {
                                                                           §§goto(addr409);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §8!d§();
                                                                           §§goto(addr407);
                                                                        }
                                                                        addr407:
                                                                        addr411:
                                                                     }
                                                                     return;
                                                                     addr402:
                                                                  }
                                                                  addr240:
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        birdsToShow.splice(i,1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!(_loc9_ && skipChecks))
                                                                           {
                                                                              addr181:
                                                                              §§push(i);
                                                                              if(_loc10_ || currentUIView)
                                                                              {
                                                                                 addr202:
                                                                                 i = §§pop() - 1;
                                                                                 §§goto(addr164);
                                                                                 addr201:
                                                                              }
                                                                              §§goto(addr202);
                                                                           }
                                                                           addr388:
                                                                        }
                                                                        §§goto(addr411);
                                                                        addr245:
                                                                     }
                                                                     if(_loc10_ || skipChecks)
                                                                     {
                                                                        addr258:
                                                                        birdSeen = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(birdsToShow[i]);
                                                                        addr257:
                                                                        §§push(birdSeen);
                                                                        if(_loc10_ || FacebookTutorialPopupManager)
                                                                        {
                                                                           if(!(_loc9_ && currentUIView))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr181);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr258);
                                                                        addr248:
                                                                        addr253:
                                                                        addr259:
                                                                     }
                                                                     §§goto(addr388);
                                                                     addr274:
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr409);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr156);
                                       }
                                       break;
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr202);
                           }
                           addr325:
                           var _loc7_:* = §§pop();
                           if(_loc10_)
                           {
                              var _loc8_:* = birdsToShow;
                              if(!(_loc9_ && birdsToShow))
                              {
                                 loop6:
                                 for each(birdName in _loc8_)
                                 {
                                    while(true)
                                    {
                                       loop8:
                                       for(; !(_loc9_ && skipChecks); while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          if(!_loc10_)
                                          {
                                             continue loop8;
                                          }
                                          if(true)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr347);
                                       })
                                       {
                                          while(true)
                                          {
                                             §]e§(birdName,currentUIView);
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 addr385:
                                 if(_loc10_)
                                 {
                                    §§goto(addr388);
                                 }
                                 §§goto(addr402);
                              }
                              §§goto(addr353);
                           }
                           §§goto(addr385);
                        }
                        §§goto(addr325);
                        §§push(0);
                     }
                     loop13:
                     while(true)
                     {
                        addr321:
                        while(true)
                        {
                           continue loop13;
                        }
                     }
                  }
               }
            }
         }
         else if(false)
         {
            §§goto(addr72);
         }
         §§goto(addr85);
      }
      
      private static function §8!d§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(isOpen);
                  while(true)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           if(_loc3_ || FacebookTutorialPopupManager)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    while(_loc3_)
                                    {
                                       isOpen = true;
                                       while(_loc3_ || FacebookTutorialPopupManager)
                                       {
                                          while(true)
                                          {
                                             currentTutorial = toBeShown.pop();
                                             loop9:
                                             while(true)
                                             {
                                                addr89:
                                                while(true)
                                                {
                                                   currentTutorial.open(useFadeEffect);
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop1;
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr175);
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr142);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public static function § c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            do
            {
               if(isOpen == true)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        if(toBeShown.length <= 0)
                        {
                           isOpen = false;
                           loop3:
                           for(; _loc1_ || _loc2_; loop4:
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       addr178:
                                       break;
                                    }
                                    §§push(currentTutorial);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(true);
                                       if(_loc1_)
                                       {
                                          §§pop().preClose(§§pop());
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc1_ || FacebookTutorialPopupManager)
                                             {
                                                continue;
                                             }
                                          }
                                          while(true)
                                          {
                                             §8!d§(false);
                                             §§goto(addr129);
                                          }
                                          addr139:
                                       }
                                       else
                                       {
                                          addr169:
                                          §§pop().preClose(§§pop());
                                       }
                                       §§goto(addr164);
                                    }
                                    else
                                    {
                                       addr168:
                                       §§push(false);
                                    }
                                    §§goto(addr169);
                                 }
                                 break;
                              }
                              continue loop3;
                           },§§goto(addr168))
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr164:
                              addr164:
                              while(true)
                              {
                                 isOpen = false;
                                 break loop3;
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr178);
                     }
                     break loop0;
                  }
               }
               break;
            }
            while(_loc2_ && _loc2_);
            
            return;
         }
         §§goto(addr164);
      }
   }
}
