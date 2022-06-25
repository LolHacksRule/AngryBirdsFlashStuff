package §_-7§
{
   import §_-0BH§.§_-ZE§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-TG§.§_-pR§;
   import §_-Yl§.§_-5q§;
   import §_-gU§.Popup;
   import §_-gU§.§_-02s§;
   import §_-gU§.§_-hf§;
   import §_-gU§.§_-wZ§;
   import §_-qO§.§ in§;
   
   public class §_-on§ extends §_-02s§
   {
      
      private static var §_-0FG§:Array;
      
      private static var §_-4j§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §_-E-§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-0FG§ = [];
            while(true)
            {
               §_-4j§ = null;
               loop1:
               while(!(_loc1_ && _loc1_))
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
         §§goto(addr57);
      }
      
      public function §_-on§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §_-w9§(param1:String, param2:§_-5q§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr257:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      private static function §_-XH§(param1:String, param2:§_-5q§) : void
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
                  addr86:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr87:
                     while(!(_loc6_ && param1))
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
                           if(_loc5_ || param1)
                           {
                              §§pop().§§slot[4] = new §_-hf§(§_-ZE§.§_-ve§(§_-HH§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§),tutorialName);
                              if(!_loc6_)
                              {
                                 addr152:
                                 if(tutorialPopup)
                                 {
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §_-0FG§.push(tutorialPopup);
                              §§goto(addr160);
                           }
                           §§goto(addr152);
                        }
                        catch(e:Error)
                        {
                           §§goto(addr152);
                        }
                        addr160:
                        return;
                     }
                     continue loop1;
                  }
               }
            }
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            §§push(powerUpName);
            if(!(_loc6_ && §_-on§))
            {
               if(!_loc6_)
               {
                  addr49:
                  §§pop().§§slot[3] = §§pop();
                  if(_loc5_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr65);
               }
               §§goto(addr86);
            }
            §§goto(addr49);
         }
      }
      
      private static function §_-06X§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-pR§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § in§.§_-Dc§.slingshot.§_-j9§)
         {
            if(!(_loc6_ && _loc2_))
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
      
      public static function §_-5a§(param1:§_-5q§, param2:String, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         if(_loc11_)
         {
            if(isOpen)
            {
               if(_loc11_ || param3)
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
         if(_loc11_)
         {
            §_-E-§ = [];
         }
         var _loc8_:* = param2;
         if(_loc11_)
         {
            §§push("POWERUP4");
            if(_loc11_ || param1)
            {
               §§push(_loc8_);
               if(_loc11_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc10_)
                     {
                        §§push(0);
                        if(_loc11_)
                        {
                           addr375:
                           loop13:
                           switch(§§pop())
                           {
                              case 0:
                                 addr229:
                                 _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                                 addr223:
                                 §_-E-§.push(_loc4_);
                                 break;
                                 addr222:
                                 addr230:
                                 addr224:
                              case 1:
                                 addr209:
                                 §§push(§_-E-§);
                                 §§push("POWERUP_TUTORIAL_SUPERSEED");
                                 if(_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc10_ && param1))
                                    {
                                       addr203:
                                       §_-E-§.push(_loc4_);
                                       addr204:
                                       addr202:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr229);
                                 }
                                 §§goto(addr229);
                              case 2:
                                 addr196:
                                 §§push("POWERUP_TUTORIAL_KINGSLING");
                                 if(_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    addr178:
                                    §§push(§_-E-§);
                                    if(!_loc10_)
                                    {
                                       addr181:
                                       §§push(_loc4_);
                                       if(!(_loc10_ && param1))
                                       {
                                          if(_loc11_)
                                          {
                                             §§pop().push(§§pop());
                                             addr191:
                                          }
                                          else
                                          {
                                             §§goto(addr223);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr203);
                                       }
                                       §§goto(addr229);
                                    }
                                    else
                                    {
                                       §§goto(addr222);
                                    }
                                    addr199:
                                 }
                                 else
                                 {
                                    §§goto(addr209);
                                 }
                                 §§goto(addr229);
                              case 3:
                                 §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                 if(_loc11_ || param2)
                                 {
                                    _loc4_ = §§pop();
                                    addr173:
                                    if(!_loc10_)
                                    {
                                       §§push(§_-E-§);
                                       if(!_loc10_)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc10_ && param3))
                                          {
                                             §§pop().push(§§pop());
                                             addr151:
                                             if(_loc11_ || §_-on§)
                                             {
                                                if(_loc11_)
                                                {
                                                   §§goto(addr229);
                                                }
                                                else
                                                {
                                                   §§goto(addr230);
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          else
                                          {
                                             §§goto(addr181);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr204);
                                 }
                                 else
                                 {
                                    §§goto(addr196);
                                 }
                              case 4:
                                 §§push(§_-E-§);
                                 loop0:
                                 while(true)
                                 {
                                    §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                    addr122:
                                    while(true)
                                    {
                                       §§pop().push(§§pop());
                                       loop2:
                                       while(true)
                                       {
                                          if(!(_loc10_ && §_-on§))
                                          {
                                             if(_loc11_ || §_-on§)
                                             {
                                                §§push(§_-E-§);
                                                while(_loc11_)
                                                {
                                                   §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                   while(true)
                                                   {
                                                      §§pop().push(§§pop());
                                                      addr116:
                                                      addr67:
                                                      while(true)
                                                      {
                                                         addr92:
                                                         while(true)
                                                         {
                                                            §§push(§_-E-§);
                                                            if(!_loc11_)
                                                            {
                                                               break loop13;
                                                            }
                                                            continue loop0;
                                                         }
                                                         break loop13;
                                                      }
                                                      if(_loc10_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      §§pop().push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               if(_loc11_ || param1)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr199);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr116);
                                                         }
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                }
                                                §§goto(addr178);
                                                addr112:
                                             }
                                             break;
                                          }
                                          §§goto(addr151);
                                          §§goto(addr229);
                                       }
                                       §§goto(addr191);
                                    }
                                 }
                                 break;
                              default:
                                 §§goto(addr229);
                           }
                           var _loc5_:Array = §§pop();
                           if(_loc11_)
                           {
                              §§push(param3);
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc11_ || param3)
                                    {
                                       §§push(int(_loc5_.length - 1));
                                       loop9:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc11_ || param3)
                                                {
                                                   if(_loc11_ || param3)
                                                   {
                                                      if(§§pop() < 0)
                                                      {
                                                         if(!(_loc10_ && param3))
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc5_.length > 0)
                                                            {
                                                               if(_loc11_ || param1)
                                                               {
                                                                  if(_loc10_ && param3)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(AngryBirdsFP11.sUserProgress);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§pop().saveTutorialSeen(_loc5_.toString());
                                                                        §§goto(addr557);
                                                                     }
                                                                     addr460:
                                                                     §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr486:
                                                                     if(_loc7_ = §§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc5_.splice(_loc6_,1);
                                                                           addr495:
                                                                        }
                                                                        §§goto(addr495);
                                                                     }
                                                                     addr448:
                                                                     §§push(_loc6_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc6_ = §§pop();
                                                                        continue;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                               §§goto(addr557);
                                                            }
                                                            §§goto(addr511);
                                                         }
                                                         §§goto(addr444);
                                                      }
                                                      else
                                                      {
                                                         §§push(AngryBirdsFP11.sUserProgress);
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   §§goto(addr448);
                                                }
                                                break;
                                             }
                                             _loc8_ = §§pop();
                                             if(_loc11_)
                                             {
                                                var _loc9_:* = _loc5_;
                                                if(_loc11_ || param2)
                                                {
                                                }
                                                addr553:
                                                for each(param2 in _loc9_)
                                                {
                                                   if(_loc11_ || param2)
                                                   {
                                                      §_-XH§(param2,param1);
                                                   }
                                                   §§goto(addr553);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr557:
                                    if(!(_loc10_ && param3))
                                    {
                                       addr444:
                                       if(true)
                                       {
                                          addr511:
                                          break loop11;
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr511);
                              }
                           }
                           §§goto(addr454);
                        }
                     }
                     else
                     {
                        addr350:
                        §§push(3);
                        if(_loc10_ && param1)
                        {
                           addr370:
                        }
                     }
                     §§goto(addr375);
                  }
                  else
                  {
                     §§push("POWERUP1");
                     if(_loc11_ || param1)
                     {
                        §§push(_loc8_);
                        if(_loc11_ || §_-on§)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc11_ || param1)
                              {
                                 addr299:
                                 §§push(1);
                                 if(_loc11_ || param2)
                                 {
                                 }
                              }
                              else
                              {
                                 addr327:
                                 §§push(2);
                                 if(_loc10_ && param2)
                                 {
                                 }
                              }
                              §§goto(addr375);
                           }
                           else
                           {
                              §§push("POWERUP2");
                              if(_loc11_)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc10_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc10_ && param2))
                                       {
                                          §§goto(addr327);
                                       }
                                       §§goto(addr375);
                                    }
                                    else
                                    {
                                       §§push("POWERUP3");
                                       if(!_loc10_)
                                       {
                                          addr339:
                                          §§push(_loc8_);
                                          if(!(_loc10_ && §_-on§))
                                          {
                                             addr347:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   §§goto(addr350);
                                                }
                                             }
                                             else
                                             {
                                                addr361:
                                                if("ALL" !== _loc8_)
                                                {
                                                   §§goto(addr375);
                                                   §§push(5);
                                                }
                                             }
                                             §§goto(addr375);
                                          }
                                       }
                                       §§goto(addr361);
                                    }
                                    §§goto(addr375);
                                 }
                                 §§goto(addr361);
                              }
                              §§goto(addr339);
                           }
                        }
                        §§goto(addr347);
                     }
                     §§goto(addr339);
                  }
               }
            }
            §§goto(addr361);
         }
         §§goto(addr299);
      }
      
      public static function §_-09P§(param1:§_-5q§, param2:Boolean = false) : void
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
               if(_loc9_)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:Array = §_-06X§();
            if(_loc9_)
            {
               if(!param2)
               {
                  if(!(_loc10_ && param1))
                  {
                     addr158:
                     _loc5_ = int(_loc3_.length - 1);
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc10_)
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           if(§§pop() < 0)
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc10_ && param2))
                                       {
                                          §§push(AngryBirdsFP11.sUserProgress);
                                          if(!_loc10_)
                                          {
                                             §§pop().saveTutorialSeen(_loc3_.toString());
                                             §§goto(addr214);
                                          }
                                          addr120:
                                          §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                          if(_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr134:
                                                §§push(_loc6_ = §§pop());
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr137);
                                             }
                                             §§goto(addr103);
                                          }
                                          §§goto(addr134);
                                          §§goto(addr103);
                                       }
                                       addr137:
                                       _loc3_.splice(_loc5_,1);
                                       if(!(_loc10_ && param1))
                                       {
                                          addr103:
                                          §§push(_loc5_);
                                          if(!(_loc9_ || _loc3_))
                                          {
                                             break;
                                          }
                                          addr113:
                                          _loc5_ = §§pop() - 1;
                                          continue;
                                       }
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr91);
                           }
                           else
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr113);
                     }
                     break;
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc10_)
                  {
                     var _loc8_:* = _loc3_;
                     if(_loc9_ || _loc3_)
                     {
                     }
                     for each(_loc4_ in _loc8_)
                     {
                        if(_loc9_ || param2)
                        {
                           §_-w9§(_loc4_,param1);
                        }
                     }
                  }
                  if(!_loc10_)
                  {
                     §_-xQ§();
                  }
                  addr214:
                  if(_loc9_)
                  {
                     addr91:
                     if(true)
                     {
                        addr164:
                        break loop0;
                     }
                  }
                  return;
               }
               §§goto(addr164);
            }
            §§goto(addr158);
         }
         addr34:
      }
      
      private static function §_-xQ§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc2_ && param1))
               {
                  if(!§§pop())
                  {
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        if(_loc3_)
                        {
                           isOpen = true;
                        }
                        while(!(_loc2_ && _loc3_))
                        {
                           §_-4j§ = §_-0FG§.pop();
                           do
                           {
                              §_-4j§.open(param1);
                           }
                           while(!(_loc3_ || param1));
                           
                           if(_loc3_ || §_-on§)
                           {
                              break loop1;
                           }
                        }
                        loop5:
                        while(true)
                        {
                           §§push(§_-0FG§.length > 0);
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           addr104:
                           while(true)
                           {
                              §§pop();
                              continue loop5;
                           }
                        }
                     }
                     return;
                     addr78:
                  }
               }
               §§goto(addr104);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr105);
      }
      
      public static function §_-fl§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(isOpen == true)
            {
               if(!(_loc1_ && _loc2_))
               {
                  if(§_-0FG§.length <= 0)
                  {
                     isOpen = false;
                     loop0:
                     for(; _loc2_ || _loc2_; §§pop().preClose(§§pop()),if(!_loc2_)
                     {
                        continue;
                     },§§goto(addr20))
                     {
                        §§push(§_-4j§);
                        if(!(_loc1_ && §_-on§))
                        {
                           §§push(true);
                           if(!(_loc1_ && _loc1_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§pop().preClose(§§pop());
                              while(true)
                              {
                                 isOpen = false;
                                 addr97:
                                 addr114:
                                 while(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §_-xQ§(false);
                                       break loop0;
                                    }
                                 }
                                 addr114:
                                 addr75:
                                 while(true)
                                 {
                                    §§push(§_-4j§);
                                 }
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr20:
                                    return;
                                    addr92:
                                 }
                              }
                           }
                           addr116:
                        }
                        while(true)
                        {
                           §§goto(addr116);
                           §§goto(addr114);
                        }
                     }
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr75);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr20);
         }
         §§goto(addr99);
      }
   }
}
