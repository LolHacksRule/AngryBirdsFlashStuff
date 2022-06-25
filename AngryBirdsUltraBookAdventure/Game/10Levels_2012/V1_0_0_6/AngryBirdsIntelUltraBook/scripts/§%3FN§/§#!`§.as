package §?N§
{
   import §"x§.§3!v§;
   import §,B§.§'!q§;
   import §,B§.§+g§;
   import §,B§.§?! §;
   import §,B§.Popup;
   import §2_§.§>-§;
   import §>! §.§^!c§;
   import §[!+§.§4`§;
   import §^!Y§.§'R§;
   import §^!Y§.§]p§;
   
   public class §#!`§ extends §?! §
   {
      
      private static var §'2§:Array;
      
      private static var §]M§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §!&§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#!`§))
         {
            §'2§ = [];
            while(true)
            {
               §]M§ = null;
               while(_loc2_)
               {
                  isOpen = false;
                  if(!_loc1_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §#!`§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §0;§(param1:String, param2:§4`§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§+g§ = null;
         var _loc3_:* = "";
         var _loc5_:* = param1;
         if(!_loc6_)
         {
            §§push("BIRD_BLACK");
            if(_loc7_)
            {
               §§push(_loc5_);
               if(_loc7_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        §§push(0);
                        if(_loc6_ && param2)
                        {
                           addr310:
                        }
                     }
                     else
                     {
                        addr330:
                        §§push(6);
                        if(!_loc6_)
                        {
                           addr333:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc7_ || _loc3_)
                     {
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && §#!`§))
                              {
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr333);
                                 }
                              }
                              else
                              {
                                 addr274:
                                 §§push(4);
                                 if(!(_loc7_ || param2))
                                 {
                                    §§goto(addr310);
                                 }
                              }
                           }
                           else
                           {
                              §§push("BIRD_RED");
                              if(!(_loc6_ && param2))
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || §#!`§)
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr246:
                                          §§push(3);
                                          if(_loc7_ || _loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr350);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr246);
                                                }
                                                else
                                                {
                                                   addr307:
                                                   §§push(5);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr350);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr263:
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                   }
                                                   addr322:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§goto(addr330);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr335:
                                                      if("BIRD_SARDINE" !== _loc5_)
                                                      {
                                                         addr350:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               addr146:
                                                               _loc3_ = "TUTORIAL_BLACK";
                                                               break;
                                                            case 1:
                                                               addr134:
                                                               _loc3_ = "TUTORIAL_BLUE";
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               break;
                                                            case 2:
                                                               addr128:
                                                               _loc3_ = "TUTORIAL_RED";
                                                               break;
                                                               addr129:
                                                            case 3:
                                                               addr115:
                                                               §§push("TUTORIAL_WHITE");
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  break;
                                                               }
                                                               §§goto(addr146);
                                                               break;
                                                            case 4:
                                                               addr98:
                                                               §§push("TUTORIAL_YELLOW");
                                                               if(_loc7_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && §#!`§))
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr128);
                                                               §§goto(addr129);
                                                            case 5:
                                                               addr85:
                                                               §§push("TUTORIAL_BOOMERANG");
                                                               if(_loc7_ || param1)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  break;
                                                               }
                                                               §§goto(addr115);
                                                               break;
                                                            case 6:
                                                               addr70:
                                                               §§push("TUTORIAL_BIG_BROTHER");
                                                               if(_loc7_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc6_ && §#!`§))
                                                                  {
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr98);
                                                               break;
                                                            case 7:
                                                               §§push("TUTORIAL_MIGHTYEAGLE");
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        break;
                                                                     }
                                                                     §§goto(addr134);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr85);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr70);
                                                               }
                                                               break;
                                                            default:
                                                               return;
                                                         }
                                                         try
                                                         {
                                                            _loc4_ = new §+g§(§3!v§.§;!-§(§@;§),param2,§]p§.§0X§(_loc3_,§'R§.§7!j§));
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr394:
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §'2§.push(_loc4_);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         catch(e:Error)
                                                         {
                                                            §§goto(addr394);
                                                         }
                                                         return;
                                                         §§push(8);
                                                      }
                                                   }
                                                   §§goto(addr350);
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr335);
                                             }
                                             §§goto(addr350);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                §§goto(addr274);
                                             }
                                             else
                                             {
                                                §§goto(addr330);
                                             }
                                          }
                                          else
                                          {
                                             §§push("BIRD_GREEN");
                                             if(!(_loc6_ && param2))
                                             {
                                                addr291:
                                                §§push(_loc5_);
                                                if(_loc7_ || param2)
                                                {
                                                   addr299:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_ || §#!`§)
                                                      {
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   else
                                                   {
                                                      §§push("BIRD_REDBIG");
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr322);
                                                         }
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                }
                                                §§goto(addr322);
                                             }
                                             §§goto(addr335);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr263);
                                    }
                                 }
                                 §§goto(addr263);
                              }
                              §§goto(addr335);
                           }
                        }
                        §§goto(addr299);
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr350);
               }
               §§goto(addr299);
            }
            §§goto(addr291);
         }
         §§goto(addr307);
      }
      
      private static function §@Z§(param1:String, param2:§4`§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§'!q§ = null;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         try
         {
            _loc4_ = new §'!q§(§3!v§.§;!-§(§0!M§),param2,§]p§.§0X§(_loc3_,§'R§.§7!j§),_loc3_);
            if(_loc6_)
            {
               addr72:
               if(_loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     §'2§.push(_loc4_);
                  }
               }
            }
         }
         catch(e:Error)
         {
            §§goto(addr72);
         }
      }
      
      private static function §6P§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>-§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §^!c§.§5!Y§.slingshot.§]!^§)
         {
            if(!_loc6_)
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
      
      public static function §]y§(param1:§4`§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:Boolean = false;
         if(_loc11_)
         {
            if(isOpen)
            {
               if(_loc11_ || param2)
               {
                  return;
               }
            }
         }
         §§push(param2);
         if(_loc11_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc11_ || param3)
         {
            §!&§ = [];
         }
         var _loc8_:* = param2;
         if(!(_loc10_ && param3))
         {
            §§push("POWERUP4");
            if(!_loc10_)
            {
               §§push(_loc8_);
               if(!_loc10_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc10_ && param3))
                     {
                        addr286:
                        §§push(0);
                        if(_loc10_)
                        {
                           addr312:
                        }
                     }
                     else
                     {
                        addr332:
                        §§push(2);
                        if(!_loc11_)
                        {
                           addr380:
                        }
                     }
                  }
                  else
                  {
                     §§push("POWERUP1");
                     if(!_loc10_)
                     {
                        §§push(_loc8_);
                        if(!_loc10_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc10_ && param1))
                              {
                                 §§push(1);
                                 if(!(_loc10_ && §#!`§))
                                 {
                                    §§goto(addr312);
                                 }
                                 addr385:
                                 loop19:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       addr244:
                                       _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                       addr238:
                                       §!&§.push(_loc4_);
                                       addr387:
                                       break;
                                       addr245:
                                       addr239:
                                       addr237:
                                    case 1:
                                       addr231:
                                       _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
                                       §§push(§!&§);
                                       if(_loc11_)
                                       {
                                          addr218:
                                          §!&§.push(_loc4_);
                                          if(_loc10_ && §#!`§)
                                          {
                                             §§goto(addr245);
                                          }
                                          §§goto(addr387);
                                          addr217:
                                       }
                                       §§goto(addr239);
                                    case 2:
                                       addr199:
                                       §§push("POWERUP_TUTORIAL_KINGSLING");
                                       if(_loc11_ || §#!`§)
                                       {
                                          _loc4_ = §§pop();
                                          addr207:
                                          if(_loc11_ || param2)
                                          {
                                             addr171:
                                             §§push(§!&§);
                                             if(!(_loc10_ && param3))
                                             {
                                                addr179:
                                                §§push(_loc4_);
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc11_ || §#!`§)
                                                   {
                                                      §§pop().push(§§pop());
                                                      addr194:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                else
                                                {
                                                   §§goto(addr218);
                                                }
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr218);
                                       }
                                       else
                                       {
                                          §§goto(addr244);
                                       }
                                    case 3:
                                       §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                       if(!(_loc10_ && param1))
                                       {
                                          if(!_loc10_)
                                          {
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                §§push(§!&§);
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§pop().push(§§pop());
                                                         addr149:
                                                         if(_loc10_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr217);
                                                   }
                                                }
                                                break loop19;
                                             }
                                             break;
                                          }
                                          §§goto(addr231);
                                          §§goto(addr244);
                                       }
                                       else
                                       {
                                          §§goto(addr199);
                                       }
                                    case 4:
                                       §§push(§!&§);
                                       loop1:
                                       while(true)
                                       {
                                          §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                          loop2:
                                          while(true)
                                          {
                                             §§pop().push(§§pop());
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc11_ || param3)
                                                {
                                                   §§push(§!&§);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§pop().push(§§pop());
                                                         if(_loc11_)
                                                         {
                                                            if(!(_loc11_ || param3))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc10_ && param2)
                                                            {
                                                               break loop4;
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(§!&§);
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                  while(true)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§!&§);
                                                                        if(_loc11_ || §#!`§)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc10_ && param1)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    §§pop().push(§§pop());
                                                                                    if(_loc10_ && §#!`§)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        break loop19;
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr149);
                                                }
                                                else
                                                {
                                                   §§goto(addr231);
                                                }
                                             }
                                             §§goto(addr244);
                                          }
                                       }
                                       §§goto(addr194);
                                    default:
                                       §§goto(addr244);
                                 }
                                 var _loc5_:Array = §§pop();
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(param3);
                                    loop9:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(int(_loc5_.length - 1));
                                             loop11:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc11_ || param2)
                                                      {
                                                         if(!(_loc10_ && §#!`§))
                                                         {
                                                            if(_loc11_ || param2)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(§§pop() >= 0)
                                                               {
                                                                  §§push(AngryBirdsFP11.sUserProgress);
                                                                  continue loop9;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     if(_loc5_.length > 0)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(AngryBirdsFP11.sUserProgress);
                                                                           if(_loc10_ && param2)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§pop().saveTutorialSeen(_loc5_.toString());
                                                                           if(_loc11_ || param3)
                                                                           {
                                                                              addr459:
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc10_ && param3)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 addr470:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    addr472:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       addr473:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr470:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr532:
                                                                                 _loc8_ = 0;
                                                                                 addr531:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    var _loc9_:* = _loc5_;
                                                                                    if(_loc10_)
                                                                                    {
                                                                                    }
                                                                                    addr553:
                                                                                    for each(param2 in _loc9_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §@Z§(param2,param1);
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr557:
                                                                        return;
                                                                     }
                                                                     §§goto(addr531);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr512:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr512:
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                         §§goto(addr473);
                                                      }
                                                      §§goto(addr532);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr532);
                                    }
                                 }
                                 §§goto(addr512);
                              }
                              else
                              {
                                 §§goto(addr332);
                              }
                           }
                           else
                           {
                              §§push("POWERUP2");
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc8_);
                                 if(!(_loc10_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          §§goto(addr332);
                                       }
                                       else
                                       {
                                          addr360:
                                          §§push(3);
                                          if(_loc11_ || param1)
                                          {
                                          }
                                          §§goto(addr385);
                                       }
                                    }
                                    else
                                    {
                                       §§push("POWERUP3");
                                       if(_loc11_ || param2)
                                       {
                                          addr344:
                                          §§push(_loc8_);
                                          if(_loc11_ || param1)
                                          {
                                             addr352:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc10_ && §#!`§))
                                                {
                                                   §§goto(addr360);
                                                }
                                             }
                                             else
                                             {
                                                addr371:
                                                if("ALL" !== _loc8_)
                                                {
                                                   §§goto(addr385);
                                                   §§push(5);
                                                }
                                             }
                                             §§goto(addr385);
                                             §§goto(addr385);
                                          }
                                          §§goto(addr371);
                                       }
                                    }
                                    §§goto(addr385);
                                 }
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr385);
                        }
                        §§goto(addr352);
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr385);
               }
               §§goto(addr371);
            }
            §§goto(addr344);
         }
         §§goto(addr286);
      }
      
      public static function §+!q§(param1:§4`§, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         if(!(_loc9_ && param1))
         {
            if(isOpen)
            {
               if(_loc10_ || _loc3_)
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:Array = §6P§();
            if(!_loc9_)
            {
               if(!param2)
               {
                  if(!(_loc9_ && param1))
                  {
                     _loc5_ = int(_loc3_.length - 1);
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!(_loc9_ && param2))
                        {
                           if(!(_loc9_ && param1))
                           {
                              if(§§pop() < 0)
                              {
                                 if(_loc10_ || §#!`§)
                                 {
                                    if(_loc3_.length > 0)
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(AngryBirdsFP11.sUserProgress);
                                          if(_loc10_)
                                          {
                                             §§pop().saveTutorialSeen(_loc3_.toString());
                                             §§goto(addr203);
                                          }
                                          addr121:
                                          §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc10_)
                                             {
                                                §§push(_loc6_ = §§pop());
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                _loc3_.splice(_loc5_,1);
                                                §§goto(addr144);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§push(_loc5_);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          addr107:
                                          _loc5_ = §§pop() - 1;
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr98);
                              }
                              else
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr107);
                        }
                        break;
                     }
                     var _loc7_:* = §§pop();
                     if(!(_loc9_ && param2))
                     {
                        var _loc8_:* = _loc3_;
                        if(!_loc10_)
                        {
                        }
                        for each(_loc4_ in _loc8_)
                        {
                           if(!_loc9_)
                           {
                              §0;§(_loc4_,param1);
                           }
                        }
                     }
                     addr159:
                     if(_loc10_)
                     {
                        §§goto(addr203);
                     }
                     addr203:
                     if(_loc10_)
                     {
                        addr98:
                        if(_loc10_)
                        {
                           if(true)
                           {
                              addr160:
                              break loop1;
                           }
                        }
                        else
                        {
                           addr144:
                        }
                     }
                     §=!P§();
                     return;
                     addr159:
                  }
                  §§goto(addr159);
               }
               §§goto(addr160);
            }
            §§goto(addr159);
         }
         addr40:
      }
      
      private static function §=!P§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc2_)
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
                              §]M§ = §'2§.pop();
                              while(!_loc3_)
                              {
                                 §]M§.open(param1);
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§'2§.length > 0);
                                 if(_loc2_ || _loc3_)
                                 {
                                    break;
                                 }
                                 addr103:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        while(_loc3_ && §#!`§);
                        
                        break;
                     }
                     return;
                     addr91:
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr53);
      }
      
      public static function §<z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(isOpen == true)
            {
               loop0:
               while(true)
               {
                  if(§'2§.length > 0)
                  {
                     if(_loc2_)
                     {
                        addr121:
                        §]M§.preClose(false);
                     }
                  }
                  else
                  {
                     isOpen = false;
                     while(_loc2_ || _loc2_)
                     {
                        continue loop0;
                        §§pop().preClose(§§pop());
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              §=!P§(false);
                              addr104:
                              addr109:
                           }
                           else
                           {
                              addr68:
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr104);
                     }
                  }
                  isOpen = false;
                  §§goto(addr109);
               }
            }
            addr25:
            return;
         }
         §§goto(addr68);
      }
   }
}
