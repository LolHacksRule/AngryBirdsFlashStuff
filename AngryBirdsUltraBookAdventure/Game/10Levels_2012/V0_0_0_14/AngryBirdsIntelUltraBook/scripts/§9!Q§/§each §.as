package §9!Q§
{
   import §+&§.§`o§;
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §1n§.§ C§;
   import §5i§.§4!]§;
   import §6z§.§`!<§;
   import §9#§.§"<§;
   import §9#§.§2!E§;
   import §9#§.§;!-§;
   import §9#§.Popup;
   
   public class §each § extends §2!E§
   {
      
      private static var §`!8§:Array;
      
      private static var §%!1§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §'!X§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!8§ = [];
         }
         do
         {
            §%!1§ = null;
            do
            {
               isOpen = false;
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      public function §each §()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      private static function §?!<§(param1:String, param2:§ C§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; !_loc6_; if(!(_loc5_ || _loc3_))
               {
                  continue;
               },§§pop().§§slot[3] = "",if(_loc5_ || _loc3_)
               {
                  §§goto(addr226);
               },§§goto(addr238))
               {
                  §§pop().§§slot[1] = param1;
                  while(!(_loc6_ && §each §))
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr238:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || _loc3_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                     if(!(_loc5_ || param2))
                     {
                        continue;
                     }
                     §§push(§§newactivation());
                     if(_loc5_ || §each §)
                     {
                        addr277:
                        var _loc4_:* = §§pop().§§slot[1];
                        if(_loc5_)
                        {
                           §§push("BIRD_BLACK");
                           if(!_loc6_)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       §§push(0);
                                       if(_loc5_ || param2)
                                       {
                                          addr473:
                                          switch(§§pop())
                                          {
                                             case 2:
                                                §§push(§§newactivation());
                                                if(_loc6_ && §each §)
                                                {
                                                   §§goto(addr277);
                                                }
                                                addr174:
                                                §§push("TUTORIAL_RED");
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                }
                                                addr199:
                                                §§pop().§§slot[3] = §§pop();
                                                break;
                                             case 1:
                                                addr190:
                                                var tutorialName:String = "TUTORIAL_BLUE";
                                                break;
                                                addr191:
                                                addr189:
                                             case 0:
                                                addr490:
                                                §§push(§§newactivation());
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr199);
                                                   §§push("TUTORIAL_BLACK");
                                                }
                                                §§pop().§§slot[4] = new §"<§(§`!<§.§ !0§(§'U§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§));
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr522:
                                                   if(tutorialPopup)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr541:
                                                         §`!8§.push(tutorialPopup);
                                                      }
                                                   }
                                                   addr522:
                                                }
                                                §§goto(addr545);
                                             default:
                                                return;
                                             case 3:
                                                addr152:
                                                §§push(§§newactivation());
                                                §§push("TUTORIAL_WHITE");
                                                if(!(_loc6_ && §each §))
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   addr161:
                                                   break;
                                                   addr161:
                                                }
                                                else
                                                {
                                                   §§goto(addr190);
                                                }
                                                break;
                                             case 4:
                                                §§push(§§newactivation());
                                                if(_loc5_ || param2)
                                                {
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr490);
                                             case 5:
                                                addr113:
                                                §§push(§§newactivation());
                                                if(_loc5_ || param2)
                                                {
                                                   addr121:
                                                   §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr541);
                                                }
                                                else
                                                {
                                                   §§goto(addr152);
                                                }
                                             case 6:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr84:
                                                         §§push("TUTORIAL_BIG_BROTHER");
                                                         if(!_loc6_)
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr522);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr152);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr121);
                                                         }
                                                         §§goto(addr541);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr113);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr490);
                                             case 7:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§push("TUTORIAL_MIGHTYEAGLE");
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         addr139:
                                                         §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                                         if(_loc5_ || §each §)
                                                         {
                                                            break;
                                                         }
                                                         addr545:
                                                         return;
                                                      }
                                                      if(_loc5_ || §each §)
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(_loc5_ || §each §)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr522);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr490);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr84);
                                                   }
                                                }
                                                §§goto(addr490);
                                          }
                                          try
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§goto(addr490);
                                             }
                                             §§goto(addr522);
                                          }
                                          catch(e:Error)
                                          {
                                             §§goto(addr522);
                                          }
                                          §§goto(addr490);
                                       }
                                       addr438:
                                       §§goto(addr473);
                                    }
                                    addr460:
                                    §§push(7);
                                    if(_loc5_ || param1)
                                    {
                                       addr468:
                                    }
                                    §§goto(addr473);
                                 }
                                 §§push("BIRD_BLUE");
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_ || param2)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             §§push(1);
                                             if(!(_loc6_ && §each §))
                                             {
                                                §§goto(addr473);
                                             }
                                             addr415:
                                             §§goto(addr473);
                                          }
                                          §§goto(addr460);
                                       }
                                       §§push("BIRD_RED");
                                       if(_loc5_ || §each §)
                                       {
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || §each §)
                                                {
                                                   §§push(2);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§goto(addr473);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                addr430:
                                                §§push(5);
                                                if(_loc5_ || param2)
                                                {
                                                   §§goto(addr438);
                                                }
                                                §§goto(addr473);
                                             }
                                             §§push("BIRD_WHITE");
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr389:
                                                         §§push(3);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr473);
                                                         }
                                                         addr456:
                                                         §§goto(addr473);
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   addr458:
                                                   §§push("BIRD_YELLOW");
                                                   if(_loc5_)
                                                   {
                                                      addr396:
                                                      §§push(_loc4_);
                                                      if(_loc5_ || §each §)
                                                      {
                                                      }
                                                      addr459:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr460);
                                                      }
                                                      §§goto(addr473);
                                                      §§push(8);
                                                   }
                                                   §§goto(addr459);
                                                   §§push(_loc4_);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(4);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr468);
                                                   }
                                                   addr453:
                                                   §§push(6);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr456);
                                                   }
                                                   §§goto(addr468);
                                                }
                                                §§push("BIRD_GREEN");
                                                if(_loc5_)
                                                {
                                                   addr419:
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && §each §))
                                                   {
                                                      addr427:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr430);
                                                         }
                                                         §§goto(addr460);
                                                      }
                                                      §§push("BIRD_REDBIG");
                                                      if(_loc5_ || §each §)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc5_)
                                                         {
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                      §§goto(addr458);
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr453);
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   §§push("BIRD_SARDINE");
                                                }
                                             }
                                             §§goto(addr458);
                                          }
                                          §§goto(addr427);
                                       }
                                    }
                                    §§goto(addr396);
                                 }
                                 §§goto(addr419);
                              }
                              §§goto(addr427);
                           }
                           §§goto(addr419);
                        }
                        §§goto(addr389);
                     }
                     §§goto(addr490);
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private static function §`d§(param1:String, param2:§ C§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr89:
            loop1:
            while(true)
            {
               addr80:
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr83:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr84:
                     while(true)
                     {
                        addr49:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            if(!(_loc5_ || param2))
            {
               continue;
            }
            §§pop().§§slot[2] = param2;
            while(_loc5_)
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§push(powerUpName);
                  if(!_loc6_)
                  {
                     if(!(_loc6_ && §each §))
                     {
                        addr37:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(_loc5_ || §each §)
                        {
                           if(true)
                           {
                              try
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && §each §))
                                 {
                                    §§pop().§§slot[4] = new §;!-§(§`!<§.§ !0§(§[K§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§),tutorialName);
                                    §§goto(addr155);
                                 }
                                 if(§§pop().§§slot[4])
                                 {
                                    if(!_loc6_)
                                    {
                                       §`!8§.push(tutorialPopup);
                                    }
                                 }
                              }
                              catch(e:Error)
                              {
                                 §§goto(addr146);
                              }
                              addr155:
                              if(!(_loc6_ && param1))
                              {
                                 addr146:
                                 §§push(§§newactivation());
                              }
                              return;
                           }
                           §§goto(addr49);
                        }
                        else
                        {
                           §§goto(addr89);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr37);
               }
               §§goto(addr51);
            }
            §§goto(addr84);
         }
      }
      
      private static function §&!U§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`o§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §4!]§.§8C§.slingshot.§9q§)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §%!S§(param1:§ C§, param2:String, param3:Boolean = false) : void
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
                  §§goto(addr26);
               }
            }
            §§push(param2);
            if(_loc10_ || §each §)
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(!(_loc11_ && param2))
            {
               §'!X§ = [];
            }
            var _loc8_:* = param2;
            if(!(_loc11_ && param1))
            {
               §§push("POWERUP4");
               if(!_loc11_)
               {
                  §§push(_loc8_);
                  if(_loc10_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc11_)
                        {
                           §§push(0);
                           if(_loc10_ || param1)
                           {
                           }
                        }
                        else
                        {
                           addr351:
                           §§push(4);
                           if(_loc10_ || param3)
                           {
                              addr359:
                           }
                        }
                        addr364:
                        loop20:
                        switch(§§pop())
                        {
                           case 0:
                              addr233:
                              _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
                              §§push(§'!X§);
                              if(_loc10_ || §each §)
                              {
                                 addr227:
                                 §§pop().push(_loc4_);
                                 §§push(§'!X§);
                                 break;
                                 addr228:
                              }
                              break;
                              addr234:
                           case 1:
                              addr213:
                              _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
                              if(_loc10_)
                              {
                                 addr205:
                                 §§push(§'!X§);
                                 §§push(_loc4_);
                                 if(!_loc11_)
                                 {
                                    §§pop().push(§§pop());
                                    addr208:
                                 }
                                 else
                                 {
                                    §§goto(addr227);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr228);
                           case 2:
                              addr189:
                              §§push("POWERUP_TUTORIAL_KINGSLING");
                              if(!(_loc11_ && param2))
                              {
                                 if(!_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    addr199:
                                    if(_loc10_)
                                    {
                                       §§push(§'!X§);
                                       if(!(_loc11_ && param3))
                                       {
                                          addr183:
                                          §§pop().push(_loc4_);
                                          addr184:
                                       }
                                       break;
                                    }
                                    §§goto(addr234);
                                    §§goto(addr227);
                                 }
                                 else
                                 {
                                    §§goto(addr233);
                                 }
                              }
                              else
                              {
                                 §§goto(addr213);
                              }
                              §§goto(addr227);
                           case 3:
                              §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                              if(!_loc11_)
                              {
                                 _loc4_ = §§pop();
                                 addr156:
                                 §§push(§'!X§);
                                 if(!_loc11_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc11_)
                                    {
                                       if(_loc10_)
                                       {
                                          §§pop().push(§§pop());
                                          addr164:
                                       }
                                       else
                                       {
                                          §§goto(addr205);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr183);
                                    }
                                    §§goto(addr227);
                                 }
                                 else
                                 {
                                    §§goto(addr205);
                                 }
                                 addr172:
                              }
                              else
                              {
                                 §§goto(addr189);
                              }
                              §§goto(addr227);
                           case 4:
                              §§push(§'!X§);
                              loop0:
                              while(true)
                              {
                                 §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().push(§§pop());
                                    loop2:
                                    while(true)
                                    {
                                       if(!(_loc11_ && §each §))
                                       {
                                          if(_loc10_)
                                          {
                                             §§push(§'!X§);
                                             loop3:
                                             while(true)
                                             {
                                                §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                while(true)
                                                {
                                                   §§pop().push(§§pop());
                                                   if(_loc10_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc10_ || param1)
                                                         {
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§'!X§);
                                                                  loop6:
                                                                  while(_loc10_)
                                                                  {
                                                                     §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                     while(true)
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                        if(!(_loc11_ && §each §))
                                                                        {
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              if(!(_loc11_ && param2))
                                                                              {
                                                                                 §§push(§'!X§);
                                                                                 if(_loc10_ || param2)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                                 break loop20;
                                                                              }
                                                                              §§goto(addr213);
                                                                              §§goto(addr227);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr172);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr199);
                                                            §§goto(addr227);
                                                         }
                                                         break loop3;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr227);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr184);
                                          }
                                          break;
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              break;
                           default:
                              §§goto(addr227);
                        }
                        var _loc5_:Array = §§pop();
                        if(_loc10_)
                        {
                           §§push(param3);
                           loop8:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc11_ && param3))
                                 {
                                    §§push(int(_loc5_.length - 1));
                                    if(_loc10_ || param3)
                                    {
                                       _loc6_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc10_ || param3)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(§§pop() < 0)
                                                   {
                                                      if(_loc10_ || param2)
                                                      {
                                                         if(_loc10_ || param2)
                                                         {
                                                            if(_loc10_ || param2)
                                                            {
                                                               if(_loc5_.length > 0)
                                                               {
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     addr417:
                                                                     while(true)
                                                                     {
                                                                        §§push(AngryBirdsFP11.sUserProgress);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§pop().saveTutorialSeen(_loc5_.toString());
                                                                           if(_loc10_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break loop9;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       addr433:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr501:
                                                                                       _loc8_ = §§pop();
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          var _loc9_:* = _loc5_;
                                                                                          if(!(_loc11_ && param3))
                                                                                          {
                                                                                             for each(param2 in _loc9_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             addr546:
                                                                                             return;
                                                                                             addr542:
                                                                                             addr545:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §`d§(param2,param1);
                                                                                             §§goto(addr542);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr426:
                                                                           }
                                                                           §§goto(addr546);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().hasTutorialBeenSeen(_loc5_[_loc6_]));
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              addr463:
                                                                              if(_loc7_ = §§pop())
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                           addr442:
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     addr417:
                                                                  }
                                                                  §§goto(addr426);
                                                               }
                                                               break loop9;
                                                            }
                                                            continue loop9;
                                                         }
                                                         addr477:
                                                         while(true)
                                                         {
                                                         }
                                                         §§goto(addr428);
                                                      }
                                                      §§goto(addr417);
                                                   }
                                                   else
                                                   {
                                                      §§push(AngryBirdsFP11.sUserProgress);
                                                   }
                                                   §§goto(addr442);
                                                }
                                                §§goto(addr433);
                                             }
                                          }
                                       }
                                       addr500:
                                       §§push(0);
                                       addr499:
                                    }
                                    §§goto(addr501);
                                 }
                                 §§goto(addr499);
                              }
                              §§goto(addr500);
                           }
                        }
                        §§goto(addr417);
                     }
                     else
                     {
                        §§push("POWERUP1");
                        if(!_loc11_)
                        {
                           §§push(_loc8_);
                           if(!(_loc11_ && §each §))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc10_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc11_)
                                    {
                                       §§goto(addr359);
                                    }
                                 }
                                 else
                                 {
                                    addr339:
                                    §§push(3);
                                    if(_loc10_ || param3)
                                    {
                                       addr347:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("POWERUP2");
                                 if(!(_loc11_ && param1))
                                 {
                                    addr310:
                                    §§push(_loc8_);
                                    if(_loc10_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(2);
                                             if(_loc10_)
                                             {
                                                §§goto(addr364);
                                             }
                                             else
                                             {
                                                §§goto(addr347);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr351);
                                          }
                                          §§goto(addr364);
                                       }
                                       else
                                       {
                                          §§push("POWERUP3");
                                          if(!_loc11_)
                                          {
                                             addr328:
                                             §§push(_loc8_);
                                             if(_loc10_ || param1)
                                             {
                                                addr336:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc10_)
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
                                                   §§push("ALL");
                                                }
                                                §§goto(addr351);
                                             }
                                             addr350:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr351);
                                             }
                                             else
                                             {
                                                §§goto(addr364);
                                                §§push(5);
                                             }
                                             §§goto(addr364);
                                          }
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr350);
                                 §§push(_loc8_);
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr328);
                     }
                  }
                  §§goto(addr328);
               }
               §§goto(addr310);
            }
            §§goto(addr339);
         }
         addr26:
      }
      
      public static function §5!b§(param1:§ C§, param2:Boolean = false) : void
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
               if(!(_loc9_ && param1))
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:Array = §&!U§();
            if(!(_loc9_ && param1))
            {
               if(!param2)
               {
                  if(_loc10_ || param2)
                  {
                     addr164:
                     _loc5_ = int(_loc3_.length - 1);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!(_loc9_ && param1))
                     {
                        if(!_loc9_)
                        {
                           if(§§pop() < 0)
                           {
                              if(!(_loc9_ && param2))
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       if(!_loc9_)
                                       {
                                          §§pop().saveTutorialSeen(_loc3_.toString());
                                          §§goto(addr213);
                                       }
                                       addr126:
                                       §§push(§§pop().hasTutorialBeenSeen(_loc3_[_loc5_]));
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc9_)
                                          {
                                             §§push(_loc6_ = §§pop());
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             _loc3_.splice(_loc5_,1);
                                             if(!(_loc9_ && §each §))
                                             {
                                                addr154:
                                             }
                                             §§goto(addr213);
                                          }
                                          addr143:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          addr107:
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc9_ && _loc3_)
                                             {
                                                break loop0;
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc10_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr143);
                                             }
                                          }
                                          continue loop0;
                                          §§goto(addr154);
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr213);
                           }
                           else
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr107);
                     }
                     break;
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc9_)
                  {
                     var _loc8_:* = _loc3_;
                     if(_loc10_ || _loc3_)
                     {
                        for each(_loc4_ in _loc8_)
                        {
                           if(_loc9_)
                           {
                              continue;
                           }
                        }
                        addr210:
                        if(!_loc9_)
                        {
                           §§goto(addr213);
                        }
                        addr213:
                        if(!(_loc9_ && param1))
                        {
                           if(true)
                           {
                              addr170:
                              break loop0;
                           }
                        }
                        §'e§();
                        return;
                        addr207:
                     }
                     while(true)
                     {
                        §?!<§(_loc4_,param1);
                        §§goto(addr207);
                     }
                  }
                  §§goto(addr210);
               }
               §§goto(addr170);
            }
            §§goto(addr164);
         }
         addr40:
      }
      
      private static function §'e§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(isOpen);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        isOpen = true;
                     }
                     do
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(§`!8§.length > 0);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr94:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     while(§%!1§ = §`!8§.pop(), do
                     {
                        §%!1§.open(param1);
                     }
                     while(_loc2_);
                     , _loc2_ && _loc3_);
                     
                     break;
                  }
                  return;
                  addr78:
               }
               §§goto(addr94);
            }
         }
         §§goto(addr47);
      }
      
      public static function §]!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(isOpen == true)
            {
               loop0:
               while(§`!8§.length <= 0)
               {
                  isOpen = false;
                  loop1:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(§%!1§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(true);
                           if(_loc1_)
                           {
                              §§pop().preClose(§§pop());
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              if(_loc1_ || §each §)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    isOpen = false;
                                 }
                                 addr121:
                              }
                              while(true)
                              {
                                 §'e§(false);
                                 break loop1;
                              }
                           }
                           while(true)
                           {
                              §§pop().preClose(§§pop());
                              §§goto(addr121);
                           }
                           addr120:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr120);
                     }
                  }
                  while(_loc2_ && §each §)
                  {
                     break loop0;
                     §§goto(addr110);
                  }
                  return;
               }
               while(true)
               {
                  §§goto(addr119);
               }
            }
            §§goto(addr19);
         }
         §§goto(addr93);
      }
   }
}
