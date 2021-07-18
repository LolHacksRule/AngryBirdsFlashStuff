package §]";§
{
   import §2k§.b2CircleShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §6]§.§,"0§;
   import §<!a§.b2Vec2;
   
   public class §1Y§
   {
      
      public static const §=K§:int = 0;
      
      public static const §"!z§:int = 1;
      
      public static const §,!5§:int = 2;
      
      public static const §<2§:int = 3;
      
      public static const §;&§:int = 4;
      
      public static const §0R§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=K§ = 0;
            loop0:
            while(true)
            {
               §"!z§ = 1;
               addr87:
               while(true)
               {
                  §,!5§ = 2;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §;&§ = 4;
            for(; _loc1_; §0R§ = 5,if(_loc1_ || _loc2_)
            {
               return;
            })
            {
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr65);
            }
            §§goto(addr58);
         }
      }
      
      public var mName:String;
      
      public var §^!^§:int;
      
      public var §",§:Number;
      
      public var §%"0§:Number;
      
      public var §?T§:Number;
      
      public var §1>§:Array = null;
      
      public function §1Y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr66:
               if(_loc6_ && this)
               {
                  continue;
               }
               this.§%"0§ = param4;
               do
               {
                  this.§?T§ = param5;
               }
               while(!_loc7_);
               
               addr73:
               if(_loc7_ || param1)
               {
                  addr52:
                  if(_loc6_)
                  {
                     while(true)
                     {
                        this.§^!^§ = this.§%W§(param2);
                        while(true)
                        {
                           this.§",§ = param3;
                           addr64:
                           while(!_loc6_)
                           {
                              §§goto(addr66);
                              §§goto(addr73);
                           }
                        }
                        §§goto(addr52);
                     }
                     addr95:
                  }
                  return;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr95);
      }
      
      public function §0! §() : int
      {
         return this.§^!^§;
      }
      
      public function §;,§() : Number
      {
         return this.§",§;
      }
      
      public function §=7§() : int
      {
         return this.§%"0§;
      }
      
      private function §%W§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "Rectangle")
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(§§pop() != "CIRCLE")
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(§§pop() == "POLYGON")
                              {
                                 break;
                              }
                              loop5:
                              do
                              {
                                 §§push(param1);
                                 loop6:
                                 while(!_loc2_)
                                 {
                                    if(§§pop() != "Image_Rectangle")
                                    {
                                       loop7:
                                       do
                                       {
                                          §§push(param1);
                                          loop8:
                                          while(_loc3_)
                                          {
                                             if(§§pop() != "Image_Polygon")
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(§§pop() == "Image_Circle")
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§goto(addr121);
                                                            }
                                                            addr160:
                                                            §§goto(addr161);
                                                         }
                                                         addr138:
                                                         if(!_loc2_)
                                                         {
                                                            break loop3;
                                                         }
                                                         continue loop3;
                                                      }
                                                      while(!_loc2_)
                                                      {
                                                         §§pop().log(§§pop());
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr66:
                                                            if(!_loc2_)
                                                            {
                                                               break loop9;
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§,"0§);
                                                      §§push("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() + " invalid name = ");
                                                         if(_loc3_ || this)
                                                         {
                                                            addr56:
                                                            §§push(§§pop() + param1);
                                                         }
                                                         §§goto(addr58);
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                   §§goto(addr66);
                                                }
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   break loop4;
                                                }
                                                §§push(§<2§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr161:
                                                   §§push(§=K§);
                                                   if(_loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr183);
                                                }
                                                else
                                                {
                                                   addr121:
                                                   §§push(§,!5§);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr150:
                                                   if(!_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr174);
                                                }
                                             }
                                             §§goto(addr138);
                                          }
                                          continue loop2;
                                       }
                                       while(_loc3_);
                                       
                                       continue loop5;
                                    }
                                    §§goto(addr160);
                                 }
                                 continue loop4;
                              }
                              while(!_loc2_);
                              
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr174:
                        return §§pop();
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(_loc2_ && this)
                     {
                        break loop0;
                     }
                     §§goto(addr150);
                     §§push(§"!z§);
                  }
                  addr183:
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
                  addr206:
                  return §§pop();
               }
            }
            §§goto(addr206);
            §§push(§<2§);
         }
         §§goto(addr153);
      }
      
      public function §=`§() : Array
      {
         return this.§1>§;
      }
      
      public function §<-§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1>§ = param1;
         }
      }
      
      public function §1!W§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§&8§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!_loc5_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§",§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§%"0§ = §§pop();
            }
            while(_loc5_ && _loc3_);
            
         }
      }
      
      public function §&8§() : Array
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§1>§)
         {
            if(!_loc10_)
            {
               §§push(_loc5_);
               if(!(_loc10_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        §§push(_loc6_.x);
                        if(!(_loc10_ && this))
                        {
                           §§push(§§pop());
                           if(!_loc10_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(_loc9_);
                                       if(!_loc10_)
                                       {
                                          addr94:
                                          if(!(_loc10_ && _loc1_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc11_ || this)
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr120:
                                                         _loc9_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            addr123:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc10_)
                                                            {
                                                               addr126:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  addr144:
                                                                  _loc2_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     addr295:
                                                                     _loc5_ = false;
                                                                     addr296:
                                                                     continue;
                                                                     addr296:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_ || _loc2_)
                                                                                                            {
                                                                                                               break loop6;
                                                                                                            }
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc11_ || _loc2_)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     while(_loc11_)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        §§goto(addr296);
                                                                                                                     }
                                                                                                                     addr271:
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr274:
                                                                                                                        loop1:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           addr275:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr214:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    if(_loc11_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       while(!_loc10_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                             {
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             if(_loc11_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(_loc10_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr239:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr259);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       loop11:
                                                                                                                                       while(_loc10_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr292:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         addr293:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr291:
                                                                                                                                                }
                                                                                                                                                §§goto(addr293);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                addr267:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop11;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr271);
                                                                                                                                       addr229:
                                                                                                                                    }
                                                                                                                                    §§goto(addr291);
                                                                                                                                 }
                                                                                                                                 §§goto(addr248);
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr259:
                                                                                                                     addr273:
                                                                                                                  }
                                                                                                                  §§goto(addr267);
                                                                                                               }
                                                                                                               §§goto(addr273);
                                                                                                            }
                                                                                                         }
                                                                                                         addr202:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr280:
                                                                                                      }
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                   addr199:
                                                                                                }
                                                                                                §§goto(addr202);
                                                                                             }
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr214);
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 addr170:
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr199);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        §§goto(addr210);
                                                                     }
                                                                     addr263:
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr263);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr280);
               }
               §§goto(addr295);
            }
            §§goto(addr239);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §!Q§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§^!^§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc10_)
            {
               §§push(§;&§);
               if(_loc10_ || this)
               {
                  §§push(_loc7_);
                  if(_loc10_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                           }
                        }
                        else
                        {
                           addr184:
                           §§push(1);
                           if(!_loc9_)
                           {
                              addr197:
                           }
                        }
                     }
                     else
                     {
                        §§push(§0R§);
                        if(_loc10_ || _loc2_)
                        {
                           addr183:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr184);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr183);
               }
               §§goto(addr197);
            }
            §§goto(addr184);
         }
         addr203:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc2_);
                  §§push(this.§",§);
                  if(_loc10_ || _loc3_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§`^§(§§pop());
                  if(!(_loc9_ && param1))
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§=`§();
               (_loc4_ = new b2PolygonShape()).§?!!§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§`"3§();
               if(_loc10_)
               {
                  _loc7_ = 0;
                  if(!_loc9_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(!_loc9_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().y = §§pop();
                        }
                     }
                  }
                  if(_loc10_)
                  {
                     return _loc4_;
                  }
                  break;
               }
         }
         return null;
      }
   }
}
