package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §#1§:Vector.<b2Vec2>;
      
      public var § ]§:int;
      
      public var §#&§:Number;
      
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§7!_§());
         if(_loc6_ || param1)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2Shape.§,-§);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(_loc4_);
                  if(_loc6_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr206:
                              loop7:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1 as b2CircleShape;
                                    if(!_loc5_)
                                    {
                                       this.§#1§ = new Vector.<b2Vec2>(1,true);
                                    }
                                    while(true)
                                    {
                                       this.§#1§[0] = _loc2_.§4Z§;
                                       loop4:
                                       while(!(_loc5_ && _loc2_))
                                       {
                                          do
                                          {
                                             this.§ ]§ = 1;
                                             while(!(_loc5_ && _loc3_))
                                             {
                                                this.§#&§ = _loc2_.§#&§;
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr45);
                                             }
                                             continue loop4;
                                          }
                                          while(false);
                                          
                                          break loop7;
                                       }
                                    }
                                    break;
                                 case 1:
                                    _loc3_ = param1 as b2PolygonShape;
                                    if(_loc6_)
                                    {
                                       this.§#1§ = _loc3_.§#1§;
                                       this.§ ]§ = _loc3_.§0S§;
                                       addr138:
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       addr120:
                                       while(true)
                                       {
                                          this.§#&§ = _loc3_.§#&§;
                                          addr125:
                                          while(_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          break loop7;
                                       }
                                    }
                                    break;
                                    addr133:
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(!_loc5_)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr120);
                                       }
                                       else
                                       {
                                          §§goto(addr138);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr125);
                              }
                              return;
                              addr205:
                           }
                        }
                        else
                        {
                           addr182:
                           §§push(1);
                           if(_loc6_ || _loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§"![§);
                        if(!_loc5_)
                        {
                           §§push(_loc4_);
                        }
                     }
                     §§goto(addr205);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr182);
                  }
                  else
                  {
                     §§push(2);
                  }
               }
               §§goto(addr205);
            }
            §§goto(addr182);
         }
         §§goto(addr206);
      }
      
      public function §<@§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#1§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§#1§[0].y * param1.y);
            if(_loc6_ || _loc3_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_ || param1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop() >= this.§ ]§)
                     {
                        if(_loc6_ || this)
                        {
                           if(_loc6_ || this)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              addr98:
                              addr176:
                              while(true)
                              {
                                 _loc4_++;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       §§goto(addr98);
                                    }
                                    addr178:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          addr182:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr183:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc6_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue loop1;
                                                }
                                                if(!(_loc7_ && param1))
                                                {
                                                   break;
                                                }
                                                addr162:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             _loc3_ = §§pop();
                                             continue loop6;
                                          }
                                          addr182:
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr183);
                        }
                     }
                     else
                     {
                        §§push(this.§#1§[_loc4_].x * param1.x);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(this.§#1§[_loc4_].y * param1.y);
                           if(_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§goto(addr162);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr182);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function §=!G§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#1§[0].x * param1.x);
         if(_loc7_ || param1)
         {
            §§push(§§pop() + this.§#1§[0].y * param1.y);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               if(§§pop() >= this.§ ]§)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop7:
                  while(true)
                  {
                     if(!(_loc6_ && this))
                     {
                        continue loop0;
                     }
                     addr144:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           _loc4_++;
                           continue loop7;
                        }
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || this)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                        }
                        if(_loc7_)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr108);
                        }
                        else
                        {
                           addr156:
                           loop8:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr157:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(_loc4_);
                                    if(!(_loc6_ && this))
                                    {
                                       addr179:
                                       §§push(int(§§pop()));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop3;
                                       }
                                       addr179:
                                    }
                                    §§goto(addr179);
                                 }
                                 continue loop8;
                              }
                           }
                           addr156:
                        }
                        §§goto(addr73);
                     }
                     addr108:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 §§goto(addr156);
                              }
                              addr155:
                           }
                           §§goto(addr157);
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.§#1§[_loc4_].x * param1.x);
                  if(_loc7_ || this)
                  {
                     §§push(this.§#1§[_loc4_].y * param1.y);
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr144);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr155);
                  }
               }
               §§goto(addr156);
            }
            §§goto(addr179);
         }
         return this.§#1§[_loc2_];
      }
      
      public function §"!f§() : int
      {
         return this.§ ]§;
      }
      
      public function §2!C§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(_loc2_)
            {
               §§push(0);
               if(_loc2_ || _loc2_)
               {
                  §§push(param1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              addr64:
                              §§pop();
                              §§push(param1 < this.§ ]§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr80);
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         addr80:
         return this.§#1§[param1];
      }
   }
}
