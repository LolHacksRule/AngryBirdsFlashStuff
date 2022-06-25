package §>!"§
{
   import §'N§.§0d§;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §8!?§.CompositeSpriteParser;
   import §8!?§.TextureManager;
   import §?A§.LevelSlingshotObject;
   import §@!H§.§-!H§;
   import flash.net.SharedObject;
   
   public class TutorialPopupManager
   {
      
      protected static var mTutorialPopupBin:Class;
      
      protected static var mTutorialPowerUpPopupBin:Class;
      
      protected static var mMightyEaglePopupBin:Class;
      
      private static var toBeShown:Array;
      
      private static var currentTutorial:Popup = null;
      
      private static var mSharedObject:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
      
      {
         var mTutorialPopupBin:Boolean = true;
         var mTutorialPowerUpPopupBin:Boolean = false;
         if(mTutorialPopupBin || TutorialPopupManager)
         {
            loop0:
            while(true)
            {
               mTutorialPopupBin = §%!Y§;
               while(true)
               {
                  addr162:
                  while(!(mTutorialPowerUpPopupBin && TutorialPopupManager))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            currentTutorial = null;
            §§goto(addr98);
         }
      }
      
      public function TutorialPopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               while(!(_loc2_ && this))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr42:
               }
            }
         }
         §§goto(addr42);
      }
      
      private static function §37§(birdName:String, currentUIView:§-!H§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(!_loc5_)
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
                        if(_loc6_ && currentUIView)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        while(!(_loc6_ && currentUIView))
                        {
                           §§push(§§newactivation());
                           continue loop0;
                           addr485:
                           if(!(_loc5_ || TutorialPopupManager))
                           {
                              continue;
                           }
                           addr492:
                           §§push(§§newactivation());
                           if(_loc5_ || addTutorialToBeShown$0)
                           {
                              if(_loc6_)
                              {
                                 continue loop4;
                              }
                              addr437:
                              §§push("");
                              if(!(_loc6_ && currentUIView))
                              {
                                 if(!(_loc5_ || addTutorialToBeShown$0))
                                 {
                                    continue loop2;
                                 }
                                 addr453:
                                 §§pop().§§slot[3] = §§pop();
                                 if(!(_loc5_ || TutorialPopupManager))
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc6_ && addTutorialToBeShown$0))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr485);
                                             }
                                             while(true)
                                             {
                                             }
                                             addr512:
                                          }
                                          while(_loc5_)
                                          {
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr503:
                                             while(_loc5_ || currentUIView)
                                             {
                                                §§pop().§§slot[2] = currentUIView;
                                                §§goto(addr512);
                                                §§goto(addr492);
                                             }
                                             continue loop0;
                                          }
                                          addr524:
                                       }
                                       while(true)
                                       {
                                          continue loop13;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 §§push(§§newactivation());
                                 if(_loc5_ || currentUIView)
                                 {
                                    addr563:
                                    var _loc4_:* = §§pop().§§slot[1];
                                    if(!(_loc6_ && TutorialPopupManager))
                                    {
                                       §§push("BIRD_BLACK");
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc6_ && currentUIView))
                                                   {
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         addr798:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §§push(§§newactivation());
                                                               if(!(_loc5_ || currentUIView))
                                                               {
                                                                  §§goto(addr563);
                                                               }
                                                               addr419:
                                                               §§pop().§§slot[3] = "TUTORIAL_BLACK";
                                                               try
                                                               {
                                                                  addr803:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr806:
                                                                     §§pop().§§slot[4] = new §3>§(§0d§.§@A§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§1A§(tutorialName,TextureManager.§&!'§));
                                                                     if(_loc5_ || addTutorialToBeShown$0)
                                                                     {
                                                                        if(_loc5_ || currentUIView)
                                                                        {
                                                                           addr892:
                                                                           if(tutorialPopup)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr897:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr902:
                                                                                 return;
                                                                                 addr914:
                                                                              }
                                                                           }
                                                                           §§goto(addr902);
                                                                           addr840:
                                                                        }
                                                                        addr921:
                                                                        if(_loc6_ && TutorialPopupManager)
                                                                        {
                                                                           §§goto(addr921);
                                                                        }
                                                                     }
                                                                     §§goto(addr914);
                                                                  }
                                                                  §§goto(addr892);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  if(!(_loc6_ && birdName))
                                                                  {
                                                                     if(_loc5_ || birdName)
                                                                     {
                                                                     }
                                                                     addr876:
                                                                     if(!_loc5_)
                                                                     {
                                                                     }
                                                                     §§goto(addr892);
                                                                  }
                                                                  trace("Tutorial named: " + tutorialName + " Not found");
                                                                  §§goto(addr876);
                                                               }
                                                               §§goto(addr902);
                                                               addr420:
                                                               addr425:
                                                               addr418:
                                                               addr407:
                                                            case 3:
                                                               addr355:
                                                               §§push(§§newactivation());
                                                               if(!(_loc6_ && addTutorialToBeShown$0))
                                                               {
                                                                  addr337:
                                                                  §§push("TUTORIAL_WHITE");
                                                                  if(_loc5_)
                                                                  {
                                                                     addr340:
                                                                     §§pop().§§slot[3] = §§pop();
                                                                     addr341:
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr355);
                                                                     }
                                                                     if(!(_loc6_ && addTutorialToBeShown$0))
                                                                     {
                                                                        addr326:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr386:
                                                                     }
                                                                     §§goto(addr803);
                                                                  }
                                                                  addr362:
                                                                  §§push(§§pop());
                                                                  if(!(_loc6_ && TutorialPopupManager))
                                                                  {
                                                                     §§pop().§§slot[3] = §§pop();
                                                                     addr371:
                                                                     if(_loc6_ && addTutorialToBeShown$0)
                                                                     {
                                                                        §§goto(addr420);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr358:
                                                                     }
                                                                     §§goto(addr803);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr419);
                                                                  }
                                                               }
                                                               §§goto(addr563);
                                                            case 6:
                                                               if(!(_loc6_ && TutorialPopupManager))
                                                               {
                                                                  if(!(_loc6_ && TutorialPopupManager))
                                                                  {
                                                                     if(_loc5_ || addTutorialToBeShown$0)
                                                                     {
                                                                        if(_loc5_ || birdName)
                                                                        {
                                                                           if(_loc6_ && addTutorialToBeShown$0)
                                                                           {
                                                                              §§goto(addr425);
                                                                           }
                                                                           addr179:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc6_ && currentUIView))
                                                                           {
                                                                              addr188:
                                                                              §§push("TUTORIAL_BIG_BROTHER");
                                                                              if(_loc5_ || addTutorialToBeShown$0)
                                                                              {
                                                                                 §§pop().§§slot[3] = §§pop();
                                                                                 if(_loc5_ || currentUIView)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr174:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr803);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr326);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr287:
                                                                                       if(!(_loc6_ && birdName))
                                                                                       {
                                                                                          §§goto(addr803);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr361:
                                                                                          §§goto(addr362);
                                                                                          §§push(§§newactivation());
                                                                                          §§push("TUTORIAL_RED");
                                                                                          addr383:
                                                                                       }
                                                                                       §§goto(addr803);
                                                                                    }
                                                                                    §§goto(addr803);
                                                                                 }
                                                                                 §§goto(addr921);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr308:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().§§slot[3] = §§pop();
                                                                                    §§goto(addr287);
                                                                                    addr311:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr391:
                                                                                    §§pop().§§slot[3] = §§pop();
                                                                                    §§goto(addr386);
                                                                                    addr392:
                                                                                 }
                                                                              }
                                                                              §§goto(addr803);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr251:
                                                                              if(_loc5_ || addTutorialToBeShown$0)
                                                                              {
                                                                                 addr259:
                                                                                 §§push("TUTORIAL_BOOMERANG");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr262:
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc6_ && currentUIView))
                                                                                    {
                                                                                       §§pop().§§slot[3] = §§pop();
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_ || birdName)
                                                                                          {
                                                                                             §§goto(addr803);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr897);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr362);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr390:
                                                                                    §§goto(addr391);
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 §§goto(addr803);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr361);
                                                                              }
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        addr316:
                                                                        if(_loc5_ || currentUIView)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr300:
                                                                              §§push("TUTORIAL_YELLOW");
                                                                              if(_loc5_ || birdName)
                                                                              {
                                                                                 §§goto(addr308);
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr418);
                                                                              }
                                                                              §§goto(addr419);
                                                                           }
                                                                           §§goto(addr892);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  §§goto(addr251);
                                                                  §§push(§§newactivation());
                                                                  addr284:
                                                               }
                                                               break;
                                                            case 7:
                                                               §§push(§§newactivation());
                                                               if(_loc5_ || currentUIView)
                                                               {
                                                                  if(!(_loc6_ && TutorialPopupManager))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push("TUTORIAL_MIGHTYEAGLE");
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_ || addTutorialToBeShown$0)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_ || TutorialPopupManager)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc5_ || birdName)
                                                                                    {
                                                                                       if(!(_loc6_ && TutorialPopupManager))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().§§slot[3] = §§pop();
                                                                                             if(!(_loc6_ && currentUIView))
                                                                                             {
                                                                                                if(_loc5_ || addTutorialToBeShown$0)
                                                                                                {
                                                                                                   addr94:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr341);
                                                                                                   }
                                                                                                   §§goto(addr803);
                                                                                                }
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             §§goto(addr921);
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     addr389:
                                                                     §§goto(addr390);
                                                                     §§push("TUTORIAL_BLUE");
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr563);
                                                            default:
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_ || TutorialPopupManager)
                                                                  {
                                                                     trace("Tutorial not found! " + birdName);
                                                                     if(_loc5_ || TutorialPopupManager)
                                                                     {
                                                                        if(_loc5_ || addTutorialToBeShown$0)
                                                                        {
                                                                           if(!(_loc6_ && currentUIView))
                                                                           {
                                                                              if(_loc6_ && birdName)
                                                                              {
                                                                                 §§goto(addr94);
                                                                              }
                                                                              return;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr921);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               break;
                                                            case 2:
                                                               §§goto(addr383);
                                                            case 1:
                                                               if(!(_loc6_ && birdName))
                                                               {
                                                                  §§goto(addr389);
                                                                  §§push(§§newactivation());
                                                               }
                                                               §§goto(addr840);
                                                            case 4:
                                                               §§goto(addr316);
                                                            case 5:
                                                               §§goto(addr284);
                                                         }
                                                         toBeShown.push(tutorialPopup);
                                                         §§goto(addr921);
                                                      }
                                                      addr613:
                                                      §§goto(addr798);
                                                   }
                                                   addr672:
                                                   §§push(3);
                                                   if(!_loc6_)
                                                   {
                                                      addr675:
                                                   }
                                                   §§goto(addr798);
                                                }
                                                §§push("BIRD_BLUE");
                                                if(!(_loc6_ && addTutorialToBeShown$0))
                                                {
                                                   addr601:
                                                   if(!_loc6_)
                                                   {
                                                      addr604:
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(1);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr613);
                                                               }
                                                               §§goto(addr675);
                                                            }
                                                            §§goto(addr672);
                                                         }
                                                         §§push("BIRD_RED");
                                                         if(!(_loc6_ && birdName))
                                                         {
                                                            addr622:
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc5_ || currentUIView)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_ || birdName)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc6_ && birdName)
                                                                        {
                                                                        }
                                                                        §§goto(addr798);
                                                                     }
                                                                     addr739:
                                                                     §§push(5);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr672);
                                                                     }
                                                                     §§goto(addr798);
                                                                  }
                                                                  §§push("BIRD_WHITE");
                                                                  if(_loc5_)
                                                                  {
                                                                     addr653:
                                                                     if(_loc5_ || addTutorialToBeShown$0)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc5_ || addTutorialToBeShown$0)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr672);
                                                                              }
                                                                              addr787:
                                                                              §§push(7);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr798);
                                                                              }
                                                                              addr796:
                                                                              §§goto(addr798);
                                                                           }
                                                                           §§push("BIRD_YELLOW");
                                                                           if(_loc5_ || birdName)
                                                                           {
                                                                              if(_loc5_ || currentUIView)
                                                                              {
                                                                                 addr692:
                                                                                 §§push(_loc4_);
                                                                                 if(_loc5_ || birdName)
                                                                                 {
                                                                                    addr700:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(4);
                                                                                          if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                          {
                                                                                             §§goto(addr798);
                                                                                          }
                                                                                          §§goto(addr796);
                                                                                       }
                                                                                       addr793:
                                                                                       §§push(8);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr796);
                                                                                       }
                                                                                       §§goto(addr798);
                                                                                    }
                                                                                    §§push("BIRD_GREEN");
                                                                                    if(_loc5_ || addTutorialToBeShown$0)
                                                                                    {
                                                                                       addr720:
                                                                                       if(_loc5_ || addTutorialToBeShown$0)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc5_ || currentUIView)
                                                                                          {
                                                                                             addr736:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr739);
                                                                                                }
                                                                                                §§goto(addr787);
                                                                                             }
                                                                                             §§push("BIRD_REDBIG");
                                                                                             if(_loc6_ && addTutorialToBeShown$0)
                                                                                             {
                                                                                             }
                                                                                             addr784:
                                                                                             addr783:
                                                                                             if(§§pop() === _loc4_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr787);
                                                                                                }
                                                                                                §§goto(addr793);
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr793);
                                                                                             }
                                                                                             §§goto(addr798);
                                                                                             §§push(8);
                                                                                          }
                                                                                          §§goto(addr784);
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr754:
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!(_loc6_ && TutorialPopupManager))
                                                                                                {
                                                                                                   §§push(6);
                                                                                                   if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                                   {
                                                                                                      §§goto(addr739);
                                                                                                   }
                                                                                                   §§goto(addr798);
                                                                                                }
                                                                                                §§goto(addr787);
                                                                                             }
                                                                                             §§push("BIRD_SARDINE");
                                                                                             if(_loc5_ || TutorialPopupManager)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr783);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr784);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr784);
                                                                              }
                                                                           }
                                                                           §§goto(addr784);
                                                                        }
                                                                        §§goto(addr700);
                                                                     }
                                                                     §§goto(addr754);
                                                                  }
                                                                  §§goto(addr720);
                                                               }
                                                               §§goto(addr700);
                                                            }
                                                            §§goto(addr754);
                                                         }
                                                         §§goto(addr692);
                                                      }
                                                      §§goto(addr784);
                                                   }
                                                   §§goto(addr653);
                                                }
                                                §§goto(addr622);
                                             }
                                             §§goto(addr736);
                                          }
                                          §§goto(addr604);
                                       }
                                       §§goto(addr601);
                                    }
                                    §§goto(addr672);
                                 }
                                 §§goto(addr806);
                              }
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§pop();
                                 §§goto(addr524);
                                 §§goto(addr437);
                              }
                           }
                           §§goto(addr503);
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private static function § !Q§(powerUpName:String, currentUIView:§-!H§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && powerUpName)
         {
         }
         if(_loc5_ && addPowerUpTutorialToBeShown$0)
         {
         }
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function §;G§(storageName:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(!_loc6_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr59:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               continue loop0;
            }
         }
      }
      
      private static function §@3§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc5_ || bird)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc6_ && bird)
               {
               }
               if(!(_loc6_ && TutorialPopupManager))
               {
                  if(true)
                  {
                     var birdsToShow:Array = [];
                     if(_loc5_ || _loc3_)
                     {
                     }
                     var _loc3_:int = 0;
                     loop3:
                     for each(bird in §4!T§.§1t§.slingshot.§+I§)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           do
                           {
                              if(birdsToShow.indexOf(bird.name) < 0)
                              {
                                 if(!(_loc5_ || birdsToShow))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           while(!(_loc5_ || TutorialPopupManager));
                           
                           loop5:
                           while(true)
                           {
                              addr112:
                              while(true)
                              {
                                 birdsToShow.push(bird.name);
                                 continue loop5;
                              }
                           }
                           addr151:
                        }
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(_loc5_ || birdsToShow)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr151);
                           }
                           §§goto(addr112);
                        }
                     }
                  }
                  continue;
                  if(_loc6_ && TutorialPopupManager)
                  {
                  }
                  return birdsToShow;
               }
               break;
            }
         }
      }
      
      public static function §>!f§(currentUIView:§-!H§, storageName:String, powerUpName:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         if(!_loc8_)
         {
         }
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = currentUIView;
                  while(!(_loc7_ && storageName))
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(storageName);
                        addr579:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           addr580:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop4;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc7_ && currentUIView)
            {
               continue;
            }
            §§goto(addr574);
            §§push(powerUpName);
         }
      }
      
      public static function §9!X§(currentUIView:§-!H§, storageName:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(!_loc7_)
         {
         }
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = currentUIView;
                           addr154:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(_loc7_)
                              {
                                 §§push(storageName);
                                 if(!_loc6_)
                                 {
                                    §§pop().§§slot[2] = §§pop();
                                    loop8:
                                    while(_loc7_ || currentUIView)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc6_ && currentUIView)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc6_ && TutorialPopupManager)
                                          {
                                             break;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             do
                                             {
                                                if(isOpen)
                                                {
                                                   continue loop10;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc6_ && storageName)
                                                   {
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop7;
                                             }
                                             while(!_loc7_);
                                             
                                             if(!_loc6_)
                                             {
                                                return;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc7_ || showTutorials$0))
            {
               continue;
            }
            §§pop().§§slot[3] = §@3§();
            while(true)
            {
               if(!(_loc6_ && storageName))
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  continue;
               }
               if(!(_loc6_ && showTutorials$0))
               {
                  §§goto(addr47);
               }
               §§goto(addr98);
            }
            §§goto(addr106);
         }
      }
      
      private static function §5O§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(isOpen);
                  if(!(_loc2_ && TutorialPopupManager))
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr163:
                                 while(true)
                                 {
                                    §§push(toBeShown.length > 0);
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr124:
                                    if(_loc3_ || TutorialPopupManager)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                              }
                              addr162:
                           }
                           while(§§pop())
                           {
                              while(true)
                              {
                                 addr144:
                                 while(true)
                                 {
                                    isOpen = true;
                                    while(true)
                                    {
                                       addr96:
                                       while(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr124);
                           }
                           addr29:
                           return;
                        }
                     }
                  }
                  §§goto(addr162);
               }
            }
         }
         §§goto(addr86);
      }
      
      public static function §^6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
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
                     if(toBeShown.length > 0)
                     {
                        loop12:
                        while(true)
                        {
                           loop13:
                           while(true)
                           {
                              §§push(currentTutorial);
                              addr157:
                              loop6:
                              while(true)
                              {
                                 §§push(false);
                                 addr158:
                                 while(true)
                                 {
                                    §§pop().preClose(§§pop());
                                    addr160:
                                    while(true)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          break loop6;
                                       }
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop13;
                                          }
                                          isOpen = false;
                                          while(true)
                                          {
                                             addr126:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §5O§(false);
                                                   addr123:
                                                   break loop0;
                                                   addr123:
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        isOpen = false;
                        while(true)
                        {
                           continue loop1;
                           addr66:
                           if(_loc1_ && TutorialPopupManager)
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr92:
                                 if(!_loc2_)
                                 {
                                    addr59:
                                    while(true)
                                    {
                                       if(!(_loc2_ || TutorialPopupManager))
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr66);
                                       §§goto(addr92);
                                    }
                                    §§goto(addr123);
                                    addr59:
                                 }
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break loop2;
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr123);
                        }
                     }
                  }
                  break loop0;
               }
            }
            break;
            if(!(_loc2_ || _loc1_))
            {
               continue;
            }
            §§push(currentTutorial);
            if(!(_loc1_ && TutorialPopupManager))
            {
               §§push(true);
               if(_loc2_ || _loc1_)
               {
                  §§pop().preClose(§§pop());
                  §§goto(addr59);
               }
               §§goto(addr158);
            }
            §§goto(addr157);
         }
      }
   }
}
