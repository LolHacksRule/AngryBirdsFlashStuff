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
         if(currentTutorial || FacebookTutorialPopupManager)
         {
            loop0:
            while(true)
            {
               toBeShown = [];
               while(true)
               {
                  loop2:
                  while(currentTutorial || FacebookTutorialPopupManager)
                  {
                     while(true)
                     {
                        currentTutorial = null;
                        while(true)
                        {
                           while(!(toBeShown && FacebookTutorialPopupManager))
                           {
                              isOpen = false;
                              while(toBeShown && FacebookTutorialPopupManager)
                              {
                              }
                              if(!(toBeShown && currentTutorial))
                              {
                                 if(currentTutorial || toBeShown)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                                 continue loop2;
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr109);
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
      
      private static function §?!A§(birdName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc5_)
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
                        if(_loc5_)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                           addr427:
                           if(_loc5_ && currentUIView)
                           {
                              continue;
                           }
                           addr434:
                           §§push(§§newactivation());
                           if(!(_loc5_ && FacebookTutorialPopupManager))
                           {
                              addr401:
                              if(!(_loc5_ && addTutorialToBeShown$1))
                              {
                                 if(_loc6_)
                                 {
                                    §§push("");
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[3] = §§pop();
                                       if(_loc5_)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(!(_loc5_ && addTutorialToBeShown$1))
                                             {
                                                §§goto(addr427);
                                             }
                                             addr437:
                                             addr452:
                                             while(_loc6_)
                                             {
                                                continue loop13;
                                             }
                                             while(_loc6_)
                                             {
                                                §§goto(addr437);
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc6_ || birdName))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr452);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr457:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[2] = currentUIView;
                                                         continue loop10;
                                                         §§goto(addr434);
                                                      }
                                                   }
                                                   addr487:
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop0;
                                       }
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && birdName))
                                       {
                                          addr514:
                                          var _loc4_:* = §§pop().§§slot[1];
                                          if(_loc6_ || currentUIView)
                                          {
                                             §§push("BIRD_BLACK");
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc5_ && addTutorialToBeShown$1))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(0);
                                                            if(_loc6_)
                                                            {
                                                               addr754:
                                                               switch(§§pop())
                                                               {
                                                                  case 7:
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc6_ || addTutorialToBeShown$1))
                                                                        {
                                                                           §§goto(addr514);
                                                                        }
                                                                        if(_loc6_ || birdName)
                                                                        {
                                                                           §§push("TUTORIAL_MIGHTYEAGLE");
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc5_ && addTutorialToBeShown$1))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc6_ || addTutorialToBeShown$1)
                                                                                       {
                                                                                          §§pop().§§slot[3] = §§pop();
                                                                                          addr148:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc5_ && FacebookTutorialPopupManager)
                                                                                             {
                                                                                                §§goto(addr148);
                                                                                             }
                                                                                             if(_loc6_ || birdName)
                                                                                             {
                                                                                                if(_loc6_ || birdName)
                                                                                                {
                                                                                                   if(_loc6_ || currentUIView)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr309:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr313:
                                                                                                      §§push("TUTORIAL_WHITE");
                                                                                                      if(!(_loc5_ && addTutorialToBeShown$1))
                                                                                                      {
                                                                                                         §§pop().§§slot[3] = §§pop();
                                                                                                         addr321:
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr853:
                                                                                                            addr852:
                                                                                                            if(tutorialPopup)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr858:
                                                                                                                  if(_loc6_ || birdName)
                                                                                                                  {
                                                                                                                     toBeShown.push(tutorialPopup);
                                                                                                                     addr882:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr882);
                                                                                                                     }
                                                                                                                     addr875:
                                                                                                                  }
                                                                                                                  §§goto(addr875);
                                                                                                               }
                                                                                                               §§goto(addr882);
                                                                                                            }
                                                                                                            return;
                                                                                                            addr801:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr378:
                                                                                                            var tutorialName:String = "TUTORIAL_BLACK";
                                                                                                            if(_loc6_ || FacebookTutorialPopupManager)
                                                                                                            {
                                                                                                               break;
                                                                                                               addr373:
                                                                                                            }
                                                                                                            addr391:
                                                                                                         }
                                                                                                         §§goto(addr875);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr336:
                                                                                                         if(_loc6_ || birdName)
                                                                                                         {
                                                                                                            §§pop().§§slot[3] = §§pop();
                                                                                                            break;
                                                                                                            addr331:
                                                                                                            addr344:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr378);
                                                                                                   addr328:
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr171:
                                                                                                   §§push("TUTORIAL_BIG_BROTHER");
                                                                                                   if(_loc6_ || currentUIView)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && currentUIView))
                                                                                                         {
                                                                                                            addr188:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc6_ || FacebookTutorialPopupManager)
                                                                                                            {
                                                                                                               §§pop().§§slot[3] = §§pop();
                                                                                                               if(_loc6_ || birdName)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr158:
                                                                                                                     if(!(_loc5_ && currentUIView))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr321);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr359:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr801);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr270:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc6_ || FacebookTutorialPopupManager)
                                                                                                                  {
                                                                                                                     §§pop().§§slot[3] = §§pop();
                                                                                                                     if(_loc6_ || FacebookTutorialPopupManager)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && addTutorialToBeShown$1))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr363:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        §§push("TUTORIAL_BLUE");
                                                                                                                        addr370:
                                                                                                                     }
                                                                                                                     §§goto(addr875);
                                                                                                                  }
                                                                                                                  §§pop().§§slot[3] = §§pop();
                                                                                                                  §§goto(addr359);
                                                                                                                  addr365:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr313);
                                                                                                               }
                                                                                                               §§goto(addr875);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr335:
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      §§goto(addr336);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                }
                                                                                                addr772:
                                                                                                §§pop().§§slot[4] = new §%M§(§^9§.§1<§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§[o§(tutorialName,TextureManager.§8!X§));
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr793:
                                                                                                   if(_loc6_ || addTutorialToBeShown$1)
                                                                                                   {
                                                                                                      §§goto(addr801);
                                                                                                   }
                                                                                                   §§goto(addr875);
                                                                                                }
                                                                                                addr210:
                                                                                             }
                                                                                             §§goto(addr801);
                                                                                          }
                                                                                          §§goto(addr882);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr236:
                                                                                          §§pop().§§slot[3] = §§pop();
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || currentUIView)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr801);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr299:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr262:
                                                                                                      §§push("TUTORIAL_YELLOW");
                                                                                                      if(!(_loc5_ && currentUIView))
                                                                                                      {
                                                                                                         §§goto(addr270);
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      §§goto(addr378);
                                                                                                   }
                                                                                                   §§goto(addr853);
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr858);
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 §§goto(addr262);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr235:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr218:
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_ || addTutorialToBeShown$1)
                                                                              {
                                                                                 if(_loc6_ || currentUIView)
                                                                                 {
                                                                                    §§goto(addr235);
                                                                                    §§push("TUTORIAL_BOOMERANG");
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr334:
                                                                                 §§goto(addr335);
                                                                                 §§push("TUTORIAL_RED");
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr309);
                                                                           }
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr365);
                                                                  case 1:
                                                                     §§goto(addr370);
                                                                  case 0:
                                                                     §§goto(addr391);
                                                                  case 2:
                                                                     if(_loc6_ || addTutorialToBeShown$1)
                                                                     {
                                                                        §§goto(addr334);
                                                                        §§push(§§newactivation());
                                                                     }
                                                                     §§goto(addr373);
                                                                  case 3:
                                                                     §§goto(addr328);
                                                                  case 4:
                                                                     §§goto(addr299);
                                                                  case 5:
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr218);
                                                                        §§push(§§newactivation());
                                                                     }
                                                                     §§goto(addr793);
                                                                  case 6:
                                                                     §§goto(addr210);
                                                                  default:
                                                                     if(_loc6_)
                                                                     {
                                                                        trace("Tutorial not found! " + birdName);
                                                                        return;
                                                                     }
                                                                     §§goto(addr158);
                                                               }
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc5_ && birdName))
                                                                  {
                                                                     §§goto(addr772);
                                                                  }
                                                                  §§goto(addr853);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  if(!(_loc5_ && currentUIView))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                     }
                                                                     addr832:
                                                                     if(_loc6_ || birdName)
                                                                     {
                                                                     }
                                                                     §§goto(addr852);
                                                                  }
                                                                  trace("Tutorial named: " + tutorialName + " Not found");
                                                                  §§goto(addr832);
                                                               }
                                                               §§goto(addr853);
                                                            }
                                                            addr600:
                                                            §§goto(addr754);
                                                         }
                                                         addr738:
                                                         §§push(7);
                                                         if(!(_loc5_ && addTutorialToBeShown$1))
                                                         {
                                                            addr746:
                                                         }
                                                         §§goto(addr754);
                                                      }
                                                      §§push("BIRD_BLUE");
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_ || currentUIView)
                                                         {
                                                            addr555:
                                                            §§push(_loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               addr558:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc5_ && addTutorialToBeShown$1))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc6_ || FacebookTutorialPopupManager)
                                                                     {
                                                                     }
                                                                     §§goto(addr754);
                                                                  }
                                                                  §§goto(addr738);
                                                               }
                                                               §§push("BIRD_RED");
                                                               if(!(_loc5_ && addTutorialToBeShown$1))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr586:
                                                                     §§push(_loc4_);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr592:
                                                                              §§push(2);
                                                                              if(!(_loc5_ && birdName))
                                                                              {
                                                                                 §§goto(addr600);
                                                                              }
                                                                              addr626:
                                                                              §§goto(addr754);
                                                                           }
                                                                           addr654:
                                                                           §§push(4);
                                                                           if(_loc6_ || addTutorialToBeShown$1)
                                                                           {
                                                                           }
                                                                           §§goto(addr754);
                                                                        }
                                                                        §§push("BIRD_WHITE");
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || addTutorialToBeShown$1)
                                                                           {
                                                                              addr612:
                                                                              §§push(_loc4_);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr615:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && FacebookTutorialPopupManager))
                                                                                    {
                                                                                       §§push(3);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr626);
                                                                                       }
                                                                                       addr719:
                                                                                       §§goto(addr754);
                                                                                    }
                                                                                    §§goto(addr654);
                                                                                 }
                                                                                 §§push("BIRD_YELLOW");
                                                                                 if(_loc6_ || FacebookTutorialPopupManager)
                                                                                 {
                                                                                    addr635:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr638:
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc5_ && addTutorialToBeShown$1))
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc6_ || addTutorialToBeShown$1)
                                                                                             {
                                                                                                §§goto(addr654);
                                                                                             }
                                                                                             §§goto(addr738);
                                                                                          }
                                                                                          §§push("BIRD_GREEN");
                                                                                          if(_loc6_ || addTutorialToBeShown$1)
                                                                                          {
                                                                                             addr671:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr674:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc6_ || FacebookTutorialPopupManager)
                                                                                                {
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(5);
                                                                                                         if(!(_loc5_ && birdName))
                                                                                                         {
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                         §§goto(addr746);
                                                                                                      }
                                                                                                      addr749:
                                                                                                      §§push(8);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr752:
                                                                                                      }
                                                                                                      §§goto(addr754);
                                                                                                   }
                                                                                                   §§push("BIRD_REDBIG");
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_ || birdName)
                                                                                                      {
                                                                                                         addr705:
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc6_ || addTutorialToBeShown$1)
                                                                                                         {
                                                                                                            addr713:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(6);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr719);
                                                                                                                  }
                                                                                                                  §§goto(addr752);
                                                                                                               }
                                                                                                               §§goto(addr749);
                                                                                                            }
                                                                                                            §§push("BIRD_SARDINE");
                                                                                                            if(!(_loc5_ && currentUIView))
                                                                                                            {
                                                                                                               addr728:
                                                                                                            }
                                                                                                         }
                                                                                                         addr730:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!(_loc5_ && birdName))
                                                                                                            {
                                                                                                               §§goto(addr738);
                                                                                                            }
                                                                                                            §§goto(addr749);
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr749);
                                                                                                         }
                                                                                                         §§goto(addr754);
                                                                                                         §§push(8);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr705);
                                                                                                }
                                                                                                §§goto(addr730);
                                                                                             }
                                                                                             §§goto(addr705);
                                                                                             §§push(_loc4_);
                                                                                          }
                                                                                          §§goto(addr705);
                                                                                       }
                                                                                       §§goto(addr713);
                                                                                    }
                                                                                    §§goto(addr728);
                                                                                 }
                                                                              }
                                                                              §§goto(addr705);
                                                                           }
                                                                           §§goto(addr674);
                                                                        }
                                                                        §§goto(addr612);
                                                                     }
                                                                     §§goto(addr615);
                                                                  }
                                                                  §§goto(addr635);
                                                               }
                                                               §§goto(addr586);
                                                            }
                                                            §§goto(addr713);
                                                         }
                                                         §§goto(addr586);
                                                      }
                                                      §§goto(addr671);
                                                   }
                                                   §§goto(addr558);
                                                }
                                                §§goto(addr638);
                                             }
                                             §§goto(addr555);
                                          }
                                          §§goto(addr592);
                                       }
                                       §§goto(addr772);
                                    }
                                    while(!(_loc5_ && addTutorialToBeShown$1))
                                    {
                                       §§pop().§§slot[1] = §§pop();
                                       §§goto(addr487);
                                    }
                                    continue loop2;
                                    addr479:
                                 }
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           §§goto(addr457);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private static function §^C§(powerUpName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(_loc6_ || powerUpName)
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
               addr155:
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
                        if(!(_loc6_ || currentUIView))
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(powerUpName);
                              addr134:
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§pop();
                                 loop8:
                                 while(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    for(; !_loc5_; while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_ || FacebookTutorialPopupManager)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                       continue loop9;
                                    },continue loop0)
                                    {
                                       §§pop().§§slot[2] = currentUIView;
                                       loop10:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop10;
                                             loop13:
                                             while(!(_loc5_ && FacebookTutorialPopupManager))
                                             {
                                                continue loop9;
                                                §§pop().§§slot[3] = §§pop();
                                                while(!_loc6_)
                                                {
                                                }
                                                if(_loc5_ && powerUpName)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   if(true)
                                                   {
                                                      try
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc5_ && addPowerUpTutorialToBeShown$1))
                                                         {
                                                            §§pop().§§slot[4] = new TutorialPowerUpPopup(§^9§.§1<§(mTutorialPowerUpPopupBin),currentUIView,CompositeSpriteParser.§[o§(tutorialName,TextureManager.§8!X§),tutorialName);
                                                            if(!(_loc5_ && FacebookTutorialPopupManager))
                                                            {
                                                               if(_loc6_ || addPowerUpTutorialToBeShown$1)
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                               toBeShown.push(tutorialPopup);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      catch(e:Error)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         trace("Tutorial named: " + tutorialName + " Not found");
                                                         addr239:
                                                         if(!_loc6_)
                                                         {
                                                         }
                                                         addr245:
                                                         if(tutorialPopup)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            addr269:
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      addr255:
                                                   }
                                                   continue loop9;
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   continue loop13;
                                                }
                                                addr99:
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc5_ && powerUpName)
            {
               continue;
            }
            §§push(powerUpName);
            if(_loc6_ || powerUpName)
            {
               if(_loc6_ || currentUIView)
               {
                  addr83:
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr134);
               }
               §§goto(addr155);
            }
            §§goto(addr83);
         }
      }
      
      private static function §0?§() : Array
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
                     for each(bird in §]!B§.§>F§.slingshot.§#P§)
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
      
      public static function §,!B§(param1:§6"§, param2:String, param3:Boolean = false) : void
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
                                                                                                               §^C§(param2,param1);
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
      
      public static function §"!]§(currentUIView:§6"§, skipChecks:Boolean = false) : void
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
      
      private static function §3!A§(useFadeEffect:Boolean = true) : void
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
      
      public static function §<Z§() : void
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
                                          §3!A§(false);
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
