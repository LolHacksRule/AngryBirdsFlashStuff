package §5§#7
{
   import §,"N§.§@#B§;
   import §6!H§.§&"f§;
   import §6!H§.§8!r§;
   import §7P§.§-!F§;
   import §7P§.§-E§;
   import §7P§.§8!?§;
   import §7P§.§9"J§;
   import §7P§.§=1§;
   import §7P§.§@!8§;
   import §7P§.§]!-§;
   import §^#>§.§#_§;
   import §^#>§.§`"]§;
   import com.angrybirds.§,!q§;
   
   public class §0"d§ extends §`!n§
   {
      
      public static const ALL:String = "all";
      
      public static const §+X§:String = "all_powerups";
      
      public static const §=!7§:String = "level_birds";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            ALL = "all";
         }
         while(true)
         {
            §+X§ = "all_powerups";
            while(_loc1_)
            {
               §=!7§ = "level_birds";
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §0"d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         var _loc3_:* = param1;
         if(_loc4_)
         {
            §§push(§+X§);
            if(!(_loc5_ && param1))
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           addr124:
                        }
                     }
                     else
                     {
                        addr104:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§=!7§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr104);
                              }
                              else
                              {
                                 addr111:
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr124);
                                 }
                              }
                           }
                           else
                           {
                              addr110:
                              if(ALL === _loc3_)
                              {
                                 §§goto(addr111);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr110);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = this.§?"k§();
                        break;
                     case 1:
                        _loc2_ = this.§5"o§(§,!q§.§9!,§);
                        break;
                     case 2:
                        _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§+X§),this.getTutorialNamesForMapping(§=!7§));
                  }
                  return _loc2_;
               }
            }
            §§goto(addr110);
         }
         §§goto(addr111);
      }
      
      protected function §?"k§() : Vector.<String>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§8!r§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc3_:Vector.<§8!r§> = _loc2_.§]"<§.§;#?§.§^"'§;
         for each(_loc4_ in _loc3_)
         {
            if(_loc7_ || _loc3_)
            {
               _loc1_.push(_loc4_.§="A§.toUpperCase());
            }
         }
         return _loc1_;
      }
      
      protected function §5"o§(param1:§#_§) : Vector.<String>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§`"]§ = null;
         var _loc4_:* = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§,!?§)
         {
            if(_loc8_)
            {
               continue;
            }
            §§push(_loc3_.name);
            if(_loc7_ || _loc2_)
            {
               if(§§pop() != §=1§.§+"§)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§push(this.§#"q§(_loc3_.name));
                     if(!_loc8_)
                     {
                        addr79:
                        §§push(§§pop().toUpperCase());
                     }
                     _loc4_ = §§pop();
                     if(_loc8_)
                     {
                        continue;
                     }
                     if(_loc2_.indexOf(_loc4_) >= 0)
                     {
                        continue;
                     }
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                  }
                  _loc2_.push(_loc4_);
               }
               continue;
            }
            §§goto(addr79);
         }
         return _loc2_;
      }
      
      protected function §#"q§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&"f§ = §@#B§(§4#;§.singleton.dataModel).birdLevels;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§-!F§.§+"§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr402:
                        §§push(§-!F§.§+"§ + "_");
                        §§push(_loc2_.red);
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           addr347:
                           while(true)
                           {
                              §§push(param1);
                              loop4:
                              while(true)
                              {
                                 §§push(§@!8§.§+"§);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop().indexOf(§§pop()) == 0)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr363:
                                          §§push(§@!8§.§+"§);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr375);
                                          }
                                          §§goto(addr402);
                                       }
                                       else
                                       {
                                          addr376:
                                          while(true)
                                          {
                                          }
                                          addr376:
                                       }
                                       addr407:
                                       return §§pop() + §§pop();
                                       addr406:
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§]!-§.§+"§);
                                          loop8:
                                          while(§§pop().indexOf(§§pop()) != 0)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§-E§.§+"§);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(§§pop().indexOf(§§pop()) == 0)
                                                      {
                                                         continue loop2;
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(§9"J§.§+"§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop().indexOf(§§pop()) != 0)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    break loop11;
                                                                                 }
                                                                                 §§push(§8!?§.§+"§);
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(§§pop().indexOf(§§pop()) == 0)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr99:
                                                                                                      §§push(§8!?§.§+"§);
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(!(_loc3_ || _loc2_))
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                          }
                                                                                          throw new Error("Bird type not found: \'" + param1 + "\'");
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr99);
                                                                        }
                                                                        addr209:
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push("_");
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr234:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 addr244:
                                                                                 §§push(§§pop() + _loc2_.black);
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr375);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr335:
                                                                                 §§push(_loc2_.§8#<§);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr406);
                                                                                 }
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                           §§goto(addr402);
                                                                           §§goto(addr406);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr307:
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              §§goto(addr315);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr334:
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop8;
                                                            }
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               break loop8;
                                                            }
                                                            §§goto(addr209);
                                                            §§push(§9"J§.§+"§);
                                                         }
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push("_");
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(_loc2_.pink);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr161);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr244);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr402);
                                                                           }
                                                                           §§goto(addr406);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr234);
                                                                     }
                                                                  }
                                                                  addr161:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        addr315:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr319:
                                                                           §§push(_loc2_.yellow);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr322);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr375);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     addr322:
                                                                     return §§pop() + §§pop();
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               §§goto(addr375);
                                                               return §§pop() + "_" + _loc2_.blue;
                                                            }
                                                            §§goto(addr224);
                                                            §§goto(addr335);
                                                         }
                                                         else
                                                         {
                                                            addr333:
                                                            §§push("_");
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                   }
                                                   §§goto(addr363);
                                                }
                                             }
                                          }
                                          §§goto(addr333);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr407);
                  }
                  §§goto(addr347);
               }
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr307);
               §§push("_");
            }
         }
         §§goto(addr376);
      }
   }
}
