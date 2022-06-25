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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!q§ = [];
            while(true)
            {
               §8[§ = null;
               while(!(_loc1_ && _loc2_))
               {
                  isOpen = false;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §5V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(_loc6_)
         {
            §§push("BIRD_BLACK");
            if(_loc6_)
            {
               §§push(_loc5_);
               if(_loc6_ || §5V§)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc7_ && param2))
                     {
                        addr166:
                        §§push(0);
                        if(_loc7_)
                        {
                           addr230:
                        }
                     }
                     else
                     {
                        addr189:
                        §§push(1);
                        if(!(_loc6_ || _loc3_))
                        {
                           addr281:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc6_)
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr189);
                              }
                              else
                              {
                                 addr329:
                                 §§push(6);
                                 if(_loc7_ && param1)
                                 {
                                 }
                                 §§goto(addr354);
                              }
                           }
                           else
                           {
                              §§push("BIRD_RED");
                              if(_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr219:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(2);
                                          if(_loc6_ || §5V§)
                                          {
                                             §§goto(addr230);
                                          }
                                          §§goto(addr354);
                                       }
                                       else
                                       {
                                          §§goto(addr329);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc6_ || §5V§)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(3);
                                                   if(!_loc6_)
                                                   {
                                                      addr349:
                                                   }
                                                   §§goto(addr354);
                                                }
                                                else
                                                {
                                                   §§goto(addr329);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr257:
                                                   §§push(_loc5_);
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && §5V§))
                                                         {
                                                            §§push(4);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§goto(addr281);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr349);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr329);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_GREEN");
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr290:
                                                            §§push(_loc5_);
                                                            if(!_loc7_)
                                                            {
                                                               addr293:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc6_ || §5V§)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(!(_loc7_ && §5V§))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr321:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§goto(addr329);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr340:
                                                                           if("BIRD_SARDINE" !== _loc5_)
                                                                           {
                                                                              addr354:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    addr140:
                                                                                    _loc3_ = "TUTORIAL_BLACK";
                                                                                    break;
                                                                                    addr141:
                                                                                 case 1:
                                                                                    addr126:
                                                                                    _loc3_ = "TUTORIAL_BLUE";
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!(_loc7_ && §5V§))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr141);
                                                                                    }
                                                                                    break;
                                                                                 case 2:
                                                                                    addr120:
                                                                                    _loc3_ = "TUTORIAL_RED";
                                                                                    break;
                                                                                    addr121:
                                                                                 case 3:
                                                                                    addr112:
                                                                                    _loc3_ = "TUTORIAL_WHITE";
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 case 4:
                                                                                    addr106:
                                                                                    _loc3_ = "TUTORIAL_YELLOW";
                                                                                    break;
                                                                                    addr107:
                                                                                 case 5:
                                                                                    addr82:
                                                                                    §§push("TUTORIAL_BOOMERANG");
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr140);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                          §§goto(addr140);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr120);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr106);
                                                                                    }
                                                                                    break;
                                                                                 case 6:
                                                                                    addr67:
                                                                                    §§push("TUTORIAL_BIG_BROTHER");
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr112);
                                                                                    break;
                                                                                 case 7:
                                                                                    §§push("TUTORIAL_MIGHTYEAGLE");
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr121);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr82);
                                                                                       }
                                                                                       §§goto(addr107);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr67);
                                                                                    }
                                                                                 default:
                                                                                    return;
                                                                              }
                                                                              try
                                                                              {
                                                                                 _loc4_ = new §7!9§(§,>§.§%2§(§=2§),param2,§]c§.§ 2§(_loc3_,§,Q§.§<d§));
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    §§goto(addr398);
                                                                                 }
                                                                                 §+!q§.push(_loc4_);
                                                                              }
                                                                              catch(e:Error)
                                                                              {
                                                                                 addr398:
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr405);
                                                                              }
                                                                              addr405:
                                                                              return;
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                               §§goto(addr354);
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                   }
                                                   §§goto(addr340);
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr354);
                                          }
                                       }
                                       §§goto(addr290);
                                    }
                                    §§goto(addr354);
                                 }
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr354);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr354);
               }
               §§goto(addr219);
            }
            §§goto(addr290);
         }
         §§goto(addr166);
      }
      
      private static function §;'§(param1:String, param2:§'!^§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§ #§ = null;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         try
         {
            _loc4_ = new § #§(§,>§.§%2§(§+!,§),param2,§]c§.§ 2§(_loc3_,§,Q§.§<d§),_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               addr82:
               if(_loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     §+!q§.push(_loc4_);
                  }
               }
            }
         }
         catch(e:Error)
         {
            §§goto(addr82);
         }
      }
      
      private static function §1!_§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7!,§ = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in § _§.§!6§.slingshot.§?$§)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(!_loc6_)
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
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(!(_loc11_ && param1))
         {
            if(isOpen)
            {
               if(!_loc11_)
               {
                  §§goto(addr31);
               }
            }
            §§push(param2);
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(_loc10_ || param1)
            {
               §1&§ = [];
            }
            var _loc8_:* = param2;
            if(!_loc11_)
            {
               §§push("POWERUP4");
               if(!_loc11_)
               {
                  §§push(_loc8_);
                  if(!_loc11_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_)
                        {
                           addr290:
                           §§push(0);
                           if(!_loc10_)
                           {
                           }
                        }
                        else
                        {
                           addr313:
                           §§push(1);
                           if(_loc11_ && §5V§)
                           {
                              addr379:
                           }
                        }
                     }
                     else
                     {
                        §§push("POWERUP1");
                        if(_loc10_ || param2)
                        {
                           §§push(_loc8_);
                           if(!(_loc11_ && param3))
                           {
                              addr310:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    §§goto(addr313);
                                 }
                                 addr384:
                                 loop14:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       addr258:
                                       _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                       addr252:
                                       §1&§.push(_loc4_);
                                       break;
                                       addr259:
                                       addr253:
                                       addr251:
                                    case 1:
                                       addr238:
                                       §§push(§1&§);
                                       §§push("POWERUP_TUTORIAL_SUPERSEED");
                                       if(_loc10_ || §5V§)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc10_)
                                          {
                                             addr232:
                                             §1&§.push(_loc4_);
                                             addr233:
                                             addr231:
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr258);
                                       }
                                       §§goto(addr258);
                                    case 2:
                                       addr225:
                                       §§push("POWERUP_TUTORIAL_KINGSLING");
                                       if(!_loc11_)
                                       {
                                          _loc4_ = §§pop();
                                          addr201:
                                          §§push(§1&§);
                                          §§push(_loc4_);
                                          if(_loc10_)
                                          {
                                             if(!(_loc11_ && param2))
                                             {
                                                §§pop().push(§§pop());
                                                addr211:
                                                if(_loc10_)
                                                {
                                                   if(!(_loc10_ || §5V§))
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr252);
                                          }
                                          else
                                          {
                                             §§goto(addr232);
                                          }
                                          addr228:
                                       }
                                       else
                                       {
                                          §§goto(addr238);
                                       }
                                       §§goto(addr258);
                                    case 3:
                                       §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                       if(_loc10_ || param3)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc10_ || param2)
                                          {
                                             addr166:
                                             §§push(§1&§);
                                             §§push(_loc4_);
                                             if(_loc10_ || param1)
                                             {
                                                §§pop().push(§§pop());
                                                addr175:
                                                if(_loc11_)
                                                {
                                                   §§goto(addr253);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr201);
                                             }
                                          }
                                          §§goto(addr258);
                                       }
                                       else
                                       {
                                          §§goto(addr225);
                                       }
                                    case 4:
                                       §§push(§1&§);
                                       loop0:
                                       for(; !(_loc11_ && param1); if(_loc11_ && param3)
                                       {
                                          continue;
                                       },§§push("POWERUP_TUTORIAL_SLINGSCOPE"),if(!_loc11_)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§goto(addr68);
                                          }
                                          §§goto(addr120);
                                       },§§goto(addr92))
                                       {
                                          if(!(_loc11_ && §5V§))
                                          {
                                             §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                             while(true)
                                             {
                                                §§pop().push(§§pop());
                                                while(true)
                                                {
                                                   §§push(§1&§);
                                                   if(_loc10_ || param2)
                                                   {
                                                      if(_loc10_ || param2)
                                                      {
                                                         §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                         while(true)
                                                         {
                                                            §§pop().push(§§pop());
                                                            if(_loc10_ || §5V§)
                                                            {
                                                               if(_loc11_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc10_ || §5V§)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§1&§);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                           while(true)
                                                                           {
                                                                              §§pop().push(§§pop());
                                                                              addr93:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       §§push(§1&§);
                                                                                       if(!(_loc10_ || param1))
                                                                                       {
                                                                                          break loop14;
                                                                                       }
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr175);
                                                                                 }
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           addr92:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr166);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  addr87:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr228);
                                                               }
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         continue;
                                                         addr120:
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   break loop14;
                                                }
                                                addr68:
                                                if(_loc11_ && param2)
                                                {
                                                   continue;
                                                }
                                                §§pop().push(§§pop());
                                                if(_loc10_)
                                                {
                                                   if(!(_loc11_ && §5V§))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr87);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr258);
                                                      }
                                                   }
                                                   §§goto(addr93);
                                                }
                                                §§goto(addr258);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr231);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr201);
                                    default:
                                       §§goto(addr258);
                                 }
                                 var _loc5_:Array = §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(param3);
                                    loop8:
                                    for(; !§§pop(); §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_])),if(_loc10_ || param2)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc11_)
                                       {
                                          §§push(_loc7_ = §§pop());
                                       }
                                    },if(!(_loc10_ || param1))
                                    {
                                       continue;
                                    },if(§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc5_.splice(_loc6_,1);
                                       }
                                       §§goto(addr492);
                                    },§§goto(addr443))
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(int(_loc5_.length - 1));
                                          loop10:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             addr509:
                                             loop12:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc10_ || param2)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(§§pop() >= 0)
                                                         {
                                                            §§push(AngryBirdsFP11.sUserProgress);
                                                            continue loop8;
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            if(_loc5_.length > 0)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     §§push(AngryBirdsFP11.sUserProgress);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§pop().saveTutorialSeen(_loc5_.toString());
                                                                        if(!(_loc11_ && §5V§))
                                                                        {
                                                                           addr434:
                                                                           if(_loc11_ && §5V§)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                        }
                                                                        §§goto(addr551);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr492:
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr443:
                                                                  §§push(_loc6_);
                                                                  if(_loc11_ && param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr453:
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     continue;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                            break loop8;
                                                         }
                                                         §§goto(addr551);
                                                      }
                                                      §§goto(addr453);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr511);
                                             }
                                          }
                                       }
                                    }
                                    addr511:
                                    _loc8_ = §§pop();
                                    if(!_loc11_)
                                    {
                                       var _loc9_:* = _loc5_;
                                       if(!_loc10_)
                                       {
                                       }
                                       for each(param2 in _loc9_)
                                       {
                                          if(!(_loc11_ && param3))
                                          {
                                             §;'§(param2,param1);
                                          }
                                       }
                                    }
                                    addr551:
                                    return;
                                    §§push(0);
                                 }
                                 §§goto(addr509);
                              }
                              else
                              {
                                 §§push("POWERUP2");
                                 if(_loc10_)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc11_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(2);
                                             if(_loc10_ || param2)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr371:
                                             §§push(4);
                                             if(_loc10_ || §5V§)
                                             {
                                                §§goto(addr379);
                                             }
                                          }
                                          §§goto(addr384);
                                       }
                                       else
                                       {
                                          §§push("POWERUP3");
                                          if(!(_loc11_ && §5V§))
                                          {
                                             addr348:
                                             §§push(_loc8_);
                                             if(_loc10_)
                                             {
                                                addr351:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(3);
                                                      if(_loc10_ || param2)
                                                      {
                                                         §§goto(addr384);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr379);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr371);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                else
                                                {
                                                   §§push("ALL");
                                                }
                                                §§goto(addr371);
                                             }
                                             addr370:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr371);
                                             }
                                             else
                                             {
                                                §§goto(addr384);
                                                §§push(5);
                                             }
                                             §§goto(addr384);
                                          }
                                          §§goto(addr370);
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr371);
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr348);
                              }
                           }
                        }
                        §§goto(addr348);
                     }
                     §§goto(addr384);
                  }
                  §§goto(addr310);
               }
               §§goto(addr348);
            }
            §§goto(addr290);
         }
         addr31:
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
               if(_loc10_ || param1)
               {
                  §§goto(addr35);
               }
            }
            var _loc3_:Array = §1!_§();
            if(_loc10_)
            {
               if(!param2)
               {
                  if(!(_loc9_ && param1))
                  {
                     _loc5_ = int(_loc3_.length - 1);
                     loop2:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!(_loc9_ && param1))
                        {
                           if(!(_loc9_ && param1))
                           {
                              if(§§pop() < 0)
                              {
                                 if(_loc10_ || param1)
                                 {
                                    if(_loc3_.length > 0)
                                    {
                                       if(!_loc9_)
                                       {
                                          addr74:
                                          §§push(AngryBirdsFP11.sUserProgress);
                                          if(_loc10_)
                                          {
                                             §§pop().saveTutorialSeen(_loc3_.toString());
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(true)
                                                   {
                                                      addr175:
                                                      break;
                                                   }
                                                   addr97:
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr109:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(_loc9_ && param1)
                                                         {
                                                            break loop2;
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr223);
                                                         }
                                                         if(!(_loc9_ && §5V§))
                                                         {
                                                            break;
                                                         }
                                                         addr155:
                                                         while(true)
                                                         {
                                                            _loc3_.splice(_loc5_,1);
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr97:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr97);
                                                   §§goto(addr155);
                                                }
                                             }
                                             §§goto(addr223);
                                          }
                                          else
                                          {
                                             addr133:
                                             §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc10_ || param1)
                                                {
                                                   addr152:
                                                   §§push(_loc6_ = §§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr97);
                                             }
                                             §§goto(addr152);
                                          }
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr74);
                              }
                              else
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr109);
                        }
                        break;
                     }
                     var _loc7_:* = §§pop();
                     addr174:
                     if(_loc10_)
                     {
                        var _loc8_:* = _loc3_;
                        if(!_loc9_)
                        {
                           for each(_loc4_ in _loc8_)
                           {
                              if(_loc9_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                           addr215:
                           if(_loc10_ || §5V§)
                           {
                              §§goto(addr223);
                           }
                           addr223:
                           §7!S§();
                           return;
                           addr212:
                        }
                        while(true)
                        {
                           §#![§(_loc4_,param1);
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr215);
                     addr174:
                  }
                  §§goto(addr174);
               }
               §§goto(addr175);
            }
            §§goto(addr174);
         }
         addr35:
      }
      
      private static function §7!S§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(isOpen);
            if(!_loc2_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        do
                        {
                           isOpen = true;
                           do
                           {
                              §8[§ = §+!q§.pop();
                              do
                              {
                                 §8[§.open(param1);
                              }
                              while(_loc2_);
                              
                           }
                           while(_loc2_ && §5V§);
                           
                        }
                        while(!_loc3_);
                        
                        if(!_loc2_)
                        {
                           addr56:
                           break;
                        }
                        loop5:
                        while(true)
                        {
                           §§push(§+!q§.length > 0);
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           addr104:
                           while(true)
                           {
                              §§pop();
                              continue loop5;
                           }
                        }
                        continue loop0;
                     }
                     return;
                     addr92:
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr56);
      }
      
      public static function §=M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §5V§)
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
                     for(; !(_loc1_ && §5V§); §§pop().preClose(§§pop()),if(!(_loc1_ && §5V§))
                     {
                        continue loop0;
                     })
                     {
                        if(!(_loc1_ && §5V§))
                        {
                           §§push(§8[§);
                           if(!_loc1_)
                           {
                              §§push(true);
                              if(!(_loc1_ && _loc1_))
                              {
                                 continue;
                              }
                              loop3:
                              while(true)
                              {
                                 §§pop().preClose(§§pop());
                                 addr127:
                                 addr125:
                                 while(true)
                                 {
                                    isOpen = false;
                                    addr109:
                                    addr116:
                                    while(_loc1_ && _loc2_)
                                    {
                                       break loop0;
                                    }
                                    §7!S§(false);
                                    break loop1;
                                 }
                                 addr125:
                                 while(true)
                                 {
                                    §§push(false);
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr127);
                     }
                     while(!_loc2_)
                     {
                        §§goto(addr109);
                        §§goto(addr116);
                     }
                     §§goto(addr25);
                  }
                  break;
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
               while(true)
               {
                  §§goto(addr125);
               }
            }
            addr25:
            return;
         }
         §§goto(addr127);
      }
   }
}
