package §"$§
{
   import §,!7§.CompositeSpriteParser;
   import §,!7§.TextureManager;
   import §<u§.§<y§;
   import §<u§.Log;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import §]!@§.LevelSlingshotObject;
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
            while(true)
            {
               mTutorialPopupBin = §[#§;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     mTutorialPowerUpPopupBin = §?i§;
                     addr156:
                     while(!mTutorialPowerUpPopupBin)
                     {
                     }
                     continue loop1;
                     loop8:
                     for(; mTutorialPopupBin || mTutorialPowerUpPopupBin; if(!(mTutorialPowerUpPopupBin && TutorialPopupManager))
                     {
                        return;
                     })
                     {
                        currentTutorial = null;
                        while(mTutorialPopupBin)
                        {
                           loop10:
                           while(true)
                           {
                              addr87:
                              addr119:
                              while(!(mTutorialPowerUpPopupBin && mTutorialPopupBin))
                              {
                                 isOpen = false;
                                 continue loop10;
                                 if(!(mTutorialPowerUpPopupBin && mTutorialPowerUpPopupBin))
                                 {
                                    continue loop8;
                                 }
                              }
                              while(true)
                              {
                                 continue loop8;
                                 §§goto(addr87);
                              }
                           }
                        }
                        while(mTutorialPopupBin || mTutorialPowerUpPopupBin)
                        {
                           toBeShown = [];
                           §§goto(addr119);
                        }
                        §§goto(addr145);
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public function TutorialPopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            if(_loc1_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private static function §]e§(birdName:String, currentUIView:§`X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || addTutorialToBeShown$0)
         {
         }
         if(_loc6_)
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
                        if(!(_loc5_ || currentUIView))
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc5_)
                           {
                              §§push(birdName);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§pop();
                                 addr478:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§pop().§§slot[2] = currentUIView;
                                       addr471:
                                       while(true)
                                       {
                                          continue loop5;
                                       }
                                       addr451:
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private static function §]>§(powerUpName:String, currentUIView:§`X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && TutorialPopupManager)
         {
         }
         if(_loc6_ && powerUpName)
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
               addr159:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  addr160:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(_loc6_)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(powerUpName);
                              addr145:
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§pop();
                                 addr146:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr118:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    continue loop4;
                                 }
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
      
      public static function §'!a§(storageName:String) : void
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
            addr64:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               continue loop0;
            }
         }
      }
      
      private static function §+d§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var birdsToShow:Array = [];
         if(!_loc6_)
         {
         }
         var _loc3_:int = 0;
         for each(bird in §`S§.§[o§.slingshot.§2!X§)
         {
            if(!(_loc5_ && _loc3_))
            {
               while(birdsToShow.indexOf(bird.name) < 0)
               {
                  loop6:
                  while(_loc6_ || _loc3_)
                  {
                     loop7:
                     while(true)
                     {
                        addr98:
                        while(true)
                        {
                           birdsToShow.push(bird.name);
                           continue loop7;
                        }
                        continue loop6;
                     }
                  }
               }
               continue;
            }
            §§goto(addr96);
         }
         if(_loc6_ || TutorialPopupManager)
         {
         }
         return birdsToShow;
      }
      
      public static function §`!H§(currentUIView:§`X§, storageName:String, powerUpName:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || powerUpName)
         {
         }
         if(_loc8_ || TutorialPopupManager)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            addr574:
            while(true)
            {
               §§push(§§newactivation());
               addr567:
               while(true)
               {
                  §§pop().§§slot[1] = currentUIView;
                  addr569:
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr562:
                     while(true)
                     {
                        §§push(storageName);
                        addr563:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           addr564:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §0W§(currentUIView:§`X§, storageName:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || showTutorials$0)
         {
         }
         if(_loc6_)
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
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr152:
                     while(_loc7_ || TutorialPopupManager)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     continue loop2;
                     addr60:
                     if(!(_loc7_ || currentUIView))
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = §+d§();
                     loop13:
                     while(true)
                     {
                        if(!(_loc7_ || TutorialPopupManager))
                        {
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc6_ && TutorialPopupManager)
                                    {
                                       continue loop0;
                                    }
                                    §§push(storageName);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[2] = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!(_loc6_ && storageName))
                                          {
                                             addr107:
                                             if(!(_loc7_ || TutorialPopupManager))
                                             {
                                                break;
                                                addr95:
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break loop13;
                                                }
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       addr140:
                                       while(_loc7_ || TutorialPopupManager)
                                       {
                                          §§push(§§newactivation());
                                          continue loop7;
                                          §§goto(addr107);
                                       }
                                       §§goto(addr152);
                                    }
                                 }
                                 continue loop1;
                                 addr117:
                              }
                              §§goto(addr60);
                           }
                           return;
                        }
                        addr56:
                        addr89:
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(_loc6_ && showTutorials$0)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           if(_loc7_ || TutorialPopupManager)
                           {
                              if(_loc7_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr56);
                                 }
                                 else
                                 {
                                    try
                                    {
                                       §§push(§§newactivation());
                                       if(_loc7_ || currentUIView)
                                       {
                                          §§push(Boolean(§§pop().§§slot[2]));
                                          if(_loc7_ || currentUIView)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr445:
                                                      if(!mSharedObject)
                                                      {
                                                         mSharedObject = SharedObject.getLocal(storageName);
                                                         if(_loc7_ || storageName)
                                                         {
                                                         }
                                                         return;
                                                         addr562:
                                                         addr447:
                                                         addr441:
                                                         addr446:
                                                      }
                                                      addr417:
                                                      var i:int = birdsToShow.length - 1;
                                                      addr219:
                                                      addr416:
                                                      addr422:
                                                      addr415:
                                                      §§push(§§newactivation());
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop().§§slot[5]);
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() < 0)
                                                                        {
                                                                           addr236:
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr211:
                                                                              mSharedObject.flush();
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!(_loc6_ && showTutorials$0))
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr211);
                                                                                                }
                                                                                                addr486:
                                                                                                var _loc4_:int = 0;
                                                                                                if(!(_loc6_ && storageName))
                                                                                                {
                                                                                                   var _loc5_:* = birdsToShow;
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr547:
                                                                                                      for each(birdName in _loc5_)
                                                                                                      {
                                                                                                         addr520:
                                                                                                         if(!(_loc6_ && currentUIView))
                                                                                                         {
                                                                                                            addr509:
                                                                                                            §]e§(birdName,currentUIView);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr509);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               §§goto(addr520);
                                                                                                            }
                                                                                                            addr517:
                                                                                                            §§goto(addr517);
                                                                                                            addr527:
                                                                                                         }
                                                                                                         addr546:
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      addr550:
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §8!d§();
                                                                                                         addr567:
                                                                                                         if(!(_loc6_ && storageName))
                                                                                                         {
                                                                                                            addr574:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr562);
                                                                                                            addr574:
                                                                                                         }
                                                                                                         addr576:
                                                                                                         §§goto(addr576);
                                                                                                         addr553:
                                                                                                      }
                                                                                                      §§goto(addr574);
                                                                                                   }
                                                                                                   §§goto(addr527);
                                                                                                }
                                                                                                §§goto(addr550);
                                                                                                addr448:
                                                                                             }
                                                                                             §§goto(addr447);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                                 §§goto(addr574);
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                           addr340:
                                                                           if(_loc7_ || TutorialPopupManager)
                                                                           {
                                                                              mSharedObject.data[birdName] = true;
                                                                              addr301:
                                                                              §§push(§§newactivation());
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr249:
                                                                                    i = §§pop().§§slot[5] - 1;
                                                                                    addr247:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr446);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                    §§goto(addr574);
                                                                                 }
                                                                                 addr391:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc7_ || TutorialPopupManager)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[3]);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§pop().§§slot[4] = §§pop()[i];
                                                                                       addr407:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr366:
                                                                                             §§push(mSharedObject.data[birdName] == undefined);
                                                                                             if(_loc7_ || TutorialPopupManager)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr371:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc6_ && storageName))
                                                                                                   {
                                                                                                      §§push(mSharedObject.data[birdName] == false);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && TutorialPopupManager))
                                                                                                         {
                                                                                                            addr321:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr323:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc6_ && currentUIView))
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && storageName))
                                                                                                                     {
                                                                                                                        §§goto(addr340);
                                                                                                                     }
                                                                                                                     §§goto(addr407);
                                                                                                                  }
                                                                                                                  §§goto(addr574);
                                                                                                               }
                                                                                                               addr269:
                                                                                                               birdsToShow.splice(i,1);
                                                                                                               if(_loc7_ || showTutorials$0)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§goto(addr301);
                                                                                                                  }
                                                                                                                  §§goto(addr567);
                                                                                                               }
                                                                                                               §§goto(addr574);
                                                                                                            }
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                   }
                                                                                                   §§goto(addr553);
                                                                                                }
                                                                                                §§goto(addr445);
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                          §§push(§§newactivation());
                                                                                          addr412:
                                                                                       }
                                                                                       §§goto(addr562);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr416);
                                                                              }
                                                                              §§goto(addr269);
                                                                              addr347:
                                                                           }
                                                                           §§goto(addr422);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§goto(addr486);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr567);
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr448);
                                          }
                                          §§goto(addr321);
                                       }
                                       §§goto(addr323);
                                    }
                                    catch(e:Error)
                                    {
                                       if(!(_loc6_ && showTutorials$0))
                                       {
                                          if(_loc6_)
                                          {
                                          }
                                          addr475:
                                          if(_loc6_ && TutorialPopupManager)
                                          {
                                          }
                                          §§goto(addr486);
                                       }
                                       Log.log("Unable to get local storage");
                                       §§goto(addr475);
                                    }
                                    §§goto(addr562);
                                 }
                              }
                              §§goto(addr95);
                           }
                           addr88:
                        }
                        §§goto(addr89);
                     }
                     while(!isOpen)
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr88);
                  }
               }
            }
         }
      }
      
      private static function §8!d§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || useFadeEffect)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(isOpen);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop12:
                           while(true)
                           {
                              §§pop();
                              addr177:
                              while(true)
                              {
                                 §§push(toBeShown.length > 0);
                                 if(!(_loc2_ || TutorialPopupManager))
                                 {
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          addr141:
                                          while(true)
                                          {
                                             isOpen = true;
                                             continue loop1;
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 addr28:
                                 addr139:
                                 continue loop12;
                              }
                           }
                           addr176:
                        }
                        while(true)
                        {
                           §§goto(addr139);
                           §§goto(addr137);
                        }
                     }
                  }
                  §§goto(addr176);
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               currentTutorial = toBeShown.pop();
               loop9:
               do
               {
                  loop10:
                  while(true)
                  {
                     if(_loc2_ || TutorialPopupManager)
                     {
                        currentTutorial.open(useFadeEffect);
                        for(; _loc2_; if(_loc2_)
                        {
                           continue loop10;
                        })
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr107);
                     }
                     break;
                     if(!(_loc3_ && useFadeEffect))
                     {
                        continue loop9;
                     }
                  }
                  §§goto(addr140);
               }
               while(!_loc2_);
               
               if(_loc3_)
               {
                  §§goto(addr88);
               }
               addr47:
               §§goto(addr28);
            }
         }
         §§goto(addr47);
      }
      
      public static function § c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && TutorialPopupManager)
         {
         }
         if(!(_loc2_ && _loc1_))
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
                           while(_loc1_)
                           {
                              loop4:
                              while(_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(currentTutorial);
                                 if(_loc1_ || TutorialPopupManager)
                                 {
                                    §§push(true);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§pop().preClose(§§pop());
                                       while(!_loc2_)
                                       {
                                          if(_loc2_ && TutorialPopupManager)
                                          {
                                             continue;
                                          }
                                          if(!_loc1_)
                                          {
                                             continue loop4;
                                          }
                                          if(!(_loc2_ && TutorialPopupManager))
                                          {
                                             §§goto(addr33);
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr125:
                                                if(_loc1_ || TutorialPopupManager)
                                                {
                                                   §8!d§(false);
                                                   break loop3;
                                                }
                                                while(true)
                                                {
                                                   break loop4;
                                                }
                                                addr166:
                                             }
                                             addr137:
                                             while(true)
                                             {
                                                continue loop8;
                                             }
                                             §§goto(addr125);
                                          }
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       §§pop().preClose(§§pop());
                                       §§goto(addr166);
                                    }
                                    addr164:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr164);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    isOpen = false;
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr174:
                                       while(true)
                                       {
                                          §§goto(addr163);
                                       }
                                    }
                                    addr173:
                                 }
                                 §§goto(addr125);
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr173);
                     }
                  }
               }
               addr33:
               return;
            }
         }
         §§goto(addr174);
      }
   }
}
