package §'!s§
{
   import §#^§.§7!A§;
   import §3!7§.§>,§;
   import §6!D§.§0Y§;
   import §6!D§.§9R§;
   import §6o§.§5!C§;
   import §7r§.§@M§;
   import §9"!§.§;!M§;
   import §]!A§.;
   
   public class §!'§ extends §'N§
   {
      
      private static var §!%§:Array;
      
      private static var §4<§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §+!-§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!%§ = [];
            while(true)
            {
               §4<§ = null;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            isOpen = false;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      private static function §?!W§(param1:String, param2:§7!A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr219:
                        while(_loc6_)
                        {
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      private static function §5"8§(param1:String, param2:§7!A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr76:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr77:
                     while(!(_loc6_ && param2))
                     {
                        do
                        {
                           §§push(§§newactivation());
                           continue loop2;
                        }
                        while(false);
                        
                        try
                        {
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              §§pop().§§slot[4] = new §@M§(§5!C§.§9G§(§=!c§),currentUIView,tutorialName);
                              §§goto(addr144);
                           }
                           if(§§pop().§§slot[4])
                           {
                              if(!_loc6_)
                              {
                                 §!%§.push(tutorialPopup);
                              }
                           }
                        }
                        catch(e:Error)
                        {
                           §§goto(addr135);
                        }
                        addr144:
                        if(!(_loc6_ && param1))
                        {
                           addr135:
                           §§push(§§newactivation());
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private static function §0!"§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;!M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#6§.§6!z§.slingshot.§ L§)
         {
            if(!(_loc6_ && _loc1_))
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §0!J§(param1:§7!A§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(_loc10_)
         {
            if(isOpen)
            {
               if(!_loc11_)
               {
                  return;
               }
            }
         }
         §§push(param2);
         if(_loc10_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc10_)
         {
            §+!-§ = [];
         }
         var _loc8_:* = param2;
         if(_loc10_)
         {
            §§push(§>,§.§&m§.§[2§);
            if(!(_loc11_ && param2))
            {
               §§push(_loc8_);
               if(!_loc11_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc10_)
                     {
                        addr400:
                        §§push(0);
                        if(_loc11_)
                        {
                           addr483:
                        }
                     }
                     else
                     {
                        addr425:
                        §§push(1);
                        if(!_loc10_)
                        {
                           addr494:
                        }
                     }
                  }
                  else
                  {
                     §§push(§>,§.§^Q§.§[2§);
                     if(_loc10_ || §!'§)
                     {
                        §§push(_loc8_);
                        if(_loc10_ || param2)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc10_)
                              {
                                 §§goto(addr425);
                              }
                              else
                              {
                                 addr450:
                                 §§push(2);
                                 if(_loc10_)
                                 {
                                    addr534:
                                    loop29:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr371:
                                          _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                          addr365:
                                          §+!-§.push(_loc4_);
                                          addr536:
                                          break;
                                          addr372:
                                          addr364:
                                          addr366:
                                       case 1:
                                          addr360:
                                          _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
                                          §+!-§.push(_loc4_);
                                          §§goto(addr536);
                                       case 2:
                                          addr325:
                                          §§push(§+!-§);
                                          §§push("POWERUP_TUTORIAL_KINGSLING");
                                          if(!(_loc11_ && param2))
                                          {
                                             if(_loc10_ || param2)
                                             {
                                                _loc4_ = §§pop();
                                                loop0:
                                                do
                                                {
                                                   §§push(§+!-§);
                                                   addr304:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr305:
                                                      while(true)
                                                      {
                                                         if(_loc10_ || §!'§)
                                                         {
                                                            §§pop().push(§§pop());
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(_loc11_ && param1);
                                                
                                                §§goto(addr536);
                                             }
                                             else
                                             {
                                                §§goto(addr371);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr360);
                                          }
                                          §§goto(addr371);
                                       case 3:
                                          addr300:
                                          _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
                                          addr287:
                                          §§push(§+!-§);
                                          §§push(_loc4_);
                                          if(!(_loc11_ && param2))
                                          {
                                             §§pop().push(§§pop());
                                             addr295:
                                          }
                                          else
                                          {
                                             §§goto(addr360);
                                          }
                                          §§goto(addr371);
                                          addr301:
                                       case 4:
                                          §§push("POWERUP_TUTORIAL_EXTRABIRD");
                                          if(_loc10_)
                                          {
                                             if(_loc10_ || param3)
                                             {
                                                _loc4_ = §§pop();
                                                addr276:
                                                if(!(_loc11_ && param2))
                                                {
                                                   addr255:
                                                   §§push(§+!-§);
                                                   §§push(_loc4_);
                                                   if(!_loc11_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§pop().push(§§pop());
                                                         addr261:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr295);
                                             }
                                             else
                                             {
                                                §§goto(addr325);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr300);
                                          }
                                          §§goto(addr300);
                                       case 5:
                                          addr241:
                                          §§push(§+!-§);
                                          if(!_loc11_)
                                          {
                                             addr244:
                                             §§pop().push("POWERUP_TUTORIAL_BIRDQUAKE");
                                             if(_loc10_ || param3)
                                             {
                                                addr216:
                                                §§push(§+!-§);
                                                if(!_loc11_)
                                                {
                                                   if(!(_loc11_ && §!'§))
                                                   {
                                                      §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§pop().push(§§pop());
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(!(_loc11_ && param3))
                                                               {
                                                                  §§push(§+!-§);
                                                                  while(true)
                                                                  {
                                                                     addr201:
                                                                     §§pop().push("POWERUP_TUTORIAL_KINGSLING");
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(!(_loc11_ && param3))
                                                                        {
                                                                           addr186:
                                                                           §§push(§+!-§);
                                                                           §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  addr200:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr372);
                                                               }
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                   }
                                                   §§goto(addr364);
                                                }
                                                else
                                                {
                                                   §§goto(addr300);
                                                }
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr304);
                                       case 6:
                                          §§push(§+!-§);
                                          loop5:
                                          for(; _loc10_; while(!(_loc11_ && §!'§))
                                          {
                                             §§push("POWERUP_TUTORIAL_SUPERSEED");
                                             while(_loc10_)
                                             {
                                                §§pop().push(§§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§+!-§);
                                                   addr124:
                                                   while(_loc10_ || §!'§)
                                                   {
                                                      §§push("POWERUP_TUTORIAL_KINGSLING");
                                                      while(!(_loc11_ && param3))
                                                      {
                                                         §§pop().push(§§pop());
                                                         continue loop10;
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr360);
                                                }
                                             }
                                             §§goto(addr187);
                                             if(!(_loc10_ || param2))
                                             {
                                                continue;
                                             }
                                             if(_loc10_)
                                             {
                                                §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                loop15:
                                                while(true)
                                                {
                                                   §§pop().push(§§pop());
                                                   while(_loc10_)
                                                   {
                                                      §§push(§+!-§);
                                                      if(_loc10_)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            if(_loc10_ || param2)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     §§push("POWERUP_TUTORIAL_EXTRABIRD");
                                                                     if(_loc11_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!(_loc11_ && param2))
                                                                              {
                                                                                 §§pop().push(§§pop());
                                                                                 if(_loc10_ || §!'§)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!(_loc11_ && param2))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr99);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr172);
                                                                                       }
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr140);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                              §§goto(addr201);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr171);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr160);
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                     §§goto(addr132);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr241);
                                                                  }
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      break loop29;
                                                   }
                                                   §§goto(addr195);
                                                }
                                             }
                                             §§goto(addr255);
                                          })
                                          {
                                             §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                             while(true)
                                             {
                                                §§pop().push(§§pop());
                                                addr172:
                                                while(true)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      if(!(_loc10_ || param2))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc10_)
                                                      {
                                                         §§push(§+!-§);
                                                         continue loop5;
                                                      }
                                                      §§goto(addr366);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr261);
                                                   }
                                                }
                                                §§goto(addr313);
                                             }
                                          }
                                          §§goto(addr200);
                                       default:
                                          §§goto(addr371);
                                    }
                                    var _loc5_:Array = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(param3);
                                       loop18:
                                       for(; !§§pop(); §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_])),if(!_loc11_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc10_ || param3)
                                          {
                                             §§push(_loc7_ = §§pop());
                                          }
                                       },if(!(_loc10_ || param3))
                                       {
                                          continue;
                                       },if(§§pop())
                                       {
                                          §§goto(addr643);
                                       },§§goto(addr605))
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(int(_loc5_.length - 1));
                                             loop19:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr664:
                                                loop22:
                                                while(true)
                                                {
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc10_ || §!'§)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(_loc10_ || §!'§)
                                                            {
                                                               if(§§pop() >= 0)
                                                               {
                                                                  §§push(AngryBirdsFP11.sUserProgress);
                                                                  continue loop18;
                                                               }
                                                               if(!(_loc11_ && §!'§))
                                                               {
                                                                  if(_loc5_.length > 0)
                                                                  {
                                                                     if(_loc10_ || param3)
                                                                     {
                                                                     }
                                                                     §§goto(addr706);
                                                                  }
                                                                  break loop18;
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc11_ && §!'§))
                                                                  {
                                                                     §§push(AngryBirdsFP11.sUserProgress);
                                                                     if(!(_loc10_ || §!'§))
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§pop().saveTutorialSeen(_loc5_.toString());
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           addr607:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              addr608:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    while(_loc11_)
                                                                                    {
                                                                                    }
                                                                                    continue loop23;
                                                                                    addr611:
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           addr654:
                                                                        }
                                                                     }
                                                                     §§goto(addr706);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr643:
                                                                     _loc5_.splice(_loc6_,1);
                                                                  }
                                                                  while(_loc10_ || param2)
                                                                  {
                                                                     §§goto(addr654);
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               §§goto(addr611);
                                                            }
                                                            §§goto(addr607);
                                                         }
                                                         §§goto(addr608);
                                                      }
                                                      break;
                                                   }
                                                   addr666:
                                                   _loc8_ = §§pop();
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      var _loc9_:* = _loc5_;
                                                      if(!_loc11_)
                                                      {
                                                         for each(param2 in _loc9_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         addr705:
                                                         addr706:
                                                         return;
                                                         addr702:
                                                      }
                                                      while(true)
                                                      {
                                                         §5"8§(param2,param1);
                                                         §§goto(addr702);
                                                      }
                                                   }
                                                   §§goto(addr705);
                                                }
                                             }
                                          }
                                          §§goto(addr706);
                                       }
                                       §§goto(addr666);
                                       §§push(0);
                                    }
                                    §§goto(addr664);
                                 }
                                 §§goto(addr534);
                              }
                           }
                           else
                           {
                              §§push(§>,§.§7!C§.§[2§);
                              if(_loc10_ || §!'§)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc11_ && param3))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          §§goto(addr450);
                                       }
                                       else
                                       {
                                          addr475:
                                          §§push(3);
                                          if(_loc10_ || param1)
                                          {
                                             §§goto(addr483);
                                          }
                                          else
                                          {
                                             addr517:
                                             §§goto(addr534);
                                          }
                                       }
                                       §§goto(addr534);
                                    }
                                    else
                                    {
                                       §§push(§>,§.§%!X§.§[2§);
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(_loc8_);
                                          if(_loc10_ || §!'§)
                                          {
                                          }
                                          addr488:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(4);
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr494);
                                                }
                                                §§goto(addr534);
                                             }
                                             else
                                             {
                                                addr509:
                                                §§push(5);
                                                if(_loc10_ || param3)
                                                {
                                                   §§goto(addr517);
                                                }
                                                else
                                                {
                                                   addr529:
                                                   §§goto(addr534);
                                                }
                                             }
                                             §§goto(addr534);
                                          }
                                          else
                                          {
                                             §§push("ALL_BASIC");
                                             if(_loc10_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc10_ || param1)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§goto(addr509);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr520:
                                                      if("ALL_EXTRABIRD" !== _loc8_)
                                                      {
                                                         §§goto(addr534);
                                                         §§push(7);
                                                      }
                                                   }
                                                   §§goto(addr534);
                                                   §§goto(addr534);
                                                }
                                             }
                                             §§goto(addr520);
                                          }
                                       }
                                       addr487:
                                       §§goto(addr488);
                                       §§push(_loc8_);
                                    }
                                    §§goto(addr534);
                                 }
                              }
                              §§goto(addr487);
                           }
                           §§goto(addr534);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(!_loc11_)
                           {
                              §§goto(addr475);
                           }
                           else
                           {
                              §§goto(addr509);
                           }
                        }
                        else
                        {
                           §§goto(addr487);
                           §§push(§>,§.§," §.§[2§);
                        }
                     }
                     §§goto(addr487);
                  }
                  §§goto(addr534);
               }
               §§goto(addr488);
            }
            §§goto(addr487);
         }
         §§goto(addr400);
      }
      
      public static function showTutorials(param1:§7!A§, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         if(!(_loc9_ && _loc3_))
         {
            if(isOpen)
            {
               if(!(_loc9_ && _loc3_))
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:Array = §0!"§();
            if(!(_loc9_ && param1))
            {
               if(!param2)
               {
                  if(!_loc9_)
                  {
                     addr154:
                     _loc5_ = int(_loc3_.length - 1);
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc9_)
                     {
                        if(_loc10_)
                        {
                           if(§§pop() < 0)
                           {
                              if(_loc10_)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    if(_loc3_.length > 0)
                                    {
                                       if(_loc10_)
                                       {
                                          if(!(_loc10_ || §!'§))
                                          {
                                             continue;
                                          }
                                          §§push(AngryBirdsFP11.sUserProgress);
                                          if(!(_loc9_ && param1))
                                          {
                                             §§pop().saveTutorialSeen(_loc3_.toString());
                                             if(_loc10_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(true)
                                                   {
                                                      addr160:
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr145:
                                                   _loc3_.splice(_loc5_,1);
                                                }
                                             }
                                             §§goto(addr208);
                                          }
                                          addr133:
                                          §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                          if(!_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc9_)
                                             {
                                                §§push(_loc6_ = §§pop());
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr145);
                                          }
                                          §§push(_loc5_);
                                          if(_loc10_ || param2)
                                          {
                                             addr126:
                                             _loc5_ = §§pop() - 1;
                                             continue;
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr208);
                           }
                           else
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr126);
                     }
                     break;
                  }
                  var _loc7_:* = §§pop();
                  if(_loc10_ || param2)
                  {
                     var _loc8_:* = _loc3_;
                     if(!_loc10_)
                     {
                     }
                     for each(_loc4_ in _loc8_)
                     {
                        if(_loc10_ || §!'§)
                        {
                           §?!W§(_loc4_,param1);
                        }
                     }
                  }
                  if(_loc10_)
                  {
                     §§goto(addr208);
                  }
                  addr208:
                  §>!]§();
                  return;
               }
               §§goto(addr160);
            }
            §§goto(addr154);
         }
         addr40:
      }
      
      private static function §>!]§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(isOpen);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr100:
                     while(true)
                     {
                        §§push(§!%§.length > 0);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     isOpen = true;
                     addr87:
                     while(true)
                     {
                        §4<§ = §!%§.pop();
                        continue loop4;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      public static function §]>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!'§))
         {
            if(isOpen == true)
            {
               while(true)
               {
                  if(§!%§.length <= 0)
                  {
                     isOpen = false;
                     while(true)
                     {
                        §§push(§4<§);
                        if(!_loc1_)
                        {
                           §§push(true);
                           if(!(_loc1_ && _loc2_))
                           {
                              continue;
                           }
                           addr116:
                           while(true)
                           {
                              §§pop().preClose(§§pop());
                              while(true)
                              {
                                 isOpen = false;
                                 while(true)
                                 {
                                    §>!]§(false);
                                    addr90:
                                    §§goto(addr25);
                                 }
                              }
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr116);
                     }
                     addr115:
                  }
                  break;
                  if(_loc1_ && §!'§)
                  {
                     continue;
                  }
                  addr68:
                  §§goto(addr25);
               }
               while(true)
               {
                  §§goto(addr115);
               }
            }
            addr25:
            while(true)
            {
               if(!(_loc1_ && _loc1_))
               {
                  if(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  continue loop4;
               }
               continue loop5;
            }
            return;
         }
         §§goto(addr68);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!%§ = [];
            while(§4<§)
            {
               if(_loc1_ || _loc1_)
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §]>§();
               }
               break;
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
