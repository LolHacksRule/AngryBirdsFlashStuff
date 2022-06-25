package §_-gE§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-09U§:Vector.<b2Vec2>;
      
      public var §_-ru§:int;
      
      public var §_-0CZ§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
         §§push(param1.§_-oF§());
         if(_loc5_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(b2Shape.§_-rv§);
               if(!(_loc6_ && param1))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr174:
                              if(§§pop() === _loc4_)
                              {
                                 addr176:
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    addr179:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           else
                           {
                              addr169:
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr176);
                     }
                     else
                     {
                        §§push(b2Shape.§_-04L§);
                        if(_loc5_)
                        {
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr174);
               }
               §§goto(addr169);
            }
            §§goto(addr176);
         }
         addr185:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc5_)
               {
                  this.§_-09U§ = new Vector.<b2Vec2>(1,true);
                  loop1:
                  while(true)
                  {
                     this.§_-09U§[0] = _loc2_.§_-bq§;
                     loop2:
                     while(true)
                     {
                        addr43:
                        loop3:
                        while(true)
                        {
                           this.§_-ru§ = 1;
                           while(_loc5_)
                           {
                              this.§_-0CZ§ = _loc2_.§_-0CZ§;
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr43);
               }
               break;
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(!_loc6_)
               {
                  this.§_-09U§ = _loc3_.§_-09U§;
                  loop6:
                  while(true)
                  {
                     this.§_-ru§ = _loc3_.§_-OS§;
                     addr110:
                     while(_loc6_ && param1)
                     {
                        continue loop6;
                     }
                  }
               }
               addr99:
               this.§_-0CZ§ = _loc3_.§_-0CZ§;
               break;
               addr104:
            default:
               b2Settings.b2Assert(false);
               if(!_loc6_)
               {
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr110);
                  }
                  §§goto(addr99);
               }
               §§goto(addr104);
         }
      }
      
      public function §_-02l§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-09U§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§_-09U§[0].y * param1.y);
            if(_loc7_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc6_ && _loc2_))
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() >= this.§_-ru§)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(_loc7_ || _loc2_)
                           {
                              if(_loc7_)
                              {
                                 §§push(_loc2_);
                                 break;
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_ || this)
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       if(_loc7_)
                                       {
                                          addr120:
                                          §§push(Number(§§pop()));
                                          if(!_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                             }
                                             addr123:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr167:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                   }
                                                   addr166:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         _loc4_++;
                                                         addr98:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               break loop5;
                                                            }
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr96:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         addr173:
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop7;
                                                         }
                                                         addr173:
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr167);
                                                }
                                             }
                                             addr158:
                                          }
                                          §§goto(addr96);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr157:
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        §§push(this.§_-09U§[_loc4_].x * param1.x);
                        if(!_loc6_)
                        {
                           §§push(this.§_-09U§[_loc4_].y * param1.y);
                           if(!_loc6_)
                           {
                              §§goto(addr157);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr173);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §_-01c§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-09U§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§_-09U§[0].y * param1.y);
            if(_loc7_)
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
               if(!(_loc6_ && param1))
               {
                  if(§§pop() >= this.§_-ru§)
                  {
                     if(_loc7_)
                     {
                        if(_loc7_ || param1)
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!_loc6_)
                           {
                              if(_loc7_ || this)
                              {
                                 _loc3_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    addr89:
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                                 addr117:
                              }
                              else
                              {
                                 addr164:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       addr173:
                                    }
                                    addr174:
                                    while(§§pop() > §§pop())
                                    {
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          continue loop4;
                                       }
                                       §§push(_loc4_);
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr184:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 addr164:
                              }
                              while(true)
                              {
                                 _loc4_++;
                                 §§goto(addr89);
                                 §§goto(addr117);
                              }
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     §§push(this.§_-09U§[_loc4_].x * param1.x);
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§_-09U§[_loc4_].y * param1.y);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                              §§goto(addr164);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr183);
            }
            §§goto(addr184);
         }
         return this.§_-09U§[_loc2_];
      }
      
      public function §_-y3§() : int
      {
         return this.§_-ru§;
      }
      
      public function §_-0-e§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(b2Settings);
            if(!(_loc2_ && _loc3_))
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc3_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              addr70:
                              §§pop();
                              §§push(param1 < this.§_-ru§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr76);
                     }
                  }
               }
            }
            §§goto(addr70);
         }
         addr76:
         return this.§_-09U§[param1];
      }
   }
}
