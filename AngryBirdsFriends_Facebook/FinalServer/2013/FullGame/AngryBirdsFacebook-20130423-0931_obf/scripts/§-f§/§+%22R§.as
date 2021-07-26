package §-f§
{
   import §!"3§.b2CircleShape;
   import §!"3§.b2PolygonShape;
   import §!"3§.b2Shape;
   import §+!c§.§;!=§;
   import §6!^§.b2Vec2;
   
   public class §+"R§
   {
      
      public static const §`i§:int = 0;
      
      public static const §"!N§:int = 1;
      
      public static const §7!@§:int = 2;
      
      public static const §[=§:int = 3;
      
      public static const §"c§:int = 4;
      
      public static const §[!>§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §+"R§)
         {
            §`i§ = 0;
         }
         while(true)
         {
            §"!N§ = 1;
            loop1:
            for(; !_loc1_; if(!(_loc2_ || §+"R§))
            {
               continue;
            },§"c§ = 4,§§goto(addr50))
            {
               §7!@§ = 2;
               loop2:
               while(true)
               {
                  §[=§ = 3;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr50:
                     while(_loc2_ || §+"R§)
                     {
                        §[!>§ = 5;
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public var mName:String;
      
      public var §]!k§:int;
      
      public var §,>§:Number;
      
      public var §`;§:Number;
      
      public var §if§:Number;
      
      public var §5!C§:Array = null;
      
      public function §+"R§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§]!k§ = this.§2"-§(param2);
                  loop2:
                  while(true)
                  {
                     this.§,>§ = param3;
                     while(!_loc7_)
                     {
                        this.§`;§ = param4;
                        loop4:
                        while(_loc6_)
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§if§ = param5;
                              if(_loc6_ || param2)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §&"A§() : int
      {
         return this.§]!k§;
      }
      
      public function §`"V§() : Number
      {
         return this.§,>§;
      }
      
      public function §0a§() : int
      {
         return this.§`;§;
      }
      
      private function §2"-§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               loop1:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push("CIRCLE");
                        loop4:
                        while(_loc2_)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push("POLYGON");
                                    while(!(_loc3_ && param1))
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop9:
                                             while(true)
                                             {
                                                §§push("Image_Rectangle");
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop12:
                                                         while(_loc2_)
                                                         {
                                                            §§push("Image_Polygon");
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(!(_loc2_ || _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop9;
                                                                     addr171:
                                                                     while(true)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§goto(addr164);
                                                            §§push(§"!N§);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr176);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr194);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr221);
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr234);
            }
         }
         §§goto(addr171);
      }
      
      public function §3V§() : Array
      {
         return this.§5!C§;
      }
      
      public function §9! §(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!C§ = param1;
         }
      }
      
      public function §>! §() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§4!1§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc4_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§,>§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(!_loc5_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§`;§ = §§pop();
         }
         while(!(_loc4_ || _loc2_));
         
      }
      
      public function §4!1§() : Array
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
         for each(_loc6_ in this.§5!C§)
         {
            if(_loc10_ || _loc2_)
            {
               §§push(_loc5_);
               if(_loc10_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        addr64:
                        §§push(_loc6_.x);
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(_loc10_ || this)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_ || _loc1_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(_loc9_);
                                       if(!_loc11_)
                                       {
                                          addr98:
                                          if(_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_ || _loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               addr140:
                                                               _loc4_ = §§pop();
                                                               addr142:
                                                               §§push(_loc9_);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc10_ || _loc1_)
                                                                     {
                                                                        addr329:
                                                                        _loc5_ = false;
                                                                     }
                                                                     else
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.x);
                                                                              addr287:
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.x);
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                addr300:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop3:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr251:
                                                                                                      loop4:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.y);
                                                                                                         addr254:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc10_ || this))
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     loop7:
                                                                                                                     while(_loc10_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           addr279:
                                                                                                                        }
                                                                                                                        loop8:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           loop9:
                                                                                                                           while(!_loc11_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(!(_loc11_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc11_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    if(_loc10_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(_loc11_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       loop12:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                          break loop7;
                                                                                                                                          addr323:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr237:
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    if(_loc10_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr319:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          addr320:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                break loop9;
                                                                                                                                             }
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr319:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr323);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(_loc10_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                     addr330:
                                                                                                                  }
                                                                                                                  §§goto(addr167);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                          }
                                                                                          addr291:
                                                                                       }
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr300);
                                          }
                                          §§goto(addr279);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr320);
                        }
                        §§goto(addr319);
                     }
                     §§goto(addr291);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr319);
               }
               §§goto(addr329);
            }
            §§goto(addr64);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §<7§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§]!k§);
         if(_loc10_)
         {
            var _loc7_:* = §§pop();
            if(_loc10_)
            {
               §§push(§"c§);
               if(!(_loc9_ && param1))
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_ || _loc3_)
                        {
                           addr200:
                           §§push(0);
                           if(!(_loc9_ && _loc2_))
                           {
                              addr223:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = new b2CircleShape();
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§push(_loc2_);
                                       §§push(this.§,>§);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§;#§(§§pop());
                                       if(!(_loc10_ || this))
                                       {
                                          §§goto(addr67);
                                       }
                                    }
                                    return _loc2_;
                                 case 1:
                                    addr67:
                                    _loc3_ = this.§3V§();
                                    (_loc4_ = new b2PolygonShape()).§?"E§(_loc3_,_loc3_.length);
                                    _loc5_ = _loc4_.§,!N§();
                                    if(!(_loc9_ && param1))
                                    {
                                       _loc7_ = 0;
                                       if(_loc10_ || _loc3_)
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
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc6_.y);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().y = §§pop();
                                             }
                                          }
                                       }
                                       if(!(_loc10_ || _loc2_))
                                       {
                                          break;
                                       }
                                    }
                                    return _loc4_;
                              }
                              return null;
                              addr222:
                           }
                           else
                           {
                              addr212:
                              if(§§pop() !== _loc7_)
                              {
                                 §§goto(addr222);
                                 §§push(2);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr222);
                        }
                        §§push(1);
                        if(_loc9_)
                        {
                        }
                     }
                     else
                     {
                        §§push(§[!>§);
                        if(!_loc9_)
                        {
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr222);
                  }
               }
               §§goto(addr212);
            }
            §§goto(addr200);
         }
         §§goto(addr223);
      }
   }
}
