package §9v§
{
   import §'N§.§0d§;
   import §-!>§.§4!T§;
   import §8!?§.CompositeSpriteParser;
   import §8!?§.TextureManager;
   import §>!"§.§3>§;
   import §>!"§.Popup;
   import §>!"§.TutorialPopupManager;
   import §>!"§.TutorialPowerUpPopup;
   import §?A§.LevelSlingshotObject;
   import §@!H§.§-!H§;
   
   public class FacebookTutorialPopupManager extends TutorialPopupManager
   {
      
      private static var toBeShown:Array;
      
      private static var currentTutorial:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
      
      {
         var toBeShown:Boolean = true;
         var currentTutorial:Boolean = false;
         if(!currentTutorial)
         {
            while(true)
            {
               toBeShown = [];
               addr88:
               while(true)
               {
               }
            }
            addr90:
         }
         loop2:
         while(true)
         {
            currentTutorial = null;
            while(true)
            {
               if(!currentTutorial)
               {
                  continue loop2;
               }
               §§goto(addr90);
               addr44:
               if(!(currentTutorial && toBeShown))
               {
                  addr61:
                  if(!currentTutorial)
                  {
                     return;
                     addr42:
                  }
                  while(true)
                  {
                     if(currentTutorial)
                     {
                        continue loop2;
                     }
                     §§goto(addr44);
                     §§goto(addr61);
                  }
               }
            }
            §§goto(addr88);
         }
      }
      
      public function FacebookTutorialPopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         do
         {
            while(_loc1_)
            {
            }
         }
         while(_loc1_);
         
      }
      
      private static function §37§(birdName:String, currentUIView:§-!H§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var tutorialPopup:§3>§ = null;
         if(_loc7_ || FacebookTutorialPopupManager)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               addr50:
               addr41:
               while(true)
               {
                  continue loop0;
               }
               if(_loc6_ && currentUIView)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr50);
               }
               else
               {
                  §§push("");
                  if(_loc7_ || birdName)
                  {
                  }
                  var tutorialName:* = §§pop();
                  addr374:
                  var _loc5_:* = birdName;
                  if(!_loc6_)
                  {
                     §§push("BIRD_BLACK");
                     if(!(_loc6_ && currentUIView))
                     {
                        if(!(_loc6_ && FacebookTutorialPopupManager))
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(0);
                                    if(_loc7_ || tutorialName)
                                    {
                                       addr598:
                                       switch(§§pop())
                                       {
                                          case 7:
                                             §§push("TUTORIAL_MIGHTYEAGLE");
                                             if(_loc7_ || tutorialName)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || currentUIView)
                                                   {
                                                      addr149:
                                                      if(_loc7_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ && tutorialName)
                                                            {
                                                               §§goto(addr374);
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_ || currentUIView)
                                                               {
                                                                  tutorialName = §§pop();
                                                                  break;
                                                                  addr171:
                                                                  addr127:
                                                               }
                                                               else
                                                               {
                                                                  addr260:
                                                                  if(!(_loc6_ && birdName))
                                                                  {
                                                                     tutorialName = §§pop();
                                                                     addr268:
                                                                     if(!(_loc6_ && tutorialName))
                                                                     {
                                                                        addr232:
                                                                        if(_loc6_ && tutorialName)
                                                                        {
                                                                           §§goto(addr268);
                                                                        }
                                                                        if(_loc7_ || FacebookTutorialPopupManager)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr360:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr352:
                                                                  if(!(_loc6_ && birdName))
                                                                  {
                                                                     tutorialName = §§pop();
                                                                  }
                                                                  else
                                                                  {
                                                                     addr369:
                                                                     tutorialName = §§pop();
                                                                     addr363:
                                                                     break;
                                                                     addr370:
                                                                     addr363:
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr210:
                                                               if(!_loc6_)
                                                               {
                                                                  if(!(_loc6_ && currentUIView))
                                                                  {
                                                                     if(!(_loc6_ && currentUIView))
                                                                     {
                                                                        tutorialName = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr174:
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc7_ || FacebookTutorialPopupManager)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr320:
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr320);
                                                                                 addr330:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                        else
                                                                        {
                                                                           break;
                                                                           addr296:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr329:
                                                                        tutorialName = §§pop();
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr307:
                                                                     tutorialName = §§pop();
                                                                     if(_loc7_ || birdName)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr370);
                                                                        }
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr292:
                                                                  tutorialName = §§pop();
                                                                  break;
                                                                  addr293:
                                                               }
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         addr252:
                                                         if(_loc7_ || currentUIView)
                                                         {
                                                            §§goto(addr260);
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            addr284:
                                                            if(!(_loc6_ && currentUIView))
                                                            {
                                                               §§goto(addr292);
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               addr349:
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr352);
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  addr368:
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            addr283:
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr210);
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            addr301:
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr306:
                                                                  §§goto(addr307);
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  addr348:
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            else
                                                            {
                                                               addr328:
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      else
                                                      {
                                                         addr251:
                                                         §§goto(addr252);
                                                      }
                                                   }
                                                   addr367:
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr306);
                                             }
                                             §§goto(addr149);
                                          case 1:
                                             §§goto(addr348);
                                          case 0:
                                             §§goto(addr367);
                                          case 2:
                                             addr327:
                                             §§goto(addr328);
                                          case 3:
                                             §§goto(addr301);
                                          case 4:
                                             §§goto(addr283);
                                          case 5:
                                             §§goto(addr251);
                                          case 6:
                                             §§push("TUTORIAL_BLUE");
                                             §§push("TUTORIAL_BLACK");
                                             §§push("TUTORIAL_RED");
                                             §§push("TUTORIAL_WHITE");
                                             §§push("TUTORIAL_YELLOW");
                                             §§push("TUTORIAL_BOOMERANG");
                                             §§push("TUTORIAL_BIG_BROTHER");
                                             if(_loc7_ || birdName)
                                             {
                                                if(_loc7_ || tutorialName)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr149);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr327);
                                                   }
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr149);
                                          default:
                                             addr120:
                                             if(!_loc6_)
                                             {
                                                if(_loc7_)
                                                {
                                                   trace("Tutorial not found! " + birdName);
                                                   addr108:
                                                   if(_loc7_ || currentUIView)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr120);
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr108);
                                                   }
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr127);
                                       }
                                       try
                                       {
                                          tutorialPopup = new §3>§(§0d§.§@A§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§1A§(tutorialName,TextureManager.§&!'§));
                                          if(!_loc6_)
                                          {
                                             if(_loc7_)
                                             {
                                                addr648:
                                                if(tutorialPopup)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_ || currentUIView)
                                                      {
                                                         toBeShown.push(tutorialPopup);
                                                         addr676:
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr676);
                                                         }
                                                         addr661:
                                                      }
                                                   }
                                                   §§goto(addr661);
                                                }
                                                §§goto(addr663);
                                             }
                                             addr663:
                                             return;
                                          }
                                          §§goto(addr676);
                                       }
                                       catch(e:Error)
                                       {
                                          if(_loc6_)
                                          {
                                          }
                                          §§goto(addr648);
                                       }
                                       §§goto(addr648);
                                    }
                                    addr542:
                                    §§goto(addr598);
                                 }
                                 addr466:
                                 §§push(2);
                                 if(_loc7_ || birdName)
                                 {
                                    addr474:
                                 }
                                 §§goto(addr598);
                              }
                              §§push("BIRD_BLUE");
                              if(_loc7_)
                              {
                                 addr411:
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_ || tutorialName)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && tutorialName))
                                          {
                                             §§push(1);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr598);
                                             }
                                             §§goto(addr474);
                                          }
                                          addr560:
                                          §§push(6);
                                          if(_loc7_ || tutorialName)
                                          {
                                             addr568:
                                          }
                                          §§goto(addr598);
                                       }
                                       §§push("BIRD_RED");
                                       if(!(_loc6_ && birdName))
                                       {
                                          addr442:
                                          if(!(_loc6_ && tutorialName))
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc6_ && birdName))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc6_ && tutorialName))
                                                   {
                                                      §§goto(addr466);
                                                   }
                                                   addr593:
                                                   §§push(8);
                                                   if(!_loc6_)
                                                   {
                                                      addr596:
                                                   }
                                                   §§goto(addr598);
                                                }
                                                §§push("BIRD_WHITE");
                                                if(_loc7_ || birdName)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc6_)
                                                      {
                                                         addr489:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(3);
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr598);
                                                               }
                                                               §§goto(addr568);
                                                            }
                                                            §§goto(addr560);
                                                         }
                                                         §§push("BIRD_YELLOW");
                                                         if(_loc7_ || birdName)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr507:
                                                               §§push(_loc5_);
                                                               if(!(_loc6_ && tutorialName))
                                                               {
                                                                  addr515:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr518:
                                                                        §§push(4);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr598);
                                                                        }
                                                                        §§goto(addr542);
                                                                     }
                                                                     addr539:
                                                                     §§push(5);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr542);
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  §§push("BIRD_GREEN");
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc7_ || currentUIView)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr536:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr539);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           addr577:
                                                                           §§push("BIRD_REDBIG");
                                                                           if(_loc7_)
                                                                           {
                                                                              addr546:
                                                                              if(_loc6_)
                                                                              {
                                                                              }
                                                                              addr578:
                                                                              addr579:
                                                                              if(§§pop() === _loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr582:
                                                                                    §§push(7);
                                                                                    if(_loc7_ || currentUIView)
                                                                                    {
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    §§goto(addr596);
                                                                                 }
                                                                                 §§goto(addr593);
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr593);
                                                                              }
                                                                              §§goto(addr598);
                                                                              §§push(8);
                                                                           }
                                                                           §§goto(addr578);
                                                                        }
                                                                        addr557:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr560);
                                                                           }
                                                                           §§goto(addr582);
                                                                        }
                                                                        §§push("BIRD_SARDINE");
                                                                        if(!(_loc6_ && birdName))
                                                                        {
                                                                           §§goto(addr577);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr578);
                                                               }
                                                               §§goto(addr557);
                                                            }
                                                            §§push(_loc5_);
                                                            if(_loc7_ || tutorialName)
                                                            {
                                                               §§goto(addr557);
                                                            }
                                                            §§goto(addr579);
                                                         }
                                                         §§goto(addr578);
                                                      }
                                                      §§goto(addr536);
                                                   }
                                                   §§goto(addr546);
                                                }
                                                §§goto(addr536);
                                             }
                                             §§goto(addr557);
                                          }
                                       }
                                       §§goto(addr546);
                                    }
                                    §§goto(addr489);
                                 }
                              }
                              §§goto(addr507);
                           }
                           §§goto(addr515);
                        }
                        §§goto(addr442);
                     }
                     §§goto(addr411);
                  }
                  §§goto(addr518);
               }
            }
         }
      }
      
      private static function § !Q§(powerUpName:String, currentUIView:§-!H§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var tutorialPopup:TutorialPowerUpPopup = null;
         if(_loc6_ || powerUpName)
         {
            while(true)
            {
               while(_loc6_)
               {
                  addr40:
                  if(!(_loc6_ || powerUpName))
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop3:
                     while(true)
                     {
                        while(_loc6_)
                        {
                           if(_loc7_ && tutorialName)
                           {
                              continue;
                           }
                           §§goto(addr40);
                        }
                        addr56:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
                  §§push(powerUpName);
                  if(_loc6_)
                  {
                     §§push(§§pop());
                  }
                  var tutorialName:* = §§pop();
                  if(!_loc6_)
                  {
                  }
                  try
                  {
                     tutorialPopup = new TutorialPowerUpPopup(§0d§.§@A§(mTutorialPowerUpPopupBin),currentUIView,CompositeSpriteParser.§1A§(tutorialName,TextureManager.§&!'§),tutorialName);
                     if(!(_loc7_ && powerUpName))
                     {
                        if(!(_loc7_ && FacebookTutorialPopupManager))
                        {
                           addr140:
                           if(tutorialPopup)
                           {
                              if(!(_loc7_ && FacebookTutorialPopupManager))
                              {
                                 addr150:
                                 if(!_loc7_)
                                 {
                                    toBeShown.push(tutorialPopup);
                                 }
                              }
                              while(!_loc6_)
                              {
                              }
                              §§goto(addr155);
                           }
                           addr155:
                           return;
                           addr115:
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr115);
                  }
                  catch(e:Error)
                  {
                     if(_loc7_)
                     {
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr155);
               }
            }
         }
         §§goto(addr56);
      }
      
      private static function §@3§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc6_ || birdsToShow)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc6_)
               {
               }
               if(_loc6_)
               {
                  if(true)
                  {
                     var birdsToShow:Array = [];
                     if(_loc5_)
                     {
                     }
                     loop3:
                     for each(bird in §4!T§.§1t§.slingshot.§+I§)
                     {
                        if(_loc6_ || FacebookTutorialPopupManager)
                        {
                           while(birdsToShow.indexOf(bird.name) < 0)
                           {
                              if(_loc5_)
                              {
                              }
                           }
                           continue;
                           addr129:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              birdsToShow.push(bird.name);
                              while(!(_loc6_ || bird))
                              {
                              }
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                  }
                  continue;
                  if(_loc5_ && FacebookTutorialPopupManager)
                  {
                  }
                  return birdsToShow;
               }
               break;
            }
         }
      }
      
      public static function §>!f§(param1:§-!H§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc11_)
         {
         }
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(!(_loc10_ && param1))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     do
                     {
                        while(true)
                        {
                           if(isOpen)
                           {
                              continue;
                           }
                           §§push(param2);
                           if(!(_loc10_ && param1))
                           {
                              §§push(§§pop());
                           }
                           var _loc4_:* = §§pop();
                           if(_loc10_ && param3)
                           {
                           }
                           mPowerUps = [];
                           addr457:
                           if(_loc10_ && param3)
                           {
                              §§goto(addr457);
                           }
                           addr473:
                           var _loc8_:* = param2;
                           if(_loc11_ || param2)
                           {
                              §§push("POWERUP4");
                              if(_loc11_)
                              {
                                 if(!_loc10_)
                                 {
                                    addr487:
                                    §§push(_loc8_);
                                    if(!_loc10_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(0);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr634:
                                                switch(§§pop())
                                                {
                                                   case 1:
                                                      §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                      if(_loc11_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            addr406:
                                                            §§push(§§pop());
                                                            if(_loc10_ && param3)
                                                            {
                                                               §§goto(addr473);
                                                            }
                                                            _loc4_ = §§pop();
                                                            addr384:
                                                            mPowerUps.push(_loc4_);
                                                            addr415:
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               addr377:
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr415);
                                                               }
                                                               addr637:
                                                               §§push(mPowerUps);
                                                               break;
                                                            }
                                                            addr396:
                                                            §§goto(addr396);
                                                            addr383:
                                                         }
                                                         addr442:
                                                         _loc4_ = §§pop();
                                                         addr430:
                                                         mPowerUps.push(_loc4_);
                                                         addr435:
                                                         if(_loc10_ && param1)
                                                         {
                                                            §§goto(addr435);
                                                         }
                                                         §§goto(addr637);
                                                         addr432:
                                                         addr441:
                                                         addr443:
                                                         addr429:
                                                      }
                                                      §§goto(addr406);
                                                   case 3:
                                                      §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                      if(_loc11_ || FacebookTutorialPopupManager)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               addr325:
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc11_ || param3))
                                                                  {
                                                                     §§goto(addr473);
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr306:
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(mPowerUps);
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§pop().push(§§pop());
                                                                                 addr278:
                                                                                 if(!(_loc11_ || param1))
                                                                                 {
                                                                                    addr357:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr345:
                                                                                       §§push(mPowerUps);
                                                                                       if(_loc11_ || param3)
                                                                                       {
                                                                                          addr353:
                                                                                          §§push(_loc4_);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§pop().push(§§pop());
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                          §§goto(addr430);
                                                                                       }
                                                                                       §§goto(addr383);
                                                                                       addr362:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr637);
                                                                                 addr303:
                                                                              }
                                                                              §§goto(addr384);
                                                                           }
                                                                           §§goto(addr353);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr432);
                                                                     addr338:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr371:
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        §§goto(addr362);
                                                                        addr374:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr442);
                                                                     }
                                                                  }
                                                                  §§goto(addr435);
                                                               }
                                                               addr368:
                                                               if(_loc11_)
                                                               {
                                                                  §§goto(addr371);
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  addr440:
                                                                  §§goto(addr441);
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         addr367:
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr325);
                                                   case 0:
                                                      §§goto(addr440);
                                                   case 2:
                                                      §§goto(addr367);
                                                   default:
                                                      §§goto(addr637);
                                                   case 4:
                                                      addr261:
                                                      mPowerUps.push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                      §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                      §§push("POWERUP_TUTORIAL_KINGSLING");
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr252:
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               addr221:
                                                               §§push(mPowerUps);
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     addr231:
                                                                     §§pop().push("POWERUP_TUTORIAL_SUPERSEED");
                                                                     addr233:
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              addr215:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr189:
                                                                                 §§push(mPowerUps);
                                                                                 §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                                 if(_loc11_ || param3)
                                                                                 {
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       §§pop().push(§§pop());
                                                                                       addr205:
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          addr180:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr131:
                                                                                                §§push(mPowerUps);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                                            if(!(_loc10_ && param3))
                                                                                                            {
                                                                                                               §§pop().push(§§pop());
                                                                                                               if(_loc11_ || FacebookTutorialPopupManager)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr131);
                                                                                                                                 }
                                                                                                                                 §§goto(addr637);
                                                                                                                              }
                                                                                                                              §§goto(addr252);
                                                                                                                           }
                                                                                                                           §§goto(addr306);
                                                                                                                        }
                                                                                                                        §§goto(addr303);
                                                                                                                     }
                                                                                                                     §§goto(addr233);
                                                                                                                  }
                                                                                                                  §§goto(addr205);
                                                                                                               }
                                                                                                               §§goto(addr180);
                                                                                                            }
                                                                                                            §§goto(addr189);
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      §§goto(addr221);
                                                                                                   }
                                                                                                   §§goto(addr189);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr443);
                                                                                          }
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 §§goto(addr231);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr435);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr261);
                                                }
                                                var _loc5_:Array = §§pop();
                                                if(_loc11_)
                                                {
                                                   addr860:
                                                   §§push(param3);
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   addr871:
                                                   if(§§pop())
                                                   {
                                                      addr862:
                                                      addr861:
                                                      if(_loc11_ || param3)
                                                      {
                                                         addr845:
                                                         _loc6_ = int(_loc5_.length - 1);
                                                         addr718:
                                                         addr849:
                                                         addr846:
                                                         §§push(_loc6_);
                                                         if(_loc11_)
                                                         {
                                                            if(§§pop() < 0)
                                                            {
                                                               addr724:
                                                               addr725:
                                                               if(_loc5_.length > 0)
                                                               {
                                                                  if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        addr703:
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              addr657:
                                                                              §§push(AngryBirdsFP11.sUserProgress);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§pop().saveTutorialSeen(_loc5_.toString());
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(_loc11_ || param3)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr657);
                                                                                                      }
                                                                                                      addr873:
                                                                                                      _loc8_ = 0;
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         var _loc9_:* = _loc5_;
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr930:
                                                                                                            for each(param2 in _loc9_)
                                                                                                            {
                                                                                                               § !Q§(param2,param1);
                                                                                                               addr895:
                                                                                                               addr921:
                                                                                                               if(_loc11_ || param3)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc11_ || FacebookTutorialPopupManager)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr895);
                                                                                                                        }
                                                                                                                        §§goto(addr930);
                                                                                                                     }
                                                                                                                     §§goto(addr921);
                                                                                                                  }
                                                                                                                  §§goto(addr895);
                                                                                                               }
                                                                                                               addr929:
                                                                                                               §§goto(addr929);
                                                                                                            }
                                                                                                            addr933:
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr937:
                                                                                                               return;
                                                                                                               addr936:
                                                                                                            }
                                                                                                            §§goto(addr937);
                                                                                                         }
                                                                                                         §§goto(addr895);
                                                                                                      }
                                                                                                      §§goto(addr933);
                                                                                                   }
                                                                                                   addr786:
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      _loc5_.splice(_loc6_,1);
                                                                                                      addr766:
                                                                                                      if(_loc11_ || param2)
                                                                                                      {
                                                                                                         addr726:
                                                                                                         §§push(_loc6_);
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  if(!(_loc10_ && param3))
                                                                                                                  {
                                                                                                                     addr753:
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                        {
                                                                                                                           §§goto(addr718);
                                                                                                                        }
                                                                                                                        addr831:
                                                                                                                        if(!(_loc10_ && FacebookTutorialPopupManager))
                                                                                                                        {
                                                                                                                           addr819:
                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                           {
                                                                                                                              addr806:
                                                                                                                              §§push(AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              if(!(_loc10_ && param3))
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr786);
                                                                                                                                          }
                                                                                                                                          §§goto(addr726);
                                                                                                                                       }
                                                                                                                                       §§goto(addr806);
                                                                                                                                    }
                                                                                                                                    §§goto(addr936);
                                                                                                                                 }
                                                                                                                                 §§goto(addr937);
                                                                                                                              }
                                                                                                                              §§goto(addr860);
                                                                                                                           }
                                                                                                                           §§goto(addr862);
                                                                                                                        }
                                                                                                                        §§goto(addr849);
                                                                                                                     }
                                                                                                                     §§goto(addr819);
                                                                                                                  }
                                                                                                                  §§goto(addr873);
                                                                                                               }
                                                                                                               §§goto(addr845);
                                                                                                            }
                                                                                                            §§goto(addr873);
                                                                                                         }
                                                                                                         §§goto(addr753);
                                                                                                      }
                                                                                                      addr780:
                                                                                                      §§goto(addr780);
                                                                                                   }
                                                                                                   §§goto(addr861);
                                                                                                }
                                                                                                §§goto(addr937);
                                                                                             }
                                                                                             §§goto(addr766);
                                                                                          }
                                                                                          §§goto(addr724);
                                                                                       }
                                                                                       §§goto(addr725);
                                                                                    }
                                                                                    §§goto(addr703);
                                                                                 }
                                                                                 §§goto(addr937);
                                                                              }
                                                                              §§goto(addr806);
                                                                           }
                                                                           §§goto(addr846);
                                                                        }
                                                                        §§goto(addr753);
                                                                     }
                                                                     §§goto(addr786);
                                                                  }
                                                                  §§goto(addr937);
                                                               }
                                                               §§goto(addr873);
                                                            }
                                                            §§goto(addr831);
                                                         }
                                                         §§goto(addr873);
                                                      }
                                                      §§goto(addr871);
                                                   }
                                                   §§goto(addr873);
                                                }
                                                §§goto(addr724);
                                             }
                                             addr632:
                                             §§goto(addr634);
                                          }
                                          addr529:
                                          §§push(1);
                                          if(_loc10_ && param2)
                                          {
                                          }
                                          §§goto(addr634);
                                       }
                                       §§push("POWERUP1");
                                       if(!_loc10_)
                                       {
                                          if(_loc11_)
                                          {
                                             addr513:
                                             §§push(_loc8_);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr521:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc10_ && FacebookTutorialPopupManager))
                                                   {
                                                      §§goto(addr529);
                                                   }
                                                   addr570:
                                                   §§push(2);
                                                   if(_loc11_ || FacebookTutorialPopupManager)
                                                   {
                                                      §§goto(addr529);
                                                   }
                                                   §§goto(addr632);
                                                }
                                                §§push("POWERUP2");
                                                if(_loc11_ || param1)
                                                {
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc10_ && FacebookTutorialPopupManager))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc11_ || param1)
                                                            {
                                                               §§goto(addr570);
                                                            }
                                                            addr629:
                                                            §§push(5);
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr632);
                                                            }
                                                            §§goto(addr634);
                                                         }
                                                         §§push("POWERUP3");
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            addr587:
                                                            if(!_loc10_)
                                                            {
                                                               addr590:
                                                               §§push(_loc8_);
                                                               if(_loc11_ || param3)
                                                               {
                                                                  addr598:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                        §§goto(addr634);
                                                                     }
                                                                     §§goto(addr629);
                                                                  }
                                                                  §§push("ALL");
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     addr614:
                                                                     §§push(_loc8_);
                                                                     addr613:
                                                                  }
                                                                  §§goto(addr614);
                                                               }
                                                            }
                                                            §§goto(addr613);
                                                         }
                                                         §§goto(addr590);
                                                      }
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§push(4);
                                                            if(_loc11_ || FacebookTutorialPopupManager)
                                                            {
                                                               §§goto(addr634);
                                                            }
                                                            §§goto(addr632);
                                                         }
                                                         §§goto(addr629);
                                                      }
                                                      if(false)
                                                      {
                                                         §§goto(addr629);
                                                      }
                                                      §§goto(addr634);
                                                      §§push(5);
                                                   }
                                                   §§goto(addr590);
                                                }
                                                §§goto(addr614);
                                             }
                                             §§goto(addr598);
                                          }
                                          §§goto(addr587);
                                       }
                                       §§goto(addr614);
                                    }
                                    §§goto(addr521);
                                 }
                                 §§goto(addr513);
                              }
                              §§goto(addr487);
                           }
                           §§goto(addr529);
                        }
                     }
                     while(!(_loc11_ || FacebookTutorialPopupManager));
                     
                     if(_loc11_ || param1)
                     {
                        if(!_loc10_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public static function §9!X§(currentUIView:§-!H§, skipChecks:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || birdsToShow)
         {
         }
         var birdName:String = null;
         var i:int = 0;
         var birdSeen:Boolean = false;
         if(_loc10_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(_loc10_)
                  {
                     while(true)
                     {
                        if(!(_loc10_ || skipChecks))
                        {
                           continue loop2;
                           if(!_loc9_)
                           {
                              if(_loc10_)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        continue loop1;
                        addr53:
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      private static function §5O§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
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
                  §§push(isOpen);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc2_ || FacebookTutorialPopupManager)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr167:
                                 while(true)
                                 {
                                    §§push(toBeShown.length > 0);
                                    if(_loc2_)
                                    {
                                       if(_loc3_ && useFadeEffect)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                              addr166:
                           }
                           while(true)
                           {
                              if(§§pop())
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
                                             loop10:
                                             while(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc3_ && useFadeEffect))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop1;
                                             }
                                             continue loop7;
                                             addr47:
                                             if(_loc2_ || FacebookTutorialPopupManager)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr56:
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                      addr45:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr47);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr59);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          if(_loc3_)
                                          {
                                             §§goto(addr167);
                                          }
                                       }
                                    }
                                 }
                                 addr130:
                              }
                              return;
                           }
                        }
                        addr156:
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr156);
               }
            }
         }
         §§goto(addr130);
      }
      
      public static function §^6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               if(isOpen == true)
               {
                  loop1:
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
                              while(_loc1_)
                              {
                                 §§push(currentTutorial);
                                 if(_loc1_)
                                 {
                                    §§push(true);
                                    if(_loc1_)
                                    {
                                       §§pop().preClose(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   continue;
                                                }
                                                addr109:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break loop5;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §5O§(false);
                                          break loop4;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr134:
                                    while(true)
                                    {
                                       §§push(false);
                                    }
                                    addr134:
                                 }
                                 while(true)
                                 {
                                    §§pop().preClose(§§pop());
                                    continue loop1;
                                    §§goto(addr134);
                                 }
                                 continue loop0;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    break loop3;
                                 }
                              }
                              loop12:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§goto(addr28);
                                 }
                                 addr114:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc1_ || FacebookTutorialPopupManager)
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop2;
                                       }
                                       isOpen = false;
                                       §§goto(addr109);
                                    }
                                    continue loop12;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr28);
                        }
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               addr28:
               return;
            }
         }
         while(true)
         {
            §§goto(addr134);
         }
      }
   }
}
