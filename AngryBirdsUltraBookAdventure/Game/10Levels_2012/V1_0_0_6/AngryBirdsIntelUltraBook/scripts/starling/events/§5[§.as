package starling.events
{
   import §7!B§.Stage;
   import flash.geom.Point;
   
   public class §5[§
   {
      
      private static const §9>§:Number = 0.3;
      
      private static const §`!h§:Number = 25;
      
      private static var §1&§:Vector.<int>;
      
      private static var §?0§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §9>§ = 0.3;
            loop0:
            do
            {
               §`!h§ = 25;
               while(true)
               {
                  §1&§ = new Vector.<int>(0);
                  while(_loc2_)
                  {
                     §?0§ = new Vector.<Object>(0);
                     if(!(_loc1_ && §5[§))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §8!x§:Stage;
      
      private var §8!=§:Number;
      
      private var §8T§:Number;
      
      private var §+n§:§1I§;
      
      private var §3U§:Vector.<§9!t§>;
      
      private var §9!Q§:Vector.<Array>;
      
      private var §+s§:Vector.<§9!t§>;
      
      private var §!C§:Boolean = false;
      
      private var §@G§:Boolean = false;
      
      public function §5[§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
            if(!_loc4_)
            {
               addr27:
               this.§8!x§ = param1;
               if(!_loc4_)
               {
                  this.§8!=§ = this.§8T§ = 0;
                  if(!_loc4_)
                  {
                     this.§3U§ = new Vector.<§9!t§>(0);
                     loop0:
                     while(true)
                     {
                        this.§9!Q§ = new Vector.<Array>(0);
                        loop1:
                        while(true)
                        {
                           this.§+s§ = new Vector.<§9!t§>(0);
                           loop2:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§8!x§);
                                 addr86:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(KeyboardEvent.KEY_DOWN);
                                    addr88:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§ >§);
                                       addr91:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr43:
                  }
                  while(true)
                  {
                     §§push(this.§8!x§);
                     if(!_loc4_)
                     {
                        §§push(KeyboardEvent.KEY_UP);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§pop().addEventListener(§§pop(),this.§ >§);
                           if(!(_loc4_ && _loc2_))
                           {
                              return;
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr122);
            }
            §§goto(addr43);
         }
         §§goto(addr27);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§8!x§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr101:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§ >§);
                  continue loop0;
               }
            }
            addr99:
         }
         while(true)
         {
            §§push(this.§8!x§);
            if(_loc1_ || _loc2_)
            {
               §§push(KeyboardEvent.KEY_UP);
               if(_loc1_ || this)
               {
                  §§pop().removeEventListener(§§pop(),this.§ >§);
                  do
                  {
                     §§push(this.§+n§);
                     if(_loc1_ || this)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr24);
                        }
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§push(this.§+n§);
                     }
                     §§pop().dispose();
                  }
                  while(_loc2_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr99);
            }
            §§goto(addr101);
         }
         addr24:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§9!t§ = null;
         var _loc5_:§9!t§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc11_ || this)
         {
            §§push(this);
            §§push(this.§8!=§);
            if(!(_loc10_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§8!=§ = §§pop();
            while(true)
            {
               this.§8T§ = 0;
            }
            addr142:
         }
         loop1:
         while(this.§+s§.length > 0)
         {
            if(_loc11_)
            {
               _loc2_ = int(this.§+s§.length - 1);
            }
            if(!(_loc11_ || param1))
            {
               continue;
            }
            if(!_loc10_)
            {
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc11_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    break loop1;
                                 }
                                 loop47:
                                 while(true)
                                 {
                                    §§push(§1&§.indexOf(this.§9!Q§[this.§9!Q§.length - 1][0]) == -1);
                                    loop48:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr439:
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(0);
                                             if(!(_loc10_ && param1))
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   var _loc8_:* = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      var _loc9_:* = §?0§;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            while(!§§pop())
                                                            {
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr566:
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr599:
                                                                        §§push(0);
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        continue loop21;
                                                                        addr599:
                                                                     }
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        addr593:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr636:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              continue loop33;
                                                                           }
                                                                           continue loop33;
                                                                        }
                                                                        addr677:
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr599);
                                                                        }
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr678:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr593);
                                                                              continue loop39;
                                                                           }
                                                                           §§goto(addr599);
                                                                        }
                                                                     }
                                                                     addr637:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr569:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§3U§.length - 1);
                                                                           addr676:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr677);
                                                                           }
                                                                        }
                                                                        addr569:
                                                                     }
                                                                     §§goto(addr678);
                                                                  }
                                                                  addr566:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr566);
                                                               }
                                                            }
                                                            _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                            if(_loc6_.touch.target != _loc6_.target)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§^!>§,this.§3U§,this.§!C§,this.§@G§));
                                                               }
                                                            }
                                                            continue;
                                                            addr496:
                                                         }
                                                         loop35:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr565);
                                                            }
                                                            else
                                                            {
                                                               _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                               while(true)
                                                               {
                                                                  §§push((_loc4_ = this.§[!%§(_loc3_)).target);
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr552:
                                                                           _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§^!>§,this.§3U§,this.§!C§,this.§@G§));
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop35;
                                                                     }
                                                                     addr563:
                                                                  }
                                                                  §§goto(addr552);
                                                               }
                                                               addr538:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr566);
                                                }
                                                addr454:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr636);
                                             }
                                             addr635:
                                          }
                                       }
                                       else
                                       {
                                          _loc3_ = (_loc7_ = this.§9!Q§.pop())[0] as int;
                                          §§push(Boolean(_loc4_ = this.§[!%§(_loc3_)));
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             if(!_loc10_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc4_.phase == §^K§.§[!7§);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr407:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr408:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr410:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc4_.target));
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr383:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §?0§.push({
                                                                                 "touch":_loc4_,
                                                                                 "target":_loc4_.target
                                                                              });
                                                                              addr392:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    break loop12;
                                                                                 }
                                                                                 §§goto(addr410);
                                                                              }
                                                                           }
                                                                           addr384:
                                                                        }
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           this.§^!]§.apply(this,_loc7_);
                                                                           while(_loc11_ || _loc3_)
                                                                           {
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 §1&§.push(_loc3_);
                                                                                 addr361:
                                                                                 if(_loc10_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 while(false)
                                                                                 {
                                                                                    continue loop10;
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§9!Q§.length > 0);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop48;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop48;
                                                                                    }
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop48;
                                                                                    }
                                                                                    §§pop();
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop47;
                                                                                    }
                                                                                    §§goto(addr569);
                                                                                 }
                                                                                 §§goto(addr439);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr384);
                                                                              }
                                                                           }
                                                                           §§goto(addr392);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr405:
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr383);
                                                }
                                                §§goto(addr407);
                                             }
                                             §§goto(addr408);
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr569);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§8!=§);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(§§pop() - this.§+s§[_loc2_].timestamp);
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(§§pop() > §9>§)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             this.§+s§.splice(_loc2_,1);
                                             if(!_loc11_)
                                             {
                                                break;
                                                addr41:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(_loc10_ && this)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc2_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   continue loop5;
                                                }
                                                addr671:
                                                while(true)
                                                {
                                                   addr631:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr635);
                                                      }
                                                      §§goto(addr636);
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr411);
                                             addr271:
                                             if(_loc11_ || _loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr569);
                                          }
                                       }
                                       §§goto(addr41);
                                    }
                                 }
                              }
                              §§goto(addr676);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(this);
                                    §§push(this.§8T§);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + 0.00001);
                                    }
                                    §§pop().§8T§ = §§pop();
                                    loop30:
                                    for(; !(_loc10_ && _loc3_); if(_loc10_ && param1)
                                    {
                                       continue;
                                    },if(!(_loc10_ && _loc3_))
                                    {
                                       return;
                                    },while(true)
                                    {
                                       if(_loc11_ || _loc3_)
                                       {
                                          this.§3U§.splice(_loc2_,1);
                                          §§goto(addr671);
                                       }
                                       §§goto(addr678);
                                    },addr659:)
                                    {
                                       while(true)
                                       {
                                          if(this.§9!Q§.length <= 0)
                                          {
                                             continue loop30;
                                          }
                                          §1&§.length = §?0§.length = 0;
                                          if(_loc11_ || _loc3_)
                                          {
                                             §§push(0);
                                             if(_loc11_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!(_loc10_ && this))
                                                {
                                                   _loc9_ = this.§3U§;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                      if(!_loc10_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               addr263:
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§goto(addr271);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc9_ = §1&§;
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr563);
                                                                  }
                                                                  §§goto(addr538);
                                                                  §§goto(addr263);
                                                               }
                                                               addr526:
                                                            }
                                                            §§goto(addr565);
                                                         }
                                                         else
                                                         {
                                                            _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                            §§push(_loc5_.phase);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§^K§.§5i§);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           addr227:
                                                                           §§pop();
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              addr240:
                                                                              if(_loc5_.phase != §^K§.§6!A§)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc10_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           _loc5_.§3!f§(§^K§.§9z§);
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr240);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr496);
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr454);
                                          }
                                          §§goto(addr678);
                                       }
                                    }
                                    §§goto(addr637);
                                    addr623:
                                 }
                                 §§goto(addr671);
                              }
                              §§goto(addr623);
                           }
                           else if(this.§3U§[_loc2_].phase == §^K§.§3!p§)
                           {
                              §§goto(addr659);
                           }
                           §§goto(addr631);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = §§pop();
                     if(!_loc10_)
                     {
                        §§goto(addr526);
                     }
                     §§goto(addr566);
                  }
               }
            }
            else
            {
               §§goto(addr142);
            }
         }
         §§goto(addr571);
      }
      
      public function §&!_§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§9!Q§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§@G§);
               if(_loc6_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       do
                                       {
                                          this.§9!Q§.unshift([1,param2,this.§+n§.§-!;§,this.§+n§.§8!i§]);
                                       }
                                       while(!(_loc6_ || param1));
                                       
                                       break;
                                       addr91:
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    addr141:
                                    loop9:
                                    while(_loc6_ || param2)
                                    {
                                       addr126:
                                       §§push(param1 == 0);
                                       if(!_loc7_)
                                       {
                                          continue loop7;
                                       }
                                       addr118:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop9;
                                          §§goto(addr126);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§catch§);
                                       continue loop1;
                                    }
                                 }
                                 return;
                                 addr71:
                              }
                              §§goto(addr118);
                           }
                           continue loop2;
                        }
                        addr103:
                     }
                     while(true)
                     {
                        §§pop();
                        §§goto(addr141);
                     }
                  }
               }
            }
         }
         this.§+n§.§#!+§(param3,param4,this.§!C§);
         §§goto(addr91);
      }
      
      private function §^!]§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§9!t§;
         if((_loc6_ = this.§[!%§(param1)) == null)
         {
            if(_loc8_)
            {
               _loc6_ = new §9!t§(param1,param3,param4,param2,null);
               if(_loc8_ || param2)
               {
                  this.§3Q§(_loc6_);
                  addr52:
                  _loc6_.setPosition(param3,param4);
                  if(!_loc7_)
                  {
                     _loc6_.§3!f§(param2);
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§8!=§);
                        if(_loc8_)
                        {
                           §§push(§§pop() + this.§8T§);
                        }
                        §§pop().§>!E§(§§pop());
                     }
                     addr189:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        §§push(§^K§.§[!7§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    addr172:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(param2);
                                       while(true)
                                       {
                                          §§push(§^K§.§5i§);
                                          addr132:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc7_ && param2))
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 addr171:
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       _loc6_.§?&§(this.§8!x§.hitTest(_loc5_,true));
                                    }
                                    while(true)
                                    {
                                    }
                                    addr161:
                                 }
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!(_loc7_ && param3))
                                    {
                                       if(!_loc8_)
                                       {
                                          break loop5;
                                       }
                                       §§push(§^K§.§5i§);
                                       if(!(_loc7_ && param3))
                                       {
                                          if(_loc8_ || param3)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr130);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    addr101:
                                    if(!(_loc7_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§ !;§(_loc6_);
                                          §§goto(addr101);
                                       }
                                       addr108:
                                    }
                                    while(true)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§goto(addr189);
                                          }
                                          else
                                          {
                                             §§goto(addr172);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr161);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 return;
                              }
                              continue loop3;
                           }
                           §§goto(addr171);
                        }
                     }
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr108);
         }
         §§goto(addr52);
      }
      
      private function § >§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§9!t§ = null;
         var _loc4_:§9!t§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1.keyCode);
            if(_loc6_)
            {
               §§push(17);
               if(_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(!_loc5_)
                                 {
                                    §§push(15);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       while(!(_loc5_ && this))
                                       {
                                          addr132:
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(_loc6_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr94:
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(this.§+n§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§pop().visible = this.§@G§;
                                                                  if(!(_loc6_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr120:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+n§);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§pop().§'!6§(this.§8!x§.stageWidth / 2,this.§8!x§.stageHeight / 2);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(this.§@G§);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                §§goto(addr132);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr148:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                addr148:
                                                                                             }
                                                                                          }
                                                                                          addr124:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             addr192:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§@G§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                                             }
                                                                                          }
                                                                                          addr191:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr124);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr148);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr74);
                                                                              §§push(!§§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc3_ = this.§[!%§(0);
                                                                              _loc4_ = this.§[!%§(1);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr489:
                                                                                    this.§+n§.§#!+§(_loc3_.globalX,_loc3_.globalY);
                                                                                 }
                                                                                 addr483:
                                                                                 §§push(_loc2_ && _loc4_);
                                                                                 §§push(_loc2_ && _loc4_);
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    addr440:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr467:
                                                                                       §§pop();
                                                                                       addr437:
                                                                                       §§push(_loc4_.phase != §^K§.§3!p§);
                                                                                       addr468:
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(this.§@G§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr406:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr409:
                                                                                                §§push(§§pop());
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr417:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr422:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  addr348:
                                                                                                                  §§push(Boolean(_loc3_));
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr357:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr371:
                                                                                                                              §§push(_loc3_.phase == §^K§.§5i§);
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc6_ || this)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          addr394:
                                                                                                                                          §§pop();
                                                                                                                                          addr395:
                                                                                                                                          §§push(_loc3_.phase);
                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§^K§.§6!A§);
                                                                                                                                                if(_loc6_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr302:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 this.§9!Q§.unshift([1,§^K§.§5i§,this.§+n§.§-!;§,this.§+n§.§8!i§]);
                                                                                                                                                                                 addr335:
                                                                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr486);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr511:
                                                                                                                                                                                    return;
                                                                                                                                                                                    addr497:
                                                                                                                                                                                    addr344:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr422);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr489);
                                                                                                                                                                           }
                                                                                                                                                                           addr441:
                                                                                                                                                                           this.§9!Q§.unshift([1,§^K§.§3!p§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                                                                                           §§goto(addr497);
                                                                                                                                                                           addr452:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr395);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr335);
                                                                                                                                                                  }
                                                                                                                                                                  this.§9!Q§.unshift([1,§^K§.§[!7§,this.§+n§.§-!;§,this.§+n§.§8!i§]);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr395);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr497);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr468);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr335);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr485);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr348);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr371);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr394);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr437);
                                                                                                                                                }
                                                                                                                                                §§goto(addr371);
                                                                                                                                             }
                                                                                                                                             §§goto(addr437);
                                                                                                                                          }
                                                                                                                                          §§goto(addr371);
                                                                                                                                       }
                                                                                                                                       §§goto(addr302);
                                                                                                                                    }
                                                                                                                                    §§goto(addr409);
                                                                                                                                 }
                                                                                                                                 §§goto(addr437);
                                                                                                                              }
                                                                                                                              §§goto(addr406);
                                                                                                                           }
                                                                                                                           §§goto(addr394);
                                                                                                                        }
                                                                                                                        §§goto(addr497);
                                                                                                                     }
                                                                                                                     §§goto(addr467);
                                                                                                                  }
                                                                                                                  §§goto(addr417);
                                                                                                               }
                                                                                                               §§goto(addr489);
                                                                                                            }
                                                                                                            §§goto(addr452);
                                                                                                         }
                                                                                                         §§goto(addr483);
                                                                                                      }
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr483);
                                                                                       }
                                                                                       §§goto(addr417);
                                                                                    }
                                                                                    §§goto(addr441);
                                                                                 }
                                                                                 §§goto(addr483);
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                        }
                                                                        break loop13;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               this.§!C§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                               §§goto(addr511);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr511);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§@G§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      §§goto(addr191);
                                                      §§goto(addr94);
                                                   }
                                                   addr186:
                                                   addr83:
                                                }
                                                §§goto(addr148);
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    addr501:
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr504);
                                       }
                                    }
                                    §§goto(addr511);
                                 }
                                 break;
                              }
                              addr500:
                              §§goto(addr501);
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr186);
                           }
                           else
                           {
                              §§goto(addr500);
                              §§push(param1.keyCode);
                           }
                           §§goto(addr500);
                        }
                     }
                     if(!(_loc6_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr501);
            }
            §§goto(addr500);
         }
         §§goto(addr192);
      }
      
      private function § !;§(param1:§9!t§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§9!t§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§9!t§ = null;
         §§push(§`!h§);
         if(!(_loc9_ && _loc2_))
         {
            §§push(§§pop() * §`!h§);
            if(!(_loc9_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§+s§)
         {
            if(_loc8_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!(_loc9_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc9_ && _loc2_))
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
         if(!(_loc9_ && param1))
         {
            if(!_loc2_)
            {
               param1.§-A§(1);
               while(true)
               {
                  if(!(_loc9_ && this))
                  {
                     if(_loc8_)
                     {
                        loop2:
                        while(true)
                        {
                           this.§+s§.push(param1.clone());
                           if(_loc9_)
                           {
                              break;
                           }
                           if(_loc8_)
                           {
                              return;
                           }
                           addr170:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     addr173:
                     while(true)
                     {
                        param1.§-A§(_loc2_.§8_§ + 1);
                     }
                     while(true)
                     {
                        this.§+s§.splice(this.§+s§.indexOf(_loc2_),1);
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr170);
               }
            }
            §§goto(addr173);
         }
         §§goto(addr170);
      }
      
      private function §3Q§(param1:§9!t§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§3U§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(!_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        this.§3U§.push(param1);
                     }
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr93:
                        this.§3U§.splice(_loc2_,1);
                     }
                  }
                  else if(this.§3U§[_loc2_].id == param1.id)
                  {
                     §§goto(addr93);
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
      }
      
      private function §[!%§(param1:int) : §9!t§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9!t§ = null;
         for each(_loc2_ in this.§3U§)
         {
            if(!(_loc5_ && param1))
            {
               if(_loc2_.id == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §catch§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+n§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §catch§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§catch§ != param1)
            {
               return;
            }
         }
      }
   }
}
