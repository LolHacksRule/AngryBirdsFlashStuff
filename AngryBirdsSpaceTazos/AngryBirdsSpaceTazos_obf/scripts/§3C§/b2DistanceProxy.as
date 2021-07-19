package §3c§
{
   import §,Z§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §8S§:Vector.<b2Vec2>;
      
      public var §@5§:int;
      
      public var §7!m§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
         §§push(param1.§@!N§());
         if(!(_loc6_ && _loc2_))
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               §§push(b2Shape.§-M§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr179:
                           }
                        }
                        else
                        {
                           addr186:
                           §§push(1);
                           if(!(_loc6_ && this))
                           {
                              addr204:
                           }
                        }
                        addr210:
                        loop7:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(_loc5_ || param1)
                              {
                                 this.§8S§ = new Vector.<b2Vec2>(1,true);
                                 while(true)
                                 {
                                    this.§8S§[0] = _loc2_.§1Q§;
                                    loop2:
                                    for(; !(_loc6_ && this); while(true)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          this.§7!m§ = _loc2_.§7!m§;
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    },while(false)
                                    {
                                       §§goto(addr51);
                                    },break loop7)
                                    {
                                       while(true)
                                       {
                                          this.§@5§ = 1;
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr49);
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(!_loc6_)
                              {
                                 this.§8S§ = _loc3_.§8S§;
                                 loop6:
                                 while(true)
                                 {
                                    this.§@5§ = _loc3_.§+!U§;
                                    addr130:
                                    while(_loc6_)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                              addr119:
                              this.§7!m§ = _loc3_.§7!m§;
                              break;
                              addr124:
                           default:
                              b2Settings.b2Assert(false);
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr130);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr124);
                        }
                        return;
                        addr209:
                     }
                     else
                     {
                        §§push(b2Shape.§4"+§);
                        if(_loc5_)
                        {
                           addr185:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr186);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr209);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr185);
               }
               §§goto(addr179);
            }
            §§goto(addr186);
         }
         §§goto(addr210);
      }
      
      public function §>!S§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:int = 0;
         §§push(this.§8S§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§8S§[0].y * param1.y);
            if(!(_loc7_ && _loc3_))
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
            if(_loc6_)
            {
               if(!_loc7_)
               {
                  if(§§pop() >= this.§@5§)
                  {
                     if(!(_loc7_ && param1))
                     {
                        if(!(_loc7_ && this))
                        {
                           if(!_loc7_)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                 }
                                 addr103:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr147:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr92:
                                             while(!_loc6_)
                                             {
                                             }
                                             continue loop0;
                                          }
                                          addr90:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 addr146:
                              }
                              §§goto(addr90);
                           }
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push(this.§8S§[_loc4_].x * param1.x);
                     if(!_loc7_)
                     {
                        §§push(this.§8S§[_loc4_].y * param1.y);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 addr137:
                                 §§push(§§pop());
                                 if(_loc6_ || param1)
                                 {
                                    addr145:
                                    _loc5_ = §§pop();
                                 }
                                 §§goto(addr147);
                              }
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr137);
                  }
               }
               §§goto(addr167);
            }
            break;
         }
         return §§pop();
      }
      
      public function §;d§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§8S§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§8S§[0].y * param1.y);
            if(!(_loc6_ && this))
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
            if(!_loc6_)
            {
               if(§§pop() >= this.§@5§)
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              addr96:
                              if(!(_loc6_ && param1))
                              {
                                 addr104:
                                 §§push(Number(§§pop()));
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    _loc3_ = §§pop();
                                    addr112:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr152:
                                       while(§§pop() > §§pop())
                                       {
                                          if(_loc6_ && this)
                                          {
                                             continue loop3;
                                          }
                                          §§push(_loc4_);
                                          if(_loc7_ || _loc3_)
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
                                    }
                                    addr151:
                                 }
                                 _loc4_++;
                                 continue loop0;
                              }
                              addr146:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr147:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr112);
               }
               else
               {
                  §§push(this.§8S§[_loc4_].x * param1.x);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(this.§8S§[_loc4_].y * param1.y);
                     if(_loc7_ || _loc2_)
                     {
                        §§goto(addr146);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr179);
         }
         return this.§8S§[_loc2_];
      }
      
      public function §`!E§() : int
      {
         return this.§@5§;
      }
      
      public function §=m§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(_loc2_ || this)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr49:
                              §§pop();
                              §§push(param1 < this.§@5§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr65);
                     }
                  }
               }
            }
            §§goto(addr49);
         }
         addr65:
         return this.§8S§[param1];
      }
   }
}
