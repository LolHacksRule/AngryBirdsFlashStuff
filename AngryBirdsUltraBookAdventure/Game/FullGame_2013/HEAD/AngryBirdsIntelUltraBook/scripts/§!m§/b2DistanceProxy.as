package §!m§
{
   import §+!g§.*;
   import §0!3§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §`!a§:Vector.<b2Vec2>;
      
      public var §`!@§:int;
      
      public var §!@§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         §§push(param1.§6!-§());
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(b2Shape.§^%§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr168);
                        }
                        §§goto(addr217);
                     }
                     else
                     {
                        §§push(b2Shape.§9Q§);
                        if(_loc5_ || this)
                        {
                           §§goto(addr187);
                        }
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr187);
               }
               §§goto(addr214);
            }
            addr168:
            §§push(0);
            if(!(_loc5_ || param1))
            {
               addr187:
               if(§§pop() === _loc4_)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(1);
                     if(_loc5_ || _loc2_)
                     {
                        addr214:
                     }
                  }
                  else
                  {
                     addr217:
                     §§push(2);
                     if(_loc5_ || this)
                     {
                        addr225:
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr217);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr217);
            }
            §§goto(addr228);
         }
         addr228:
         loop8:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc5_)
               {
                  this.§`!a§ = new Vector.<b2Vec2>(1,true);
                  while(true)
                  {
                     this.§`!a§[0] = _loc2_.§,!2§;
                  }
                  addr74:
               }
               while(true)
               {
                  while(true)
                  {
                     this.§`!@§ = 1;
                     do
                     {
                        this.§!@§ = _loc2_.§!@§;
                     }
                     while(_loc6_ && _loc3_);
                     
                     if(_loc6_)
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           break loop8;
                        }
                        continue;
                     }
                     §§goto(addr74);
                  }
               }
               break;
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(!(_loc6_ && _loc2_))
               {
                  this.§`!a§ = _loc3_.§`!a§;
                  loop7:
                  while(true)
                  {
                     this.§`!@§ = _loc3_.§"#§;
                     addr136:
                     addr138:
                     while(_loc6_)
                     {
                        continue loop7;
                     }
                  }
               }
               else
               {
                  addr116:
                  if(true)
                  {
                     break;
                  }
               }
               loop0:
               while(true)
               {
                  this.§!@§ = _loc3_.§!@§;
                  addr123:
                  while(!(_loc5_ || this))
                  {
                     §§goto(addr136);
                     continue loop0;
                  }
                  break loop8;
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(_loc5_ || _loc2_)
               {
                  §§goto(addr116);
               }
               §§goto(addr123);
         }
      }
      
      public function §8!N§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`!a§[0].x * param1.x);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + this.§`!a§[0].y * param1.y);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc7_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(_loc7_)
               {
                  if(§§pop() >= this.§`!@§)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc7_ || _loc2_)
                        {
                           addr87:
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                              }
                              addr126:
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr128:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr182:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         addr145:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc6_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr148:
                                                            while(true)
                                                            {
                                                            }
                                                            addr148:
                                                         }
                                                         else
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§`!a§[_loc4_].y * param1.y);
                                                                     }
                                                                     addr195:
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr204:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr206:
                                                                  while(true)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr111:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ || _loc3_))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!(_loc7_ || param1))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr126);
                                                               §§push(§§pop() + 1);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr206);
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr148);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr128);
                  }
                  else
                  {
                     §§push(this.§`!a§[_loc4_].x * param1.x);
                  }
                  §§goto(addr195);
               }
               §§goto(addr111);
            }
            §§goto(addr87);
         }
         return §§pop();
      }
      
      public function §9!-§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(0);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`!a§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§`!a§[0].y * param1.y);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param1)
            {
               if(§§pop() >= this.§`!@§)
               {
                  if(_loc6_ || _loc3_)
                  {
                     break;
                  }
                  loop2:
                  for(; _loc7_ && _loc2_; while(true)
                  {
                     _loc4_ = §§pop();
                     continue loop2;
                  })
                  {
                     loop3:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(int(§§pop()));
                                       break;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr182:
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ || this))
                                          {
                                             break;
                                          }
                                          addr138:
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                   break;
                                                }
                                                addr219:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                addr219:
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr221:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      continue loop5;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop4;
                                             }
                                             addr218:
                                             while(true)
                                             {
                                                break loop8;
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr219);
                                       }
                                       continue loop3;
                                    }
                                    addr181:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr181);
                                 }
                              }
                              continue loop2;
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr182);
                     }
                  }
                  continue;
               }
               §§push(this.§`!a§[_loc4_].x * param1.x);
               if(!(_loc7_ && param1))
               {
                  §§goto(addr218);
                  §§push(this.§`!a§[_loc4_].y * param1.y);
               }
               §§goto(addr219);
            }
            §§goto(addr120);
         }
         return this.§`!a§[_loc2_];
      }
      
      public function §8!g§() : int
      {
         return this.§`!@§;
      }
      
      public function §3S§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(b2Settings);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(!(_loc3_ && this))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§pop();
                                 addr90:
                                 §§push(param1 < this.§`!@§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr98:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§pop().b2Assert(§§pop());
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr98);
                  }
               }
            }
            §§goto(addr90);
         }
         addr101:
         return this.§`!a§[param1];
      }
   }
}
