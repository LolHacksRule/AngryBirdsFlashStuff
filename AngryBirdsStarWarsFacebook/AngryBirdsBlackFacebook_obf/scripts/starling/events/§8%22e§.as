package starling.events
{
   import §!!U§.Stage;
   import flash.geom.Point;
   
   public class §8"e§
   {
      
      private static const §@![§:Number = 0.3;
      
      private static const §7z§:Number = 25;
      
      private static var §?!<§:Vector.<int>;
      
      private static var §0#Z§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@![§ = 0.3;
            while(true)
            {
               §7z§ = 25;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §?!<§ = new Vector.<int>(0);
                     do
                     {
                        §0#Z§ = new Vector.<Object>(0);
                     }
                     while(!_loc2_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      private var § "u§:Stage;
      
      private var §-#H§:Number;
      
      private var § "Z§:Number;
      
      private var §3"[§:§1"H§;
      
      private var §97§:Vector.<§[#W§>;
      
      private var §6"F§:Vector.<Array>;
      
      private var §1#&§:Vector.<§[#W§>;
      
      private var §'!s§:Boolean = false;
      
      private var §<#J§:Boolean = false;
      
      public function §8"e§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               this.§ "u§ = param1;
               if(!(_loc4_ && param1))
               {
                  addr37:
                  this.§-#H§ = this.§ "Z§ = 0;
                  if(_loc3_ || _loc2_)
                  {
                     this.§97§ = new Vector.<§[#W§>(0);
                     loop0:
                     while(true)
                     {
                        this.§6"F§ = new Vector.<Array>(0);
                        while(true)
                        {
                           this.§1#&§ = new Vector.<§[#W§>(0);
                           addr103:
                           if(_loc3_ || param1)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr156:
                  }
                  §§goto(addr127);
               }
               §§goto(addr156);
            }
            §§goto(addr117);
         }
         §§goto(addr37);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ "u§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr106:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§[#O§);
                  continue loop0;
               }
            }
         }
         §§goto(addr24);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§[#W§ = null;
         var _loc5_:§[#W§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc10_ || _loc3_)
         {
            §§push(this);
            §§push(this.§-#H§);
            if(!_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§-#H§ = §§pop();
            loop0:
            while(true)
            {
               this.§ "Z§ = 0;
               loop1:
               while(true)
               {
                  if(!(_loc11_ && _loc3_))
                  {
                     if(this.§1#&§.length > 0)
                     {
                        if(!_loc11_)
                        {
                           if(!_loc10_)
                           {
                              continue;
                           }
                           _loc2_ = int(this.§1#&§.length - 1);
                        }
                        addr120:
                        loop30:
                        while(true)
                        {
                           loop31:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc11_)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc10_ || _loc3_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc11_ && this))
                                          {
                                             break loop1;
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§-#H§);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() - this.§1#&§[_loc2_].timestamp);
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                addr87:
                                                if(§§pop() > §@![§)
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      this.§1#&§.splice(_loc2_,1);
                                                      if(!_loc11_)
                                                      {
                                                         addr40:
                                                         §§push(_loc2_);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(!(_loc10_ || param1))
                                                               {
                                                                  break loop1;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop30;
                                                               }
                                                               continue loop31;
                                                            }
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            var _loc8_:* = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  var _loc9_:* = §0#Z§;
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                     if(!_loc11_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                              if(_loc6_.touch.target != _loc6_.target)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§;!1§,this.§97§,this.§'!s§,this.§<#J§));
                                                                                 }
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 addr486:
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    addr494:
                                                                                    §§push(0);
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr505:
                                                                                          _loc9_ = §?!<§;
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                break loop21;
                                                                                             }
                                                                                             addr544:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§97§.length - 1);
                                                                                                      addr650:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         addr651:
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            addr652:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop13:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        break loop31;
                                                                                                                     }
                                                                                                                     loop14:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                        addr605:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  loop15:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr616:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           break loop15;
                                                                                                                        }
                                                                                                                        addr630:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§97§.splice(_loc2_,1);
                                                                                                                           addr645:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr605);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr618:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr553:
                                                                                                }
                                                                                                §§goto(addr618);
                                                                                             }
                                                                                             addr542:
                                                                                             addr545:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push((_loc4_ = this.§"#1§(_loc3_)).target);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr531:
                                                                                                      _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§;!1§,this.§97§,this.§'!s§,this.§<#J§));
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr542);
                                                                                             }
                                                                                             §§goto(addr531);
                                                                                          }
                                                                                          addr517:
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                    §§goto(addr651);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                              §§goto(addr505);
                                                                           }
                                                                           §§goto(addr544);
                                                                        }
                                                                        addr470:
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                        §§goto(addr517);
                                                                     }
                                                                     §§goto(addr544);
                                                                  }
                                                               }
                                                               addr436:
                                                            }
                                                            §§goto(addr544);
                                                         }
                                                         addr433:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(!_loc11_)
                                                         {
                                                            §§goto(addr433);
                                                         }
                                                         break loop31;
                                                      }
                                                      addr430:
                                                   }
                                                   §§goto(addr618);
                                                }
                                                §§goto(addr40);
                                             }
                                             §§goto(addr650);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr618);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       loop27:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§ "Z§);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + 0.00001);
                                          }
                                          §§pop().§ "Z§ = §§pop();
                                          loop28:
                                          while(true)
                                          {
                                             if(_loc10_ || this)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   addr604:
                                                   loop2:
                                                   while(true)
                                                   {
                                                      if(this.§6"F§.length <= 0)
                                                      {
                                                         if(_loc11_ && _loc2_)
                                                         {
                                                            continue loop28;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            continue loop27;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr652);
                                                      }
                                                      else
                                                      {
                                                         §?!<§.length = §0#Z§.length = 0;
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            §§push(0);
                                                            if(!_loc11_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  _loc9_ = this.§97§;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§6"F§.length > 0);
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§?!<§.indexOf(this.§6"F§[this.§6"F§.length - 1][0]) == -1);
                                                                                                }
                                                                                                §§goto(addr645);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc3_ = (_loc7_ = this.§6"F§.pop())[0] as int;
                                                                                       §§push(Boolean(_loc4_ = this.§"#1§(_loc3_)));
                                                                                       if(!(_loc11_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc4_.phase == §5X§.§;!s§);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr377:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            addr386:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr388:
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr389:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(_loc4_.target));
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr388:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §0#Z§.push({
                                                                                                                        "touch":_loc4_,
                                                                                                                        "target":_loc4_.target
                                                                                                                     });
                                                                                                                     addr369:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ || this))
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        §?!<§.push(_loc3_);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§6!L§.apply(this,_loc7_);
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              addr339:
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                     §§goto(addr369);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr339);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   §§goto(addr389);
                                                                                                }
                                                                                                §§goto(addr388);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 §§goto(addr553);
                                                                              }
                                                                              §§goto(addr436);
                                                                           }
                                                                           §§goto(addr544);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                           §§push(_loc5_.phase);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§push(§5X§.§<!A§);
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr239:
                                                                                             if(_loc5_.phase != §5X§.§!!Z§)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          _loc5_.§%"8§(§5X§.§@#6§);
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr486);
                                                            }
                                                            §§goto(addr651);
                                                         }
                                                         §§goto(addr494);
                                                      }
                                                      §§goto(addr604);
                                                   }
                                                   addr604:
                                                   return;
                                                   addr555:
                                                }
                                                §§goto(addr645);
                                             }
                                             §§goto(addr616);
                                          }
                                       }
                                    }
                                    else if(this.§97§[_loc2_].phase == §5X§.§"!u§)
                                    {
                                       §§goto(addr630);
                                    }
                                    §§goto(addr605);
                                 }
                                 addr581:
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr581);
                           }
                           §§goto(addr604);
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr555);
            }
         }
         §§goto(addr120);
      }
      
      public function §2#S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            this.§6"F§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§<#J§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr146:
                              loop12:
                              while(true)
                              {
                                 §§push(this.§`#"§);
                                 addr110:
                                 while(!(_loc6_ || this))
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc6_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc7_)
                                       {
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(§§pop())
                                             {
                                                while(!(_loc7_ && param3))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      this.§3"[§.§[=§(param3,param4,this.§'!s§);
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop0;
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      break loop9;
                                                   }
                                                }
                                                §§goto(addr128);
                                             }
                                             addr127:
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§pop();
                                             addr128:
                                             while(true)
                                             {
                                                §§push(param1 == 0);
                                                if(!(_loc6_ || this))
                                                {
                                                   continue loop6;
                                                }
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr110);
                                          }
                                          continue loop1;
                                          return;
                                       }
                                       break;
                                    }
                                    continue loop3;
                                    addr122:
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      private function §6!L§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§[#W§;
         if((_loc6_ = this.§"#1§(param1)) == null)
         {
            if(_loc8_)
            {
               _loc6_ = new §[#W§(param1,param3,param4,param2,null);
               if(!_loc7_)
               {
                  this.§+"y§(_loc6_);
                  addr47:
                  _loc6_.setPosition(param3,param4);
                  if(_loc8_)
                  {
                     _loc6_.§%"8§(param2);
                  }
                  loop14:
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(this.§-#H§);
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() + this.§ "Z§);
                     }
                     §§pop().§2S§(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(param2);
                        loop3:
                        while(true)
                        {
                           §§push(§5X§.§;!s§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param2);
                                          while(true)
                                          {
                                             §§push(§5X§.§<!A§);
                                             addr119:
                                             do
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc8_)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             while(_loc8_ || this);
                                             
                                             addr58:
                                             continue loop5;
                                             loop12:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!(_loc8_ || param1))
                                                {
                                                   break;
                                                }
                                                if(!_loc8_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§5X§.§<!A§);
                                                if(_loc8_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr78:
                                                            if(_loc8_)
                                                            {
                                                               addr90:
                                                               if(!(_loc8_ || this))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§&m§(_loc6_);
                                                                  addr100:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           §§goto(addr54);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  §§goto(addr90);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr131:
                                                               while(true)
                                                               {
                                                                  _loc6_.§2!`§(this.§ "u§.hitTest(_loc5_,true));
                                                                  §§goto(addr78);
                                                               }
                                                               addr131:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      addr54:
                                                   }
                                                   continue loop4;
                                                   return;
                                                }
                                                §§goto(addr119);
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr131);
                                    }
                                    §§goto(addr58);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr97);
         }
         §§goto(addr47);
      }
      
      private function §[#O§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§[#W§ = null;
         var _loc4_:§[#W§ = null;
         if(_loc5_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(15);
                                    if(!(_loc6_ && this))
                                    {
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1.keyCode);
                                                break loop5;
                                             }
                                             if(_loc5_)
                                             {
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop5;
                                                }
                                                §§push(this.§<#J§);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         this.§<#J§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§`#"§);
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop10:
                                                                  for(; _loc5_; if(!(_loc6_ && this))
                                                                  {
                                                                     continue loop7;
                                                                  })
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§3"[§);
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().visible = this.§<#J§;
                                                                                       if(_loc6_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr115:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§3"[§);
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§pop().§8!=§(this.§ "u§.stageWidth / 2,this.§ "u§.stageHeight / 2);
                                                                                          if(!(_loc5_ || _loc2_))
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§<#J§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   addr128:
                                                                                                   while(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          _loc3_ = this.§"#1§(0);
                                                                                          _loc4_ = this.§"#1§(1);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§3"[§.§[=§(_loc3_.globalX,_loc3_.globalY);
                                                                                                   addr495:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§push(Boolean(_loc4_));
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.phase);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§5X§.§"!u§);
                                                                                                                           addr442:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              addr443:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr271:
                                                                                                                           if(!(_loc5_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(§5X§.§!!Z§);
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop26;
                                                                                                                                       }
                                                                                                                                       loop43:
                                                                                                                                       while(!§§pop())
                                                                                                                                       {
                                                                                                                                          this.§6"F§.unshift([1,§5X§.§;!s§,this.§3"[§.§,"'§,this.§3"[§.§="P§]);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ && this)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                addr249:
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   loop42:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.phase);
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr271);
                                                                                                                                                      }
                                                                                                                                                      loop45:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§5X§.§<!A§);
                                                                                                                                                         addr356:
                                                                                                                                                         addr476:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr364:
                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr371:
                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop43;
                                                                                                                                                                        }
                                                                                                                                                                        loop40:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr387:
                                                                                                                                                                           while(!(_loc6_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           addr429:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(_loc3_));
                                                                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr443);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr496:
                                                                                                                                                                                    break loop13;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop40;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr386:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§goto(addr429);
                                                                                                                                                                              }
                                                                                                                                                                              addr428:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr427:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop45;
                                                                                                                                                                           }
                                                                                                                                                                           addr352:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr496);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           this.§6"F§.unshift([1,§5X§.§"!u§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr496);
                                                                                                                                                                        addr461:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§<#J§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr371);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop24;
                                                                                                                                                                  addr445:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     continue loop26;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop28;
                                                                                                                                                                  §§goto(addr364);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr386);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop25;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr442);
                                                                                                                                                }
                                                                                                                                                §§goto(addr496);
                                                                                                                                             }
                                                                                                                                             §§goto(addr352);
                                                                                                                                          }
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                break loop24;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr387);
                                                                                                                                          }
                                                                                                                                          §§goto(addr496);
                                                                                                                                       }
                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§6"F§.unshift([1,§5X§.§<!A§,this.§3"[§.§,"'§,this.§3"[§.§="P§]);
                                                                                                                                          §§goto(addr333);
                                                                                                                                       }
                                                                                                                                       §§goto(addr461);
                                                                                                                                    }
                                                                                                                                    §§goto(addr428);
                                                                                                                                 }
                                                                                                                                 §§goto(addr386);
                                                                                                                              }
                                                                                                                              §§goto(addr442);
                                                                                                                           }
                                                                                                                           §§goto(addr356);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr445);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr495);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr473);
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr520);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr496);
                                                                           }
                                                                           addr513:
                                                                           this.§'!s§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                           addr520:
                                                                           return;
                                                                           addr94:
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop4;
                                                            }
                                                            §§goto(addr128);
                                                         }
                                                         §§goto(addr513);
                                                      }
                                                      §§goto(addr520);
                                                   }
                                                }
                                             }
                                             §§goto(addr513);
                                             if(_loc6_ && param1)
                                             {
                                                continue;
                                             }
                                             §§goto(addr94);
                                          }
                                       }
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr513);
                                       }
                                    }
                                    §§goto(addr520);
                                 }
                                 break;
                              }
                              §§goto(addr500);
                           }
                        }
                        §§goto(addr178);
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      private function §&m§(param1:§[#W§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§[#W§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§[#W§ = null;
         §§push(§7z§);
         if(!(_loc9_ && _loc2_))
         {
            §§push(§§pop() * §7z§);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§1#&§)
         {
            if(_loc8_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(_loc8_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc8_ || param1)
                  {
                     _loc5_ = §§pop();
                     addr97:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr99:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr99);
         }
         if(_loc8_)
         {
            if(!_loc2_)
            {
               param1.§4#D§(1);
               while(true)
               {
                  if(_loc8_)
                  {
                     while(true)
                     {
                        this.§1#&§.push(param1.clone());
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(_loc9_)
                        {
                           continue;
                        }
                        if(!_loc9_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  addr158:
                  while(true)
                  {
                     param1.§4#D§(_loc2_.§`l§ + 1);
                  }
                  while(true)
                  {
                     this.§1#&§.splice(this.§1#&§.indexOf(_loc2_),1);
                     §§goto(addr145);
                  }
               }
            }
            §§goto(addr158);
         }
         §§goto(addr145);
      }
      
      private function §+"y§(param1:§[#W§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§97§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc4_ && this))
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        this.§97§.push(param1);
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     addr108:
                  }
                  else if(this.§97§[_loc2_].id == param1.id)
                  {
                     if(_loc3_ || param1)
                     {
                        this.§97§.splice(_loc2_,1);
                     }
                     §§goto(addr108);
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
      }
      
      private function §"#1§(param1:int) : §[#W§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[#W§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§97§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §`#"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3"[§ == null);
         if(!(_loc1_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function set §`#"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§`#"§ != param1)
            {
               return;
            }
         }
      }
   }
}
