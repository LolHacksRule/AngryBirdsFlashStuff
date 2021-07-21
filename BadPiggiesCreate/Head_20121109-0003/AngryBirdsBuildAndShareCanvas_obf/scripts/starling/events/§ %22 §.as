package starling.events
{
   import §+!-§.Stage;
   import flash.geom.Point;
   
   public class § " §
   {
      
      private static const §,V§:Number = 0.3;
      
      private static const §2!t§:Number = 25;
      
      private static var §8"3§:Vector.<int>;
      
      private static var §7B§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § " §)
         {
            §,V§ = 0.3;
            while(true)
            {
               §2!t§ = 25;
               loop1:
               while(!_loc2_)
               {
                  §8"3§ = new Vector.<int>(0);
                  while(true)
                  {
                     §7B§ = new Vector.<Object>(0);
                     if(!(_loc2_ && § " §))
                     {
                        if(_loc1_ || § " §)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      private var §0"§:Stage;
      
      private var §7!`§:Number;
      
      private var §2!g§:Number;
      
      private var §0!h§:§#?§;
      
      private var §=z§:Vector.<§;g§>;
      
      private var §>!q§:Vector.<Array>;
      
      private var §-!%§:Vector.<§;g§>;
      
      private var §<0§:Boolean = false;
      
      private var §1!_§:Boolean = false;
      
      public function § " §(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               this.§0"§ = param1;
               if(!_loc3_)
               {
                  addr38:
                  this.§7!`§ = this.§2!g§ = 0;
                  if(!_loc3_)
                  {
                     this.§=z§ = new Vector.<§;g§>(0);
                     loop0:
                     while(true)
                     {
                        this.§>!q§ = new Vector.<Array>(0);
                        loop1:
                        while(true)
                        {
                           this.§-!%§ = new Vector.<§;g§>(0);
                           loop2:
                           while(true)
                           {
                              §§push(this.§0"§);
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr103:
                                 addr113:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§2!^§);
                                    continue loop2;
                                 }
                                 §§push(this.§0"§);
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(KeyboardEvent.KEY_UP);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§2!^§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr103);
                              }
                           }
                        }
                     }
                     addr49:
                  }
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr49);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0"§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr91:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§2!^§);
                  continue loop0;
               }
            }
            addr89:
         }
         while(true)
         {
            §§push(this.§0"§);
            if(!_loc2_)
            {
               §§push(KeyboardEvent.KEY_UP);
               if(_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§2!^§);
                  do
                  {
                     §§push(this.§0!h§);
                     if(_loc1_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr19);
                        }
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§push(this.§0!h§);
                     }
                     §§pop().dispose();
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr89);
            }
            §§goto(addr91);
         }
         addr19:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§;g§ = null;
         var _loc5_:§;g§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc11_ || _loc2_)
         {
            §§push(this);
            §§push(this.§7!`§);
            if(_loc11_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§7!`§ = §§pop();
            loop0:
            while(true)
            {
               this.§2!g§ = 0;
               loop1:
               while(this.§-!%§.length > 0)
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     _loc2_ = int(this.§-!%§.length - 1);
                  }
                  if(_loc10_)
                  {
                     continue;
                  }
                  if(!_loc11_)
                  {
                     continue loop0;
                  }
                  loop26:
                  while(true)
                  {
                     loop27:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc11_)
                        {
                           loop28:
                           while(true)
                           {
                              §§push(0);
                              if(_loc11_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    addr634:
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       break loop1;
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       this.§=z§.splice(_loc2_,1);
                                       loop25:
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                break loop27;
                                             }
                                             addr604:
                                          }
                                          loop18:
                                          while(true)
                                          {
                                             addr563:
                                             loop15:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc11_ || _loc2_)
                                                {
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         break loop28;
                                                      }
                                                      loop33:
                                                      while(true)
                                                      {
                                                         addr541:
                                                         while(true)
                                                         {
                                                            if(this.§>!q§.length <= 0)
                                                            {
                                                               if(_loc10_ && param1)
                                                               {
                                                                  continue loop33;
                                                               }
                                                               if(_loc10_ && _loc2_)
                                                               {
                                                                  continue loop25;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §8"3§.length = §7B§.length = 0;
                                                               if(_loc11_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     var _loc8_:* = §§pop();
                                                                     if(_loc11_)
                                                                     {
                                                                        var _loc9_:* = this.§=z§;
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(_loc11_ || _loc2_)
                                                                                       {
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§>!q§.length > 0);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr560);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             _loc3_ = (_loc7_ = this.§>!q§.pop())[0] as int;
                                                                                             §§push(Boolean(_loc4_ = this.§8i§(_loc3_)));
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc4_.phase == §-!#§.§#-§);
                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc11_ || this)
                                                                                                               {
                                                                                                                  addr382:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr384:
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr385:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(_loc4_.target));
                                                                                                                           if(_loc11_ || _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr384:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §7B§.push({
                                                                                                                              "touch":_loc4_,
                                                                                                                              "target":_loc4_.target
                                                                                                                           });
                                                                                                                           addr360:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr360:
                                                                                                                        }
                                                                                                                        §§goto(addr360);
                                                                                                                     }
                                                                                                                     loop6:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§4",§.apply(this,_loc7_);
                                                                                                                        while(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              §8"3§.push(_loc3_);
                                                                                                                              if(_loc11_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break loop6;
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr385);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr384);
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      §§goto(addr384);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr382);
                                                                                          }
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr427:
                                                                                                   _loc9_ = §7B§;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                            if(_loc6_.touch.target != _loc6_.target)
                                                                                                            {
                                                                                                               if(_loc11_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§5!z§,this.§=z§,this.§<0§,this.§1!_§));
                                                                                                               }
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr531:
                                                                                                            if(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§=z§.length - 1);
                                                                                                                  addr656:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     addr657:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr539:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr590:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§2!g§);
                                                                                                                  if(_loc11_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 0.00001);
                                                                                                                  }
                                                                                                                  §§pop().§2!g§ = §§pop();
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                               addr590:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr531);
                                                                                                      }
                                                                                                      break loop3;
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§push(0);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   break loop15;
                                                                                                }
                                                                                                _loc8_ = §§pop();
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   _loc9_ = §8"3§;
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      §§goto(addr530);
                                                                                                      addr528:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push((_loc4_ = this.§8i§(_loc3_)).target);
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr517:
                                                                                                               _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§5!z§,this.§=z§,this.§<0§,this.§1!_§));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr528);
                                                                                                      }
                                                                                                      §§goto(addr517);
                                                                                                   }
                                                                                                   addr498:
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr579);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr560);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr590);
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 §§goto(addr530);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                                 §§push(_loc5_.phase);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(§-!#§.§-""§);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr212:
                                                                                                §§pop();
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr220:
                                                                                                   if(_loc5_.phase != §-!#§.§8!U§)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                _loc5_.§ Y§(§-!#§.§[!#§);
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr220);
                                                                                       }
                                                                                       §§goto(addr212);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                              §§goto(addr498);
                                                                           }
                                                                           §§goto(addr530);
                                                                        }
                                                                     }
                                                                     §§goto(addr427);
                                                                  }
                                                                  break loop27;
                                                               }
                                                            }
                                                            addr560:
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§8"3§.indexOf(this.§>!q§[this.§>!q§.length - 1][0]) == -1);
                                                            }
                                                            return;
                                                            continue loop33;
                                                         }
                                                      }
                                                      addr579:
                                                      addr603:
                                                   }
                                                   break loop27;
                                                }
                                                addr607:
                                                while(true)
                                                {
                                                   if(_loc11_ || _loc2_)
                                                   {
                                                      break loop15;
                                                   }
                                                }
                                                continue loop18;
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr615:
                                                while(true)
                                                {
                                                   if(!(_loc11_ || this))
                                                   {
                                                      continue loop16;
                                                   }
                                                   §§goto(addr563);
                                                }
                                                §§goto(addr607);
                                             }
                                          }
                                       }
                                    }
                                    addr634:
                                 }
                                 else
                                 {
                                    §§push(this.§7!`§);
                                    if(_loc11_ || _loc3_)
                                    {
                                       §§push(§§pop() - this.§-!%§[_loc2_].timestamp);
                                       if(!(_loc10_ && param1))
                                       {
                                          addr88:
                                          if(§§pop() > §,V§)
                                          {
                                             if(_loc11_ || param1)
                                             {
                                                this.§-!%§.splice(_loc2_,1);
                                                if(_loc11_)
                                                {
                                                   addr41:
                                                   §§push(_loc2_);
                                                   if(!(_loc11_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() - 1);
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         break loop1;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop26;
                                                      }
                                                      continue loop27;
                                                   }
                                                   §§goto(addr657);
                                                }
                                                §§goto(addr634);
                                             }
                                             §§goto(addr539);
                                          }
                                          §§goto(addr41);
                                       }
                                       §§goto(addr656);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr657);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc11_)
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §§goto(addr590);
                                    }
                                    §§goto(addr615);
                                 }
                                 §§goto(addr603);
                              }
                              else if(this.§=z§[_loc2_].phase == §-!#§.§&i§)
                              {
                                 §§goto(addr634);
                              }
                              §§goto(addr604);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr607);
                     }
                  }
               }
               §§goto(addr541);
            }
         }
         §§goto(addr128);
      }
      
      public function §!!c§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            this.§>!q§.unshift(arguments);
            while(true)
            {
               §§push(this.§1!_§);
               if(!(_loc6_ && this))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc7_ || param3)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                     }
                  }
               }
               §§goto(addr146);
            }
         }
         §§goto(addr46);
      }
      
      private function §4",§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;g§;
         if((_loc6_ = this.§8i§(param1)) == null)
         {
            if(!(_loc7_ && param1))
            {
               _loc6_ = new §;g§(param1,param3,param4,param2,null);
               if(_loc8_)
               {
                  this.§5!g§(_loc6_);
                  addr52:
                  _loc6_.setPosition(param3,param4);
                  if(!(_loc7_ && param1))
                  {
                     _loc6_.§ Y§(param2);
                     loop12:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§7!`§);
                        if(_loc8_ || param2)
                        {
                           §§push(§§pop() + this.§2!g§);
                        }
                        §§pop().§8!4§(§§pop());
                        loop8:
                        while(true)
                        {
                           §§push(param2);
                           loop7:
                           while(true)
                           {
                              §§push(§-!#§.§#-§);
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          addr167:
                                          addr169:
                                          while(!_loc8_)
                                          {
                                             continue loop12;
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr121:
                                             while(true)
                                             {
                                                §§push(§-!#§.§-""§);
                                                addr123:
                                                while(true)
                                                {
                                                   if(!(_loc8_ || param2))
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc8_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc7_ && this)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             _loc6_.§ !!§(this.§0"§.hitTest(_loc5_,true));
                                          }
                                          loop4:
                                          for(; _loc8_; if(!(_loc8_ || param1))
                                          {
                                             continue;
                                          },§§goto(addr64))
                                          {
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!_loc7_)
                                                {
                                                   if(_loc7_ && param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§-!#§.§-""§);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_ || param2)
                                                         {
                                                            this.§'!x§(_loc6_);
                                                            continue loop4;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr123);
                                                }
                                                §§goto(addr121);
                                             }
                                             return;
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr68);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr52);
            }
            §§goto(addr169);
         }
         §§goto(addr52);
      }
      
      private function §2!^§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§;g§ = null;
         var _loc4_:§;g§ = null;
         if(_loc6_ || param1)
         {
            §§push(param1.keyCode);
            if(_loc6_)
            {
               §§push(17);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(_loc6_ || this)
                                 {
                                    §§push(15);
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1.keyCode);
                                                break loop4;
                                             }
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(this.§1!_§);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr189:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break loop5;
                                                            }
                                                            this.§1!_§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§;r§);
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr137:
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     §§push(§§pop());
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(this.§0!h§);
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().visible = this.§1!_§;
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr109:
                                                                                          §§push(this.§0!h§);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             §§pop().§3V§(this.§0"§.stageWidth / 2,this.§0"§.stageHeight / 2);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc5_ && this)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               §§push(this.§1!_§);
                                                                                                               if(!(_loc5_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr141:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                      }
                                                                                                      addr58:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc3_ = this.§8i§(0);
                                                                                                      _loc4_ = this.§8i§(1);
                                                                                                      if(_loc6_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§0!h§.§>!f§(_loc3_.globalX,_loc3_.globalY);
                                                                                                               addr481:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  §§push(Boolean(_loc4_));
                                                                                                                  loop27:
                                                                                                                  for(; !(_loc5_ && this); while(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     §§goto(addr423);
                                                                                                                     §§push(!§§pop());
                                                                                                                  })
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(this.§1!_§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop38:
                                                                                                                                          while(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop39:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr406:
                                                                                                                                                      while(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(_loc3_));
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            continue loop39;
                                                                                                                                                         }
                                                                                                                                                         if(_loc5_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.phase);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§-!#§.§-""§);
                                                                                                                                                                        addr349:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           continue loop39;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr347:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.phase);
                                                                                                                                                                        addr412:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§-!#§.§&i§);
                                                                                                                                                                           addr414:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              continue loop27;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr456:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr338:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break loop10;
                                                                                                                                                   }
                                                                                                                                                   addr405:
                                                                                                                                                }
                                                                                                                                                §§goto(addr336);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr461:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr462);
                                                                                                                                          }
                                                                                                                                          if(!(_loc6_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr292);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr423:
                                                                                                                           }
                                                                                                                           §§goto(addr455);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr461);
                                                                                                                     §§goto(addr445);
                                                                                                                  }
                                                                                                                  addr445:
                                                                                                               }
                                                                                                               §§goto(addr481);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr459);
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   §§goto(addr482);
                                                                                                }
                                                                                                addr56:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr506);
                                                                                    }
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       §§goto(addr109);
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr482);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr141);
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            continue loop16;
                                                         }
                                                         addr192:
                                                      }
                                                      §§goto(addr506);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          addr177:
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr486);
                                 }
                                 break;
                              }
                              §§goto(addr485);
                           }
                        }
                        §§goto(addr177);
                     }
                  }
               }
            }
            addr485:
            addr486:
            if(§§pop() == §§pop())
            {
               if(!_loc5_)
               {
                  this.§<0§ = param1.type == KeyboardEvent.KEY_DOWN;
               }
            }
            addr506:
            return;
         }
         §§goto(addr56);
      }
      
      private function §'!x§(param1:§;g§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§;g§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§;g§ = null;
         §§push(§2!t§);
         if(!(_loc9_ && _loc3_))
         {
            §§push(§§pop() * §2!t§);
            if(_loc8_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§-!%§)
         {
            if(_loc8_ || this)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     addr102:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr104:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr102);
            }
            §§goto(addr104);
         }
         if(_loc8_)
         {
            if(_loc2_)
            {
               if(_loc8_ || param1)
               {
                  param1.§1!=§(_loc2_.§=w§ + 1);
                  addr184:
                  loop3:
                  while(true)
                  {
                     this.§-!%§.splice(this.§-!%§.indexOf(_loc2_),1);
                     loop4:
                     while(true)
                     {
                        addr119:
                        while(true)
                        {
                           this.§-!%§.push(param1.clone());
                           if(_loc9_ && this)
                           {
                              break;
                           }
                           if(_loc8_ || this)
                           {
                              if(!_loc9_)
                              {
                                 return;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                  }
                  addr184:
               }
               §§goto(addr184);
            }
            else
            {
               param1.§1!=§(1);
            }
            while(true)
            {
               §§goto(addr119);
            }
         }
         §§goto(addr184);
      }
      
      private function §5!g§(param1:§;g§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§=z§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ || _loc2_)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     this.§=z§.push(param1);
                  }
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     addr99:
                     this.§=z§.splice(_loc2_,1);
                  }
               }
               else if(this.§=z§[_loc2_].id == param1.id)
               {
                  §§goto(addr99);
               }
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      private function §8i§(param1:int) : §;g§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;g§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§=z§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && this)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §;r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§0!h§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §;r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§;r§ != param1)
            {
               return;
            }
         }
      }
   }
}
