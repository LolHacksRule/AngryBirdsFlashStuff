package §^!m§
{
   import §!!j§.§!!9§;
   import §!!j§.§4U§;
   import §!!j§.§?H§;
   import §!!j§.Popup;
   import §1!B§.§>!s§;
   import §40§.§<!P§;
   import §;!y§.§,!s§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §>f§.§&!G§;
   
   public class §3v§ extends §!!9§
   {
      
      private static var §8!K§:Array;
      
      private static var §9!§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §,""§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8!K§ = [];
            while(true)
            {
               §9!§ = null;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     isOpen = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §3v§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      private static function §2$§(param1:String, param2:§&!G§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§?H§ = null;
         var _loc3_:* = "";
         var _loc5_:* = param1;
         if(!_loc6_)
         {
            §§push("BIRD_BLACK");
            if(_loc7_ || §3v§)
            {
               §§push(_loc5_);
               if(_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           addr335:
                        }
                     }
                     else
                     {
                        addr327:
                        §§push(7);
                        if(_loc7_ || _loc3_)
                        {
                           §§goto(addr335);
                        }
                     }
                     §§goto(addr340);
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc7_)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || param2)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr241:
                                 §§push(3);
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    addr323:
                                 }
                              }
                              §§goto(addr340);
                           }
                           else
                           {
                              §§push("BIRD_RED");
                              if(!_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(2);
                                          if(!(_loc6_ && §3v§))
                                          {
                                             §§goto(addr340);
                                          }
                                          else
                                          {
                                             §§goto(addr335);
                                          }
                                       }
                                       else
                                       {
                                          addr315:
                                          §§push(6);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§goto(addr323);
                                          }
                                          §§goto(addr340);
                                       }
                                       §§goto(addr340);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr238:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr241);
                                                }
                                                else
                                                {
                                                   §§goto(addr315);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!_loc6_)
                                                {
                                                   addr253:
                                                   §§push(_loc5_);
                                                   if(_loc7_ || param2)
                                                   {
                                                      addr261:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            addr269:
                                                            §§push(4);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr340);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr335);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr292:
                                                            §§push(5);
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr340);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr323);
                                                            }
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_GREEN");
                                                         if(!(_loc6_ && §3v§))
                                                         {
                                                            addr281:
                                                            §§push(_loc5_);
                                                            if(!_loc6_)
                                                            {
                                                               addr284:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§goto(addr292);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr315);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(_loc7_ || §3v§)
                                                                  {
                                                                     addr304:
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr315);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr327);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr325:
                                                                           §§push("BIRD_SARDINE");
                                                                           §§push(_loc5_);
                                                                        }
                                                                        §§goto(addr327);
                                                                     }
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr327);
                                                            }
                                                            else
                                                            {
                                                               addr340:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     addr146:
                                                                     _loc3_ = "TUTORIAL_BLACK";
                                                                     break;
                                                                     addr147:
                                                                  case 1:
                                                                     addr141:
                                                                     _loc3_ = "TUTORIAL_BLUE";
                                                                     break;
                                                                     addr142:
                                                                  case 2:
                                                                     addr133:
                                                                     §§push("TUTORIAL_RED");
                                                                     if(_loc7_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        addr136:
                                                                        break;
                                                                        addr136:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr146);
                                                                     }
                                                                     break;
                                                                  case 3:
                                                                     addr127:
                                                                     _loc3_ = "TUTORIAL_WHITE";
                                                                     break;
                                                                     addr128:
                                                                  case 4:
                                                                     addr105:
                                                                     _loc3_ = "TUTORIAL_YELLOW";
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           if(!(_loc6_ && §3v§))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr142);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr136);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr128);
                                                                     }
                                                                     break;
                                                                  case 5:
                                                                     addr99:
                                                                     _loc3_ = "TUTORIAL_BOOMERANG";
                                                                     break;
                                                                     addr100:
                                                                  case 6:
                                                                     addr75:
                                                                     §§push("TUTORIAL_BIG_BROTHER");
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 break;
                                                                              }
                                                                              §§goto(addr141);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr133);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr105);
                                                                        }
                                                                        §§goto(addr136);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr99);
                                                                     }
                                                                  case 7:
                                                                     §§push("TUTORIAL_MIGHTYEAGLE");
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr147);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr127);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr75);
                                                                     }
                                                                     §§goto(addr100);
                                                                  default:
                                                                     return;
                                                               }
                                                               try
                                                               {
                                                                  _loc4_ = new §?H§(§>!s§.§;§(§'!+§),param2,§4s§.§4!8§(_loc3_,§6!I§.§[U§));
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§goto(addr384);
                                                                  }
                                                                  §8!K§.push(_loc4_);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  addr384:
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               addr396:
                                                               return;
                                                               §§push(8);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                   }
                                                }
                                                §§goto(addr325);
                                             }
                                             §§goto(addr340);
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr304);
                                    }
                                 }
                                 §§goto(addr261);
                              }
                              §§goto(addr325);
                           }
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr281);
                  }
               }
               §§goto(addr261);
            }
            §§goto(addr253);
         }
         §§goto(addr269);
      }
      
      private static function §;!h§(param1:String, param2:§&!G§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§4U§ = null;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         try
         {
            _loc4_ = new §4U§(§>!s§.§;§(§"?§),param2,§4s§.§4!8§(_loc3_,§6!I§.§[U§),_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               addr77:
               if(_loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     §8!K§.push(_loc4_);
                  }
               }
            }
         }
         catch(e:Error)
         {
            §§goto(addr77);
         }
      }
      
      private static function §?q§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<!P§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!s§.§=!I§.slingshot.§ Y§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(_loc5_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §;-§(param1:§&!G§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(!(_loc11_ && §3v§))
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
         if(_loc10_ || param3)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!(_loc11_ && param2))
         {
            §,""§ = [];
         }
         var _loc8_:* = param2;
         if(_loc10_ || param1)
         {
            §§push("POWERUP4");
            if(!(_loc11_ && param1))
            {
               §§push(_loc8_);
               if(!(_loc11_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc11_ && param3))
                     {
                        §§push(0);
                        if(_loc10_ || param1)
                        {
                           addr359:
                           switch(§§pop())
                           {
                              case 0:
                                 addr223:
                                 _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                 §§push(§,""§);
                                 if(_loc10_ || §3v§)
                                 {
                                    addr217:
                                    §§pop().push(_loc4_);
                                    §§push(§,""§);
                                    break;
                                    addr218:
                                 }
                                 break;
                                 addr224:
                              case 1:
                                 addr198:
                                 _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
                                 addr199:
                                 if(_loc10_ || param1)
                                 {
                                    addr190:
                                    §§push(§,""§);
                                    §§push(_loc4_);
                                    if(!_loc11_)
                                    {
                                       §§pop().push(§§pop());
                                       addr193:
                                    }
                                    else
                                    {
                                       §§goto(addr217);
                                    }
                                    §§goto(addr217);
                                 }
                                 else
                                 {
                                    §§goto(addr224);
                                 }
                              case 2:
                                 addr183:
                                 §§push("POWERUP_TUTORIAL_KINGSLING");
                                 if(_loc10_)
                                 {
                                    _loc4_ = §§pop();
                                    addr161:
                                    §§push(§,""§);
                                    §§push(_loc4_);
                                    if(_loc10_ || param3)
                                    {
                                       §§pop().push(§§pop());
                                       if(_loc10_ || param2)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§goto(addr199);
                                          }
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr190);
                                    addr186:
                                 }
                                 else
                                 {
                                    §§goto(addr198);
                                 }
                                 §§goto(addr198);
                              case 3:
                                 §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       _loc4_ = §§pop();
                                       addr134:
                                       §§push(§,""§);
                                       if(!_loc11_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc10_ || param2)
                                          {
                                             §§pop().push(§§pop());
                                             addr145:
                                             if(!_loc10_)
                                             {
                                                §§goto(addr218);
                                             }
                                             §§goto(addr217);
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                       §§goto(addr190);
                                       addr157:
                                    }
                                    else
                                    {
                                       §§goto(addr223);
                                    }
                                    §§goto(addr223);
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                              case 4:
                                 §§push(§,""§);
                                 loop0:
                                 while(true)
                                 {
                                    §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                    addr130:
                                    while(true)
                                    {
                                       §§pop().push(§§pop());
                                       addr131:
                                       while(true)
                                       {
                                          §§push(§,""§);
                                          addr115:
                                          loop3:
                                          while(true)
                                          {
                                             §§push("POWERUP_TUTORIAL_SUPERSEED");
                                             addr116:
                                             loop4:
                                             while(true)
                                             {
                                                §§pop().push(§§pop());
                                                addr117:
                                                while(!(_loc11_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§,""§);
                                                      addr86:
                                                      while(true)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 break;
                              default:
                                 §§goto(addr217);
                           }
                           var _loc5_:Array = §§pop();
                           if(!(_loc11_ && param2))
                           {
                              §§push(param3);
                              loop9:
                              for(; !§§pop(); if(_loc11_ && param3)
                              {
                                 continue;
                              },§§push(Boolean(§§pop())),if(_loc11_)
                              {
                              },§§goto(addr457))
                              {
                                 if(_loc10_)
                                 {
                                    §§push(int(_loc5_.length - 1));
                                    loop10:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       addr484:
                                       loop12:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() < 0)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      if(_loc10_ || param3)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            if(_loc5_.length > 0)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  addr395:
                                                                  §§push(AngryBirdsFP11.sUserProgress);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§pop().saveTutorialSeen(_loc5_.toString());
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break loop9;
                                                                        }
                                                                     }
                                                                     §§goto(addr511);
                                                                  }
                                                                  addr441:
                                                                  §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc7_ = §§pop())
                                                                     {
                                                                        addr460:
                                                                        _loc5_.splice(_loc6_,1);
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc11_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        _loc6_ = §§pop();
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           if(_loc10_ || param3)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr511);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr457:
                                                                  }
                                                                  continue loop9;
                                                                  break;
                                                               }
                                                               §§goto(addr511);
                                                            }
                                                            break loop9;
                                                         }
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   §§goto(addr395);
                                                }
                                                else
                                                {
                                                   §§push(AngryBirdsFP11.sUserProgress);
                                                }
                                                §§goto(addr441);
                                             }
                                             break;
                                          }
                                          addr486:
                                          _loc8_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             var _loc9_:* = _loc5_;
                                             if(_loc11_)
                                             {
                                             }
                                             for each(param2 in _loc9_)
                                             {
                                                if(_loc10_)
                                                {
                                                   §;!h§(param2,param1);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr511:
                                 return;
                              }
                              §§goto(addr486);
                              §§push(0);
                           }
                           §§goto(addr484);
                        }
                     }
                     else
                     {
                        addr321:
                        §§push(2);
                        if(!(_loc10_ || param3))
                        {
                           addr354:
                        }
                     }
                     §§goto(addr359);
                  }
                  else
                  {
                     §§push("POWERUP1");
                     if(!_loc11_)
                     {
                        addr287:
                        §§push(_loc8_);
                        if(!_loc11_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§push(1);
                                 if(_loc10_ || param2)
                                 {
                                    §§goto(addr359);
                                 }
                                 else
                                 {
                                    §§goto(addr329);
                                 }
                              }
                              else
                              {
                                 addr339:
                                 §§push(3);
                                 if(_loc10_)
                                 {
                                    §§goto(addr359);
                                 }
                                 else
                                 {
                                    §§goto(addr354);
                                 }
                              }
                              §§goto(addr359);
                           }
                           else
                           {
                              §§push("POWERUP2");
                              if(_loc10_ || param3)
                              {
                                 §§push(_loc8_);
                                 if(_loc10_)
                                 {
                                    addr313:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc11_ && param3))
                                       {
                                          §§goto(addr321);
                                       }
                                       §§goto(addr359);
                                    }
                                    else
                                    {
                                       §§push("POWERUP3");
                                       if(_loc10_)
                                       {
                                          addr333:
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             addr336:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr339);
                                                }
                                                else
                                                {
                                                   addr346:
                                                   §§push(4);
                                                   if(!(_loc11_ && param3))
                                                   {
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr359);
                                                }
                                             }
                                             else
                                             {
                                                addr344:
                                                §§push("ALL");
                                                §§push(_loc8_);
                                             }
                                             §§goto(addr346);
                                          }
                                          if(§§pop() !== §§pop())
                                          {
                                             §§goto(addr359);
                                             §§push(5);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr344);
                                    }
                                 }
                                 §§goto(addr336);
                              }
                              §§goto(addr333);
                           }
                        }
                        §§goto(addr313);
                     }
                     §§goto(addr344);
                  }
               }
               §§goto(addr336);
            }
            §§goto(addr287);
         }
         §§goto(addr321);
      }
      
      public static function §'%§(param1:§&!G§, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         if(!(_loc10_ && _loc3_))
         {
            if(isOpen)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
         }
         var _loc3_:Array = §?q§();
         if(_loc9_ || §3v§)
         {
            if(!param2)
            {
               if(_loc9_)
               {
                  addr158:
                  _loc5_ = int(_loc3_.length - 1);
               }
               loop0:
               while(true)
               {
                  §§push(_loc5_);
                  if(!(_loc10_ && _loc3_))
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc9_ || param1)
                        {
                           if(_loc3_.length > 0)
                           {
                              if(_loc9_ || param1)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§pop().saveTutorialSeen(_loc3_.toString());
                                    if(!_loc10_)
                                    {
                                       addr100:
                                       if(true)
                                       {
                                          §§goto(addr165);
                                       }
                                       addr165:
                                       var _loc7_:int = 0;
                                       addr164:
                                       if(!_loc10_)
                                       {
                                          var _loc8_:* = _loc3_;
                                          if(!_loc9_)
                                          {
                                          }
                                          for each(_loc4_ in _loc8_)
                                          {
                                             if(_loc9_)
                                             {
                                                §2$§(_loc4_,param1);
                                             }
                                          }
                                       }
                                       if(_loc9_ || §3v§)
                                       {
                                          §%!I§();
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                                 else
                                 {
                                    addr130:
                                    §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc9_)
                                       {
                                          §§push(_loc6_ = §§pop());
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc3_.splice(_loc5_,1);
                                       }
                                       while(true)
                                       {
                                       }
                                       addr153:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc10_ && _loc3_)
                                       {
                                          break;
                                       }
                                       _loc5_ = §§pop();
                                       if(!(_loc10_ && param2))
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr165);
                              }
                              addr209:
                              return;
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        §§push(AngryBirdsFP11.sUserProgress);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr165);
         }
         §§goto(addr158);
      }
      
      private static function §%!I§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        do
                        {
                           isOpen = true;
                           loop3:
                           while(true)
                           {
                              §9!§ = §8!K§.pop();
                              while(!(_loc2_ && _loc2_))
                              {
                                 §9!§.open(param1);
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§8!K§.length > 0);
                                 if(!_loc2_)
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
                        }
                        while(_loc2_ && _loc3_);
                        
                        break;
                     }
                     return;
                     addr92:
                  }
               }
               §§goto(addr104);
            }
         }
         §§goto(addr54);
      }
      
      public static function §6S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(isOpen == true)
            {
               loop0:
               while(true)
               {
                  if(§8!K§.length > 0)
                  {
                     addr107:
                     if(!_loc1_)
                     {
                        §§push(§9!§);
                     }
                     loop4:
                     while(true)
                     {
                        isOpen = false;
                        addr90:
                        while(!_loc2_)
                        {
                           continue loop4;
                        }
                        if(_loc2_)
                        {
                           §%!I§(false);
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 break loop0;
                              }
                              §§goto(addr90);
                              §§goto(addr94);
                           }
                           addr94:
                           addr83:
                        }
                        continue loop0;
                     }
                     addr107:
                  }
                  else
                  {
                     isOpen = false;
                     while(true)
                     {
                        §§push(§9!§);
                        if(_loc2_)
                        {
                           §§push(true);
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     addr106:
                     §§pop().preClose(§§pop());
                     §§goto(addr107);
                  }
                  §§goto(addr106);
               }
            }
            return;
         }
         §§goto(addr107);
      }
   }
}
