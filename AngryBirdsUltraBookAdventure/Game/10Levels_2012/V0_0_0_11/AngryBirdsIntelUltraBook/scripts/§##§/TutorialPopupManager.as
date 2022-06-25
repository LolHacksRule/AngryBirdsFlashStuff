package §##§
{
   import § D§.§]!B§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §2!H§.LevelSlingshotObject;
   import §4!9§.§6"§;
   import §6b§.Log;
   import §6b§.§^9§;
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
         if(mTutorialPopupBin || mTutorialPopupBin)
         {
            loop0:
            while(true)
            {
               mTutorialPopupBin = §4y§;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     mTutorialPowerUpPopupBin = §-_§;
                     loop3:
                     while(mTutorialPopupBin)
                     {
                        loop4:
                        while(!mTutorialPowerUpPopupBin)
                        {
                           mMightyEaglePopupBin = §<!?§;
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 toBeShown = [];
                                 while(true)
                                 {
                                    continue loop0;
                                    addr84:
                                    loop9:
                                    while(!(mTutorialPowerUpPopupBin && mTutorialPopupBin))
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          while(!mTutorialPowerUpPopupBin)
                                          {
                                             if(!mTutorialPowerUpPopupBin)
                                             {
                                                if(!mTutorialPowerUpPopupBin)
                                                {
                                                   loop12:
                                                   while(mTutorialPopupBin)
                                                   {
                                                      isOpen = false;
                                                      while(!mTutorialPowerUpPopupBin)
                                                      {
                                                         continue loop3;
                                                         if(!(mTutorialPopupBin || mTutorialPopupBin))
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§goto(addr55);
                                                         if(mTutorialPopupBin || mTutorialPowerUpPopupBin)
                                                         {
                                                            if(mTutorialPopupBin)
                                                            {
                                                               if(mTutorialPopupBin)
                                                               {
                                                                  break loop10;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                          continue loop9;
                                       }
                                       return;
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
         §§goto(addr91);
      }
      
      public function TutorialPopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               while(_loc1_)
               {
               }
            }
            while(!_loc2_);
            
         }
      }
      
      private static function §?!A§(birdName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
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
                        if(!(_loc5_ || birdName))
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(birdName);
                              addr478:
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§pop();
                                 addr479:
                                 while(_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              addr385:
                              if(_loc5_ || TutorialPopupManager)
                              {
                                 continue loop4;
                              }
                           }
                           addr442:
                           if(!(_loc6_ && currentUIView))
                           {
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr385);
                                    addr432:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc6_ && currentUIView)
                                             {
                                                continue loop11;
                                             }
                                             §§goto(addr442);
                                             addr418:
                                             if(!(_loc5_ || birdName))
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   addr508:
                                                   var _loc4_:* = §§pop().§§slot[1];
                                                   if(!(_loc6_ && TutorialPopupManager))
                                                   {
                                                      §§push("BIRD_BLACK");
                                                      if(_loc5_ || addTutorialToBeShown$0)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || currentUIView)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc6_ && birdName))
                                                                     {
                                                                        addr758:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 7:
                                                                              if(_loc5_ || addTutorialToBeShown$0)
                                                                              {
                                                                                 if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr508);
                                                                                    }
                                                                                    §§push("TUTORIAL_MIGHTYEAGLE");
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc6_ && currentUIView))
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && TutorialPopupManager))
                                                                                                   {
                                                                                                      §§pop().§§slot[3] = §§pop();
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(_loc5_ || TutorialPopupManager)
                                                                                                            {
                                                                                                               if(!(_loc5_ || TutorialPopupManager))
                                                                                                               {
                                                                                                                  addr229:
                                                                                                                  addr200:
                                                                                                               }
                                                                                                            }
                                                                                                            addr877:
                                                                                                            return;
                                                                                                            addr889:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr369:
                                                                                                         }
                                                                                                         try
                                                                                                         {
                                                                                                            addr768:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc5_ || TutorialPopupManager)
                                                                                                            {
                                                                                                               addr776:
                                                                                                               §§pop().§§slot[4] = new §%M§(§^9§.§1<§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§[o§(tutorialName,TextureManager.§8!X§));
                                                                                                               if(_loc5_ || birdName)
                                                                                                               {
                                                                                                                  addr802:
                                                                                                                  if(_loc5_ || birdName)
                                                                                                                  {
                                                                                                                     addr851:
                                                                                                                     §§push(§§newactivation());
                                                                                                                     addr810:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr889);
                                                                                                            }
                                                                                                            if(§§pop().§§slot[4])
                                                                                                            {
                                                                                                               if(_loc5_ || addTutorialToBeShown$0)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr896:
                                                                                                               if(_loc6_ && TutorialPopupManager)
                                                                                                               {
                                                                                                                  §§goto(addr896);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         catch(e:Error)
                                                                                                         {
                                                                                                            if(!(_loc6_ && TutorialPopupManager))
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  trace("Tutorial named: " + tutorialName + " Not found");
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc5_ || addTutorialToBeShown$0)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr851);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr877);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr374:
                                                                                                      §§pop().§§slot[3] = §§pop();
                                                                                                      addr375:
                                                                                                   }
                                                                                                   §§goto(addr369);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr333:
                                                                                                   §§pop().§§slot[3] = §§pop();
                                                                                                   if(!(_loc6_ && currentUIView))
                                                                                                   {
                                                                                                      §§goto(addr768);
                                                                                                      addr319:
                                                                                                   }
                                                                                                   toBeShown.push(tutorialPopup);
                                                                                                   addr875:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr221:
                                                                                                if(_loc5_ || addTutorialToBeShown$0)
                                                                                                {
                                                                                                   §§pop().§§slot[3] = §§pop();
                                                                                                   §§goto(addr229);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr294:
                                                                                                   if(_loc5_ || currentUIView)
                                                                                                   {
                                                                                                      §§pop().§§slot[3] = §§pop();
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr768);
                                                                                                      }
                                                                                                      §§goto(addr875);
                                                                                                      addr302:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr360:
                                                                                                      §§pop().§§slot[3] = §§pop();
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr359:
                                                                                                               §§goto(addr360);
                                                                                                               §§push("TUTORIAL_BLUE");
                                                                                                            }
                                                                                                            §§goto(addr776);
                                                                                                            addr366:
                                                                                                         }
                                                                                                         §§goto(addr768);
                                                                                                      }
                                                                                                      addr361:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr177:
                                                                                             if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                             {
                                                                                                §§pop().§§slot[3] = §§pop();
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr768);
                                                                                                }
                                                                                                §§goto(addr810);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr269:
                                                                                                §§pop().§§slot[3] = §§pop();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr768);
                                                                                                }
                                                                                                §§goto(addr875);
                                                                                                addr270:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr896);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr211:
                                                                                          if(_loc5_ || currentUIView)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr221);
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr325:
                                                                                                if(!(_loc6_ && birdName))
                                                                                                {
                                                                                                   §§goto(addr333);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr359);
                                                                                                }
                                                                                                §§goto(addr896);
                                                                                             }
                                                                                             §§goto(addr359);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr261:
                                                                                             if(_loc5_ || addTutorialToBeShown$0)
                                                                                             {
                                                                                                §§goto(addr269);
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr286:
                                                                                                if(!(_loc6_ && currentUIView))
                                                                                                {
                                                                                                   §§goto(addr294);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr373:
                                                                                                   §§goto(addr374);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr768);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr176:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§goto(addr177);
                                                                                 }
                                                                                 addr190:
                                                                                 if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc6_ && birdName))
                                                                                       {
                                                                                          if(_loc5_ || currentUIView)
                                                                                          {
                                                                                             §§goto(addr176);
                                                                                             §§push("TUTORIAL_BIG_BROTHER");
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr283:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr286);
                                                                                                §§push("TUTORIAL_WHITE");
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr372:
                                                                                                §§push("TUTORIAL_BLACK");
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr768);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr203:
                                                                                          if(_loc5_ || addTutorialToBeShown$0)
                                                                                          {
                                                                                             §§goto(addr211);
                                                                                             §§push("TUTORIAL_BOOMERANG");
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr260:
                                                                                             §§push("TUTORIAL_YELLOW");
                                                                                          }
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr776);
                                                                                 }
                                                                                 §§goto(addr200);
                                                                              }
                                                                              break;
                                                                           case 1:
                                                                              §§goto(addr366);
                                                                           case 0:
                                                                              §§goto(addr372);
                                                                              addr380:
                                                                           case 2:
                                                                              addr346:
                                                                              §§push(§§newactivation());
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr325);
                                                                                 §§push("TUTORIAL_RED");
                                                                              }
                                                                              §§goto(addr768);
                                                                           case 3:
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_ || addTutorialToBeShown$0)
                                                                                 {
                                                                                    §§goto(addr283);
                                                                                    §§push(§§newactivation());
                                                                                 }
                                                                                 §§goto(addr375);
                                                                              }
                                                                              §§goto(addr877);
                                                                           case 4:
                                                                              §§goto(addr260);
                                                                              addr275:
                                                                           case 5:
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && addTutorialToBeShown$0))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                       {
                                                                                          §§goto(addr203);
                                                                                          §§push(§§newactivation());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr380);
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr275);
                                                                                 }
                                                                              }
                                                                              §§goto(addr802);
                                                                           case 6:
                                                                              §§goto(addr190);
                                                                           default:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || currentUIView)
                                                                                    {
                                                                                       trace("Tutorial not found! " + birdName);
                                                                                       if(_loc5_ || addTutorialToBeShown$0)
                                                                                       {
                                                                                          if(_loc5_ || birdName)
                                                                                          {
                                                                                             if(_loc5_ || currentUIView)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr319);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr302);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr270);
                                                                                 }
                                                                              }
                                                                              §§goto(addr851);
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr333);
                                                                        }
                                                                        §§goto(addr877);
                                                                     }
                                                                     addr728:
                                                                     §§goto(addr758);
                                                                  }
                                                                  addr575:
                                                                  §§push(1);
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                                  §§goto(addr758);
                                                               }
                                                               §§push("BIRD_BLUE");
                                                               if(!(_loc6_ && TutorialPopupManager))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ && TutorialPopupManager))
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_ || currentUIView)
                                                                           {
                                                                              §§goto(addr575);
                                                                           }
                                                                           addr658:
                                                                           §§push(4);
                                                                           if(_loc5_ || birdName)
                                                                           {
                                                                           }
                                                                           §§goto(addr758);
                                                                        }
                                                                        §§push("BIRD_RED");
                                                                        if(!(_loc6_ && currentUIView))
                                                                        {
                                                                           addr587:
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr575);
                                                                                       }
                                                                                       addr745:
                                                                                       §§goto(addr758);
                                                                                    }
                                                                                    addr720:
                                                                                    §§push(6);
                                                                                    if(_loc5_ || addTutorialToBeShown$0)
                                                                                    {
                                                                                       §§goto(addr728);
                                                                                    }
                                                                                    §§goto(addr758);
                                                                                 }
                                                                                 §§push("BIRD_WHITE");
                                                                                 if(_loc5_ || addTutorialToBeShown$0)
                                                                                 {
                                                                                    if(!(_loc6_ && TutorialPopupManager))
                                                                                    {
                                                                                       addr616:
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc5_ || birdName)
                                                                                             {
                                                                                                §§push(3);
                                                                                                if(_loc5_ || addTutorialToBeShown$0)
                                                                                                {
                                                                                                   §§goto(addr758);
                                                                                                }
                                                                                                §§goto(addr728);
                                                                                             }
                                                                                             §§goto(addr720);
                                                                                          }
                                                                                          §§push("BIRD_YELLOW");
                                                                                          if(_loc5_ || birdName)
                                                                                          {
                                                                                             addr644:
                                                                                             if(!(_loc6_ && TutorialPopupManager))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr655:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr658);
                                                                                                      }
                                                                                                      addr689:
                                                                                                      §§push(5);
                                                                                                      if(_loc5_ || currentUIView)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr758);
                                                                                                   }
                                                                                                   §§push("BIRD_GREEN");
                                                                                                   if(!(_loc6_ && currentUIView))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr678:
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                                         {
                                                                                                            addr686:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr689);
                                                                                                               }
                                                                                                               addr737:
                                                                                                               §§push(7);
                                                                                                               if(_loc5_ || addTutorialToBeShown$0)
                                                                                                               {
                                                                                                                  §§goto(addr745);
                                                                                                               }
                                                                                                               addr756:
                                                                                                               §§goto(addr758);
                                                                                                            }
                                                                                                            §§push("BIRD_REDBIG");
                                                                                                            if(_loc5_ || birdName)
                                                                                                            {
                                                                                                               addr706:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr709:
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr712:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_ || TutorialPopupManager)
                                                                                                                        {
                                                                                                                           §§goto(addr720);
                                                                                                                        }
                                                                                                                        addr748:
                                                                                                                        §§push(8);
                                                                                                                        if(!(_loc6_ && addTutorialToBeShown$0))
                                                                                                                        {
                                                                                                                           §§goto(addr756);
                                                                                                                        }
                                                                                                                        §§goto(addr758);
                                                                                                                     }
                                                                                                                     §§push("BIRD_SARDINE");
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr732:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr734:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr737);
                                                                                                                     }
                                                                                                                     §§goto(addr748);
                                                                                                                  }
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr748);
                                                                                                                  }
                                                                                                                  §§goto(addr758);
                                                                                                                  §§push(8);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(_loc4_);
                                                                                                         }
                                                                                                         §§goto(addr734);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr732);
                                                                                                }
                                                                                                §§goto(addr712);
                                                                                             }
                                                                                             §§goto(addr709);
                                                                                          }
                                                                                          §§goto(addr678);
                                                                                       }
                                                                                       §§goto(addr712);
                                                                                    }
                                                                                    §§goto(addr706);
                                                                                 }
                                                                                 §§goto(addr732);
                                                                              }
                                                                              §§goto(addr712);
                                                                           }
                                                                           §§goto(addr678);
                                                                        }
                                                                        §§goto(addr616);
                                                                     }
                                                                     §§goto(addr686);
                                                                  }
                                                                  §§goto(addr706);
                                                               }
                                                               §§goto(addr678);
                                                            }
                                                            §§goto(addr655);
                                                         }
                                                         §§goto(addr644);
                                                      }
                                                      §§goto(addr587);
                                                   }
                                                   §§goto(addr689);
                                                }
                                                §§goto(addr776);
                                             }
                                             else
                                             {
                                                §§goto(addr479);
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    addr474:
                                 }
                                 addr410:
                                 §§pop().§§slot[3] = §§pop();
                                 if(!(_loc5_ || birdName))
                                 {
                                    continue;
                                 }
                                 §§goto(addr418);
                              }
                              continue loop4;
                           }
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
         if(_loc5_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr144:
            while(true)
            {
               §§push(§§pop());
               addr145:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  addr146:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §%§(storageName:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && _loc3_)
         {
         }
         if(_loc6_ || storageName)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr84:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               continue loop0;
            }
         }
      }
      
      private static function §0?§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc5_ || _loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(_loc5_)
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
            for each(bird in §]!B§.§>F§.slingshot.§#P§)
            {
               if(!_loc6_)
               {
                  loop4:
                  while(birdsToShow.indexOf(bird.name) < 0)
                  {
                     loop5:
                     for(; _loc5_ || TutorialPopupManager; while(_loc5_ || _loc3_)
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           §§goto(addr126);
                        }
                        §§goto(addr87);
                     })
                     {
                        while(true)
                        {
                           addr87:
                           while(true)
                           {
                              birdsToShow.push(bird.name);
                              continue loop5;
                           }
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr126);
            }
            if(_loc6_ && bird)
            {
            }
            return birdsToShow;
         }
      }
      
      public static function §,!B§(currentUIView:§6"§, storageName:String, powerUpName:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && powerUpName)
         {
         }
         if(_loc7_)
         {
         }
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[6] = 0;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = currentUIView;
                  addr594:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
            if(!(_loc8_ || storageName))
            {
               continue;
            }
            §§goto(addr588);
            §§push(storageName);
         }
      }
      
      public static function §"!]§(currentUIView:§6"§, storageName:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              for(; !_loc7_; while(true)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc6_ || showTutorials$0))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              })
                              {
                                 §§push(storageName);
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§pop().§§slot[2] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc6_ || showTutorials$0))
                                          {
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             if(isOpen)
                                             {
                                                break loop10;
                                             }
                                             continue loop7;
                                          }
                                          addr65:
                                          while(true)
                                          {
                                             if(_loc6_ || TutorialPopupManager)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc6_ || showTutorials$0))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             continue loop10;
                                          }
                                          continue loop4;
                                       }
                                       if(_loc7_)
                                       {
                                       }
                                       §§goto(addr108);
                                       if(_loc6_ || currentUIView)
                                       {
                                          if(_loc6_ || TutorialPopupManager)
                                          {
                                             continue loop7;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           if(!(_loc6_ || currentUIView))
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           §§pop().§§slot[3] = §0?§();
                           §§goto(addr65);
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §3!A§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || TutorialPopupManager)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(isOpen);
                  if(_loc2_ || TutorialPopupManager)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && useFadeEffect))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    isOpen = true;
                                    while(true)
                                    {
                                       loop10:
                                       for(; !_loc3_; if(_loc3_ && _loc2_)
                                       {
                                          continue;
                                       },§§goto(addr68))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop7;
                                          }
                                          currentTutorial = toBeShown.pop();
                                          loop11:
                                          while(true)
                                          {
                                             while(!_loc3_)
                                             {
                                                currentTutorial.open(useFadeEffect);
                                                loop13:
                                                while(!_loc3_)
                                                {
                                                   continue loop10;
                                                   while(true)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                             loop5:
                                             while(_loc2_)
                                             {
                                                §§push(toBeShown.length > 0);
                                                if(_loc2_ || TutorialPopupManager)
                                                {
                                                   addr116:
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop5;
                                                         §§goto(addr116);
                                                      }
                                                      addr174:
                                                   }
                                                }
                                                if(_loc2_ || _loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           return;
                           addr138:
                        }
                        §§goto(addr174);
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §<Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && TutorialPopupManager)
         {
         }
         if(_loc2_)
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
                     while(toBeShown.length <= 0)
                     {
                        isOpen = false;
                        loop3:
                        while(!_loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       §§push(currentTutorial);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§push(true);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§pop().preClose(§§pop());
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                          }
                                          addr169:
                                       }
                                       while(true)
                                       {
                                          §§pop().preClose(§§pop());
                                          loop6:
                                          while(true)
                                          {
                                             break loop3;
                                             addr128:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr135:
                                                   if(_loc2_)
                                                   {
                                                      break loop0;
                                                      addr137:
                                                   }
                                                   break loop4;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr49:
                                    break loop0;
                                    addr110:
                                 }
                                 break loop2;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              §§goto(addr169);
                              §§goto(addr135);
                           }
                           §§goto(addr137);
                        }
                        while(true)
                        {
                           isOpen = false;
                           §§goto(addr162);
                        }
                     }
                     §§goto(addr180);
                  }
               }
               break;
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr98);
            }
            return;
         }
         §§goto(addr110);
      }
   }
}
