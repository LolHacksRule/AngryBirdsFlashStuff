package §9!y§
{
   import §,!5§.§7!,§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   import §2h§.§'!^§;
   import §[m§.§ #§;
   import §[m§.§7!9§;
   import §[m§.§;!+§;
   import §[m§.Popup;
   import §^_§.§,>§;
   import §true§.§ _§;
   
   public class §5V§ extends §;!+§
   {
      
      private static var §+!q§:Array;
      
      private static var §8[§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §1&§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!q§ = [];
         }
         do
         {
            §8[§ = null;
            do
            {
               isOpen = false;
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      public function §5V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function §#![§(param1:String, param2:§'!^§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§7!9§ = null;
         var _loc3_:* = "";
         var _loc5_:* = param1;
         if(!(_loc7_ && §5V§))
         {
            §§push("BIRD_BLACK");
            if(!_loc7_)
            {
               §§push(_loc5_);
               if(!(_loc7_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || §5V§)
                     {
                        §§push(0);
                        if(_loc7_ && param1)
                        {
                           addr291:
                        }
                     }
                     else
                     {
                        addr247:
                        §§push(2);
                        if(_loc7_)
                        {
                           addr354:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc6_ || _loc3_)
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr311:
                                 §§push(5);
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr319:
                                 }
                              }
                              §§goto(addr359);
                              §§goto(addr359);
                           }
                           else
                           {
                              §§push("BIRD_RED");
                              if(_loc6_ || §5V§)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§goto(addr247);
                                       }
                                       else
                                       {
                                          §§goto(addr311);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc6_)
                                       {
                                          addr254:
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             addr257:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(3);
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr359);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr291);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr359);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr288:
                                                            §§push(4);
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr291);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr319);
                                                            }
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_GREEN");
                                                         if(_loc6_ || §5V§)
                                                         {
                                                            addr300:
                                                            §§push(_loc5_);
                                                            if(_loc6_ || param2)
                                                            {
                                                               addr308:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr311);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr339:
                                                                     §§push(6);
                                                                     if(_loc6_ || §5V§)
                                                                     {
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                  }
                                                                  addr349:
                                                                  if(§§pop() === _loc5_)
                                                                  {
                                                                     addr351:
                                                                     §§push(7);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr354);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr359:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           addr150:
                                                                           _loc3_ = "TUTORIAL_BLACK";
                                                                           break;
                                                                           addr151:
                                                                        case 1:
                                                                           addr145:
                                                                           _loc3_ = "TUTORIAL_BLUE";
                                                                           break;
                                                                           addr146:
                                                                        case 2:
                                                                           addr132:
                                                                           _loc3_ = "TUTORIAL_RED";
                                                                           addr133:
                                                                           if(!(_loc7_ && §5V§))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr151);
                                                                           break;
                                                                        case 3:
                                                                           addr126:
                                                                           _loc3_ = "TUTORIAL_WHITE";
                                                                           break;
                                                                           addr127:
                                                                        case 4:
                                                                           addr111:
                                                                           §§push("TUTORIAL_YELLOW");
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr121:
                                                                                 break;
                                                                                 addr121:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr150);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr145);
                                                                           }
                                                                           break;
                                                                        case 5:
                                                                           addr101:
                                                                           _loc3_ = "TUTORIAL_BOOMERANG";
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr121);
                                                                           }
                                                                           break;
                                                                        case 6:
                                                                           addr58:
                                                                           §§push("TUTORIAL_BIG_BROTHER");
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc6_ || §5V§)
                                                                                    {
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr133);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr126);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr111);
                                                                              }
                                                                              §§goto(addr146);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr101);
                                                                           }
                                                                        case 7:
                                                                           §§push("TUTORIAL_MIGHTYEAGLE");
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr127);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr132);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr58);
                                                                           }
                                                                           §§goto(addr150);
                                                                        default:
                                                                           return;
                                                                     }
                                                                     try
                                                                     {
                                                                        _loc4_ = new §7!9§(§,>§.§%2§(§=2§),param2,§]c§.§ 2§(_loc3_,§,Q§.§<d§));
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr398:
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 §+!q§.push(_loc4_);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        §§goto(addr398);
                                                                     }
                                                                     return;
                                                                     §§push(8);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            addr336:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr339);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr351);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr349);
                                                               §§push("BIRD_SARDINE");
                                                            }
                                                            §§goto(addr351);
                                                         }
                                                         §§push(_loc5_);
                                                         if(_loc6_ || §5V§)
                                                         {
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                }
                                                §§goto(addr300);
                                             }
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr300);
                                    }
                                    §§goto(addr359);
                                 }
                              }
                              §§goto(addr300);
                           }
                        }
                     }
                     §§goto(addr349);
                  }
                  §§goto(addr359);
               }
               §§goto(addr257);
            }
            §§goto(addr254);
         }
         §§goto(addr288);
      }
      
      private static function §;'§(param1:String, param2:§'!^§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§ #§ = null;
         §§push(param1);
         if(!(_loc7_ && param2))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         try
         {
            _loc4_ = new § #§(§,>§.§%2§(§+!,§),param2,§]c§.§ 2§(_loc3_,§,Q§.§<d§),_loc3_);
            if(!_loc7_)
            {
               addr77:
               if(_loc4_)
               {
                  if(!(_loc7_ && param2))
                  {
                     §+!q§.push(_loc4_);
                  }
               }
            }
         }
         catch(e:Error)
         {
            §§goto(addr77);
         }
      }
      
      private static function §1!_§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § _§.§!6§.slingshot.§?$§)
         {
            if(!(_loc5_ && §5V§))
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(!_loc5_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §%!w§(param1:§'!^§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(_loc11_ || param1)
         {
            if(isOpen)
            {
               if(_loc11_ || param3)
               {
                  §§goto(addr37);
               }
            }
            §§push(param2);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(_loc11_)
            {
               §1&§ = [];
            }
            var _loc8_:* = param2;
            if(!(_loc10_ && §5V§))
            {
               §§push("POWERUP4");
               if(!_loc10_)
               {
                  §§push(_loc8_);
                  if(_loc11_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc11_ || param1)
                        {
                           §§push(0);
                           if(!(_loc10_ && param2))
                           {
                              addr380:
                              loop15:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr239:
                                    _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                    addr233:
                                    §1&§.push(_loc4_);
                                    addr382:
                                    break;
                                    addr232:
                                    addr240:
                                    addr234:
                                 case 1:
                                    addr228:
                                    _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
                                    addr229:
                                    §§push(§1&§);
                                    §§push(§1&§);
                                    if(!_loc10_)
                                    {
                                       addr222:
                                       §§pop().push(_loc4_);
                                       addr223:
                                    }
                                    else
                                    {
                                       §§goto(addr232);
                                    }
                                    §§goto(addr382);
                                 case 2:
                                    addr206:
                                    §§push("POWERUP_TUTORIAL_KINGSLING");
                                    if(_loc11_ || param2)
                                    {
                                       if(_loc11_)
                                       {
                                          _loc4_ = §§pop();
                                          §§push(§1&§);
                                          if(_loc11_ || param2)
                                          {
                                             if(_loc11_)
                                             {
                                                addr196:
                                                §§push(_loc4_);
                                                if(_loc11_)
                                                {
                                                   §§pop().push(§§pop());
                                                   addr199:
                                                   if(!_loc11_)
                                                   {
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr382);
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr229);
                                          }
                                          break;
                                          addr216:
                                       }
                                       else
                                       {
                                          §§goto(addr239);
                                       }
                                       §§goto(addr239);
                                    }
                                    else
                                    {
                                       §§goto(addr228);
                                    }
                                 case 3:
                                    §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                    if(!_loc10_)
                                    {
                                       _loc4_ = §§pop();
                                       addr181:
                                       if(!_loc10_)
                                       {
                                          addr158:
                                          §§push(§1&§);
                                          §§push(_loc4_);
                                          if(!_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§pop().push(§§pop());
                                                addr164:
                                                if(_loc11_)
                                                {
                                                   if(!(_loc11_ || param3))
                                                   {
                                                      §§goto(addr223);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr222);
                                          }
                                          else
                                          {
                                             §§goto(addr196);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr240);
                                       }
                                       §§goto(addr239);
                                    }
                                    else
                                    {
                                       §§goto(addr206);
                                    }
                                 case 4:
                                    §§push(§1&§);
                                    loop0:
                                    while(true)
                                    {
                                       §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                       loop1:
                                       while(true)
                                       {
                                          §§pop().push(§§pop());
                                          addr155:
                                          loop2:
                                          while(true)
                                          {
                                             §§push(§1&§);
                                             loop3:
                                             while(true)
                                             {
                                                §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                loop4:
                                                while(true)
                                                {
                                                   §§pop().push(§§pop());
                                                   if(_loc11_ || param2)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§1&§);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push("POWERUP_TUTORIAL_KINGSLING");
                                                               addr107:
                                                               while(!(_loc10_ && param2))
                                                               {
                                                                  if(_loc11_ || §5V§)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           §§push(§1&§);
                                                                           if(!(_loc11_ || param3))
                                                                           {
                                                                              break loop15;
                                                                           }
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     break loop15;
                                                                     addr122:
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop2;
                                                         addr104:
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr239);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 default:
                                    §§goto(addr239);
                              }
                              var _loc5_:Array = §§pop();
                              if(!(_loc10_ && param1))
                              {
                                 §§push(param3);
                                 loop9:
                                 for(; !§§pop(); if(!(_loc11_ || §5V§))
                                 {
                                    continue;
                                 },§§push(Boolean(§§pop())),if(!_loc11_)
                                 {
                                 },§§goto(addr486))
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(int(_loc5_.length - 1));
                                       loop12:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc11_ || param1)
                                                {
                                                   if(§§pop() < 0)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(_loc5_.length > 0)
                                                         {
                                                            if(!(_loc10_ && §5V§))
                                                            {
                                                               addr417:
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(AngryBirdsFP11.sUserProgress);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§pop().saveTutorialSeen(_loc5_.toString());
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        addr438:
                                                                        if(_loc11_ || param3)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           addr447:
                                                                           §§push(_loc6_);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr500:
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr447);
                                                                        }
                                                                        §§goto(addr447);
                                                                     }
                                                                     §§goto(addr557);
                                                                  }
                                                                  addr465:
                                                                  §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr486:
                                                                  if(_loc7_ = §§pop())
                                                                  {
                                                                     addr489:
                                                                     if(!(_loc11_ || param1))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     _loc5_.splice(_loc6_,1);
                                                                     §§goto(addr500);
                                                                  }
                                                                  §§goto(addr447);
                                                               }
                                                               §§goto(addr489);
                                                            }
                                                            §§goto(addr438);
                                                         }
                                                         break loop9;
                                                      }
                                                      §§goto(addr417);
                                                   }
                                                   else
                                                   {
                                                      §§push(AngryBirdsFP11.sUserProgress);
                                                   }
                                                   §§goto(addr465);
                                                }
                                                break;
                                             }
                                             §§goto(addr512);
                                          }
                                       }
                                    }
                                 }
                                 addr512:
                                 _loc8_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    var _loc9_:* = _loc5_;
                                    if(_loc11_ || §5V§)
                                    {
                                    }
                                    for each(param2 in _loc9_)
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          §;'§(param2,param1);
                                       }
                                    }
                                 }
                                 addr557:
                                 return;
                                 §§push(0);
                              }
                              §§goto(addr505);
                           }
                        }
                        else
                        {
                           addr360:
                           §§push(3);
                           if(!(_loc11_ || param3))
                           {
                              addr375:
                           }
                        }
                        §§goto(addr380);
                     }
                     else
                     {
                        §§push("POWERUP1");
                        if(!(_loc10_ && param1))
                        {
                           §§push(_loc8_);
                           if(_loc11_ || §5V§)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(1);
                                    if(!_loc11_)
                                    {
                                    }
                                    §§goto(addr380);
                                 }
                                 else
                                 {
                                    §§goto(addr360);
                                 }
                              }
                              else
                              {
                                 §§push("POWERUP2");
                                 if(_loc11_ || param2)
                                 {
                                    addr326:
                                    §§push(_loc8_);
                                    if(!_loc10_)
                                    {
                                       addr329:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc10_ && param2))
                                          {
                                             §§push(2);
                                             if(_loc10_)
                                             {
                                             }
                                             §§goto(addr380);
                                          }
                                          else
                                          {
                                             §§goto(addr360);
                                          }
                                       }
                                       else
                                       {
                                          §§push("POWERUP3");
                                          if(_loc11_)
                                          {
                                             addr344:
                                             §§push(_loc8_);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr352:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§goto(addr360);
                                                   }
                                                   else
                                                   {
                                                      addr372:
                                                      §§push(4);
                                                      if(_loc11_)
                                                      {
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("ALL");
                                                }
                                                §§goto(addr372);
                                             }
                                             addr371:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr372);
                                             }
                                             else
                                             {
                                                §§goto(addr380);
                                                §§push(5);
                                             }
                                             §§goto(addr380);
                                          }
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr380);
                                    }
                                    §§goto(addr371);
                                 }
                                 §§goto(addr344);
                              }
                              §§goto(addr380);
                           }
                           §§goto(addr352);
                        }
                        §§goto(addr326);
                     }
                  }
                  §§goto(addr329);
               }
               §§goto(addr326);
            }
            §§goto(addr372);
         }
         addr37:
      }
      
      public static function §>!4§(param1:§'!^§, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         if(!_loc9_)
         {
            if(isOpen)
            {
               if(!(_loc9_ && param1))
               {
                  return;
               }
            }
         }
         var _loc3_:Array = §1!_§();
         if(_loc10_)
         {
            if(!param2)
            {
               if(!_loc9_)
               {
                  _loc5_ = int(_loc3_.length - 1);
                  addr174:
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        if(§§pop() < 0)
                        {
                           if(!(_loc9_ && param2))
                           {
                              if(_loc3_.length > 0)
                              {
                                 if(!_loc9_)
                                 {
                                    addr62:
                                    if(!(_loc9_ && param2))
                                    {
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§pop().saveTutorialSeen(_loc3_.toString());
                                          if(!(_loc9_ && param2))
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(false)
                                                {
                                                   addr97:
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(_loc9_ && §5V§)
                                                         {
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      _loc5_ = §§pop();
                                                      addr125:
                                                      while(!(_loc10_ || param1))
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr97:
                                                }
                                                else
                                                {
                                                   addr175:
                                                   addr176:
                                                   var _loc7_:* = §§pop();
                                                   if(_loc10_ || param1)
                                                   {
                                                      var _loc8_:* = _loc3_;
                                                      if(_loc9_ && _loc3_)
                                                      {
                                                      }
                                                      for each(_loc4_ in _loc8_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §#![§(_loc4_,param1);
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      addr228:
                                                      §7!S§();
                                                   }
                                                   return;
                                                   §§push(0);
                                                }
                                                §§goto(addr176);
                                             }
                                             else
                                             {
                                                addr160:
                                                _loc3_.splice(_loc5_,1);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr125);
                                             }
                                          }
                                          §§goto(addr228);
                                       }
                                       else
                                       {
                                          addr138:
                                          §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc9_ && param1))
                                             {
                                                addr157:
                                                §§push(_loc6_ = §§pop());
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr160);
                                             }
                                             §§goto(addr97);
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr62);
                        }
                        else
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr176);
                  }
                  addr174:
               }
               §§goto(addr174);
            }
            §§goto(addr175);
         }
         §§goto(addr174);
      }
      
      private static function §7!S§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           isOpen = true;
                           while(true)
                           {
                              §8[§ = §+!q§.pop();
                              while(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    §8[§.open(param1);
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          addr57:
                                          break loop4;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§+!q§.length > 0);
                                          if(!(_loc2_ && param1))
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr109:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop3;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                     return;
                     addr99:
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §=M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(isOpen == true)
            {
               loop0:
               while(true)
               {
                  if(§+!q§.length <= 0)
                  {
                     isOpen = false;
                     loop1:
                     for(; _loc2_ || _loc1_; §§pop().preClose(§§pop()),if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     },if(_loc2_)
                     {
                        continue loop0;
                     },addr20:,addr111:,while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              break;
                           }
                           break loop0;
                        }
                        §§goto(addr127);
                        break loop1;
                     },return,addr87:)
                     {
                        §§push(§8[§);
                        if(!(_loc1_ && §5V§))
                        {
                           §§push(true);
                           if(!(_loc1_ && §5V§))
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§pop().preClose(§§pop());
                              addr127:
                              while(true)
                              {
                                 isOpen = false;
                                 break loop1;
                              }
                           }
                           addr126:
                        }
                        while(true)
                        {
                           §§goto(addr126);
                        }
                     }
                     while(true)
                     {
                        §7!S§(false);
                        §§goto(addr87);
                     }
                  }
                  break;
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr20);
               }
               while(true)
               {
                  §§goto(addr125);
               }
            }
            §§goto(addr20);
         }
         §§goto(addr111);
      }
   }
}
