package §'s§
{
   import §#!"§.*;
   import §&L§.*;
   import §+!,§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §`V§:Vector.<b2Vec2>;
      
      public var §[!U§:int;
      
      public var §5!`§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§-V§());
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push(b2Shape.§!!W§);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§goto(addr188);
                        }
                        §§goto(addr232);
                     }
                     else
                     {
                        §§push(b2Shape.§2r§);
                        if(!_loc6_)
                        {
                           §§goto(addr212);
                        }
                        §§goto(addr229);
                     }
                  }
                  §§goto(addr212);
               }
               §§goto(addr229);
            }
            addr188:
            §§push(0);
            if(!(_loc5_ || param1))
            {
               addr212:
               if(§§pop() === _loc4_)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(1);
                     if(_loc5_ || _loc3_)
                     {
                        addr229:
                     }
                     else
                     {
                        addr235:
                     }
                  }
                  else
                  {
                     addr232:
                     §§push(2);
                     if(_loc5_)
                     {
                        §§goto(addr235);
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr232);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr232);
            }
            §§goto(addr238);
         }
         addr238:
         loop9:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc5_ || _loc2_)
               {
                  this.§`V§ = new Vector.<b2Vec2>(1,true);
                  while(true)
                  {
                     this.§`V§[0] = _loc2_.§1!k§;
                     loop3:
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           this.§[!U§ = 1;
                           continue loop3;
                        }
                     }
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§5!`§ = _loc2_.§5!`§;
                        if(_loc5_ || this)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr56);
                     }
                     break loop9;
                     addr70:
                  }
               }
               §§goto(addr70);
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(_loc5_ || this)
               {
                  this.§`V§ = _loc3_.§`V§;
               }
               loop7:
               while(true)
               {
                  this.§[!U§ = _loc3_.§>Q§;
                  loop8:
                  while(true)
                  {
                     addr133:
                     while(true)
                     {
                        this.§5!`§ = _loc3_.§5!`§;
                        addr138:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop7;
                           }
                           continue loop8;
                        }
                        break loop9;
                     }
                  }
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(!(_loc6_ && this))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr133);
               }
               §§goto(addr138);
         }
      }
      
      public function §[-§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`V§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§`V§[0].y * param1.y);
            if(!(_loc7_ && _loc2_))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(!(_loc7_ && this))
                  {
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(§§pop() >= this.§[!U§)
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 addr83:
                                 §§push(_loc2_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                 }
                                 addr102:
                              }
                              loop1:
                              for(; _loc7_; §§goto(addr102))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc7_ && this)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                addr180:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr181:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr130:
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr194:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§`V§[_loc4_].y * param1.y);
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  addr203:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr205:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc6_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr100:
                                                            addr98:
                                                            §§push(_loc4_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               addr101:
                                                               while(true)
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   _loc3_ = §§pop();
                                                   continue loop2;
                                                }
                                                addr180:
                                             }
                                             §§goto(addr180);
                                          }
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr181);
                                 }
                              }
                              continue;
                           }
                           §§push(this.§`V§[_loc4_].x * param1.x);
                           §§goto(addr194);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr101);
               }
               §§goto(addr83);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function §-!K§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`V§[0].x * param1.x);
         if(_loc6_ || this)
         {
            §§push(§§pop() + this.§`V§[0].y * param1.y);
            if(_loc6_ || _loc2_)
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc7_ && this))
               {
                  if(!(_loc7_ && param1))
                  {
                     if(!_loc7_)
                     {
                        if(§§pop() >= this.§[!U§)
                        {
                           if(_loc6_ || param1)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(_loc6_)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                addr161:
                                                §§push(Number(§§pop()));
                                                if(_loc6_)
                                                {
                                                   _loc3_ = §§pop();
                                                   while(true)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr113:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!_loc7_)
                                                            {
                                                               addr117:
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr127:
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr167:
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr203:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr204:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr205:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     addr125:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               addr117:
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                      }
                                                   }
                                                   addr164:
                                                }
                                                §§goto(addr204);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr195:
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr125);
                        }
                        else
                        {
                           §§push(this.§`V§[_loc4_].x * param1.x);
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr113);
               }
               §§goto(addr117);
            }
            return this.§`V§[_loc2_];
         }
         §§goto(addr54);
      }
      
      public function §7!U§() : int
      {
         return this.§[!U§;
      }
      
      public function §6!'§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(b2Settings);
            if(_loc2_ || param1)
            {
               §§push(0);
               if(_loc2_ || param1)
               {
                  §§push(param1);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop());
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§pop();
                                 addr100:
                                 §§push(param1 < this.§[!U§);
                                 if(!(_loc3_ && this))
                                 {
                                    addr108:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr111);
                     }
                     §§goto(addr108);
                  }
               }
            }
            §§goto(addr100);
         }
         addr111:
         return this.§`V§[param1];
      }
   }
}
