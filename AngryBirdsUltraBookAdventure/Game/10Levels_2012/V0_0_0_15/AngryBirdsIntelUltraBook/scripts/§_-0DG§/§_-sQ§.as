package §_-0DG§
{
   import §_-03n§.b2CircleShape;
   import §_-03n§.b2PolygonShape;
   import §_-03n§.b2Shape;
   import §_-0BH§.§_-FK§;
   import §_-Yp§.b2Vec2;
   
   public class §_-sQ§
   {
      
      public static const §_-049§:int = 0;
      
      public static const §_-03-§:int = 1;
      
      public static const §_-1U§:int = 2;
      
      public static const §_-07J§:int = 3;
      
      public static const §_-WD§:int = 4;
      
      public static const §_-2b§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-049§ = 0;
            while(true)
            {
               §_-03-§ = 1;
               loop1:
               for(; !(_loc2_ && _loc1_); while(!(_loc2_ && _loc1_))
               {
                  §_-WD§ = 4;
                  §§goto(addr51);
                  §§goto(addr29);
               })
               {
                  while(true)
                  {
                     §_-1U§ = 2;
                     while(true)
                     {
                        §_-07J§ = 3;
                        continue loop1;
                        addr51:
                        while(_loc1_ || _loc1_)
                        {
                           §_-2b§ = 5;
                           if(!_loc2_)
                           {
                              addr29:
                              if(_loc1_ || _loc2_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public var mName:String;
      
      public var §_-aw§:int;
      
      public var §_-ux§:Number;
      
      public var §_-09f§:Number;
      
      public var §_-ZV§:Number;
      
      public var §_-vS§:Array = null;
      
      public function §_-sQ§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§_-aw§ = this.§_-JA§(param2);
                  addr87:
                  while(!_loc7_)
                  {
                     this.§_-ux§ = param3;
                  }
               }
               while(true)
               {
                  if(!(_loc7_ && param1))
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §_-0AK§() : int
      {
         return this.§_-aw§;
      }
      
      public function §_-FD§() : Number
      {
         return this.§_-ux§;
      }
      
      public function §_-vX§() : int
      {
         return this.§_-09f§;
      }
      
      private function §_-JA§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            while(true)
            {
               §§push("Rectangle");
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push("CIRCLE");
                        addr262:
                        §§goto(addr263);
                     }
                  }
               }
               §§goto(addr270);
            }
         }
         addr263:
         while(§§pop() != §§pop())
         {
            while(true)
            {
               §§push(param1);
               loop6:
               while(!_loc2_)
               {
                  §§push("POLYGON");
                  loop7:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr242:
                        if(_loc3_ || param1)
                        {
                           §§push(§_-2b§);
                           break;
                        }
                        break loop1;
                     }
                     addr196:
                     while(true)
                     {
                        §§push(param1);
                        addr198:
                        while(_loc3_ || param1)
                        {
                           §§push("Image_Rectangle");
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop7;
                              }
                              if(!(_loc3_ || param1))
                              {
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 addr217:
                                 return §_-049§;
                                 addr216:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 continue loop0;
                                 addr225:
                              }
                           }
                           continue loop1;
                        }
                        continue loop6;
                     }
                  }
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
                  addr270:
                  addr270:
                  return §§pop();
               }
               continue loop3;
            }
         }
         addr264:
         return §_-WD§;
      }
      
      public function §_-J2§() : Array
      {
         return this.§_-vS§;
      }
      
      public function §_-MC§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-vS§ = param1;
         }
      }
      
      public function §_-UN§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§super§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc4_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§_-ux§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(!_loc5_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§_-09f§ = §§pop();
         }
         while(_loc5_ && this);
         
      }
      
      public function §super§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§_-vS§)
         {
            if(!(_loc11_ && this))
            {
               §§push(_loc5_);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        addr59:
                        §§push(_loc6_.x);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc10_ || this)
                           {
                              var _loc9_:* = §§pop();
                              if(!(_loc11_ && _loc1_))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc11_)
                                 {
                                    addr82:
                                    _loc3_ = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(_loc9_);
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr119:
                                                         _loc9_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr130:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            addr135:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               addr138:
                                                               _loc2_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  addr304:
                                                                  _loc5_ = false;
                                                                  addr141:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr301:
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr251:
                                                                              while(_loc10_ || _loc2_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    addr259:
                                                                                 }
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.y);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       addr230:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             while(_loc10_ || this)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr241:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         addr244:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  addr202:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc11_ && this)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     if(_loc11_ && _loc1_)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(!_loc11_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           addr279:
                                                                                                                           addr305:
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                               addr142:
                                                                                                            }
                                                                                                            §§goto(addr259);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             addr298:
                                                                                          }
                                                                                          §§goto(addr142);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§goto(addr298);
                                                                                 §§goto(addr251);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr193);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr296);
               }
               §§goto(addr304);
            }
            §§goto(addr59);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §_-A1§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§_-aw§);
         if(_loc9_ || this)
         {
            var _loc7_:* = §§pop();
            if(!_loc10_)
            {
               §§push(§_-WD§);
               if(!_loc10_)
               {
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || _loc2_)
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr191:
                           }
                        }
                        else
                        {
                           addr183:
                           §§push(1);
                           if(!(_loc10_ && param1))
                           {
                              §§goto(addr191);
                           }
                        }
                        addr197:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = new b2CircleShape();
                              if(_loc9_)
                              {
                                 §§push(_loc2_);
                                 §§push(this.§_-ux§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§_-Fu§(§§pop());
                                 if(_loc9_)
                                 {
                                    return _loc2_;
                                 }
                              }
                           case 1:
                              _loc3_ = this.§_-J2§();
                              (_loc4_ = new b2PolygonShape()).§_-A§(_loc3_,_loc3_.length);
                              _loc5_ = _loc4_.§_-Y2§();
                              if(!(_loc10_ && param1))
                              {
                                 _loc7_ = 0;
                                 if(!_loc10_)
                                 {
                                    for each(_loc6_ in _loc5_)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.x);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().x = §§pop();
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§push(_loc6_);
                                          §§push(_loc6_.y);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                    }
                                 }
                                 if(_loc9_)
                                 {
                                    return _loc4_;
                                 }
                                 break;
                              }
                        }
                        return null;
                        addr196:
                     }
                     else
                     {
                        §§push(§_-2b§);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(_loc7_);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr191);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr183);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr196);
               }
               §§goto(addr191);
            }
            §§goto(addr183);
         }
         §§goto(addr197);
      }
   }
}
