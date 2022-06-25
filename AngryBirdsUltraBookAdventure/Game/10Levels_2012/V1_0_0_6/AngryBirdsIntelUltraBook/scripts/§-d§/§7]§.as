package §-d§
{
   import §"x§.§-8§;
   import §,C§.b2CircleShape;
   import §,C§.b2PolygonShape;
   import §,C§.b2Shape;
   import §;%§.b2Vec2;
   
   public class §7]§
   {
      
      public static const §<!`§:int = 0;
      
      public static const §>4§:int = 1;
      
      public static const §8P§:int = 2;
      
      public static const §?!S§:int = 3;
      
      public static const §"!D§:int = 4;
      
      public static const §&&§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!`§ = 0;
            loop0:
            while(true)
            {
               §>4§ = 1;
               loop1:
               while(true)
               {
                  §8P§ = 2;
                  while(true)
                  {
                     §?!S§ = 3;
                     while(_loc1_)
                     {
                        continue loop1;
                        while(!(_loc2_ && _loc1_))
                        {
                           continue loop0;
                           §&&§ = 5;
                           if(!(_loc2_ && §7]§))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §"!D§ = 4;
            §§goto(addr49);
         }
      }
      
      public var mName:String;
      
      public var §]n§:int;
      
      public var §2!d§:Number;
      
      public var §@@§:Number;
      
      public var §#§:Number;
      
      public var §+!Y§:Array = null;
      
      public function §7]§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr104:
               loop1:
               while(true)
               {
                  this.§]n§ = this.§0!8§(param2);
                  while(true)
                  {
                     this.§2!d§ = param3;
                     addr49:
                     if(_loc6_ || param1)
                     {
                        continue loop1;
                     }
                  }
               }
               addr80:
               if(!(_loc6_ || this))
               {
                  continue;
               }
               this.§#§ = param5;
               if(_loc6_ || this)
               {
                  §§goto(addr49);
               }
               loop4:
               while(true)
               {
                  if(_loc6_)
                  {
                     §§goto(addr80);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§@@§ = param4;
                        continue loop4;
                     }
                     §§goto(addr63);
                     addr92:
                  }
               }
               addr87:
               §§goto(addr104);
            }
         }
         §§goto(addr92);
      }
      
      public function §8X§() : int
      {
         return this.§]n§;
      }
      
      public function §2p§() : Number
      {
         return this.§2!d§;
      }
      
      public function §#!L§() : int
      {
         return this.§@@§;
      }
      
      private function §0!8§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        loop3:
                        while(true)
                        {
                           §§push("CIRCLE");
                           loop4:
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    addr221:
                                    §§push(§"!D§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       addr179:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop6:
                                          while(!_loc3_)
                                          {
                                             §§push("POLYGON");
                                             loop7:
                                             for(; !_loc3_; while(_loc2_ || _loc2_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push("Image_Polygon");
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!(_loc2_ || param1))
                                                                  {
                                                                     while(_loc2_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§8P§);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr221);
                                                                        }
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr96);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr145:
                                                                        §§push(§>4§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr177);
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr187);
                                                                     }
                                                                     addr195:
                                                                     return §&&§;
                                                                  }
                                                                  addr176:
                                                                  §§push(§<!`§);
                                                                  addr177:
                                                                  return §§pop();
                                                                  §§goto(addr145);
                                                               }
                                                               §§goto(addr62);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr160);
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                §§goto(addr176);
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   §§goto(addr89);
                                                }
                                                while(true)
                                                {
                                                   §§push(§-8§);
                                                   §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.mName);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr48);
                                                         }
                                                      }
                                                      §§goto(addr52);
                                                   }
                                                   §§goto(addr48);
                                                }
                                             })
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   addr187:
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                   continue loop17;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr160:
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      §§push("Image_Rectangle");
                                                      continue loop7;
                                                   }
                                                   addr206:
                                                   continue loop3;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr229:
                                 }
                                 addr48:
                                 §§push(§§pop() + " invalid name = ");
                                 if(!_loc3_)
                                 {
                                    addr52:
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().log(§§pop());
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(§?!S§);
                                          if(!(_loc3_ && param1))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr96);
                                       }
                                       else
                                       {
                                          §§goto(addr206);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr89);
                                    }
                                    §§goto(addr160);
                                 }
                                 else
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop16;
                                    }
                                    addr233:
                                    return §?!S§;
                                 }
                                 return §§pop();
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                  }
                  §§goto(addr233);
               }
            }
         }
         §§goto(addr229);
      }
      
      public function §&o§() : Array
      {
         return this.§+!Y§;
      }
      
      public function §"!=§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+!Y§ = param1;
         }
      }
      
      public function §'!G§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§5l§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§2!d§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§@@§ = §§pop();
            }
            while(_loc5_ && _loc2_);
            
         }
      }
      
      public function §5l§() : Array
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
         for each(_loc6_ in this.§+!Y§)
         {
            if(!(_loc10_ && _loc3_))
            {
               §§push(_loc5_);
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc11_ || _loc3_)
                     {
                        §§push(_loc6_.x);
                        if(!(_loc10_ && this))
                        {
                           §§push(§§pop());
                           if(_loc11_ || _loc1_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_ || _loc3_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc11_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc11_ || _loc2_)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            addr138:
                                                            §§push(Number(§§pop()));
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               addr146:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     addr330:
                                                                     _loc5_ = false;
                                                                  }
                                                                  else
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           addr250:
                                                                           addr258:
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr251:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc6_.x);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr299:
                                                                                          addr316:
                                                                                          loop9:
                                                                                          for(; !(_loc11_ || _loc3_); while(true)
                                                                                          {
                                                                                             §§push(_loc6_.x);
                                                                                             if(!(_loc10_ && _loc1_))
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop9;
                                                                                          })
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc1_ = §§pop();
                                                                                                addr328:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr317:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr298:
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                    addr287:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.y);
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop4:
                                                                                       while(!_loc10_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             loop5:
                                                                                             while(_loc11_)
                                                                                             {
                                                                                                if(_loc10_ && _loc2_)
                                                                                                {
                                                                                                   break loop1;
                                                                                                   addr331:
                                                                                                }
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() <= §§pop())
                                                                                                               {
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               if(!(_loc10_ && _loc1_))
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr322:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              addr323:
                                                                                                                              while(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    addr326:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr327);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop6;
                                                                                                                           }
                                                                                                                           addr322:
                                                                                                                        }
                                                                                                                        §§goto(addr324);
                                                                                                                     }
                                                                                                                     addr213:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     if(_loc11_ || _loc3_)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr326);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && _loc1_))
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     §§goto(addr324);
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                            }
                                                                                                            addr197:
                                                                                                         }
                                                                                                         §§goto(addr323);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr250);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr213);
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                             §§goto(addr328);
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr178);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr316);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr324);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr322);
               }
               §§goto(addr330);
            }
            §§goto(addr317);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §7!H§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§]n§);
         if(!(_loc9_ && param1))
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && param1))
            {
               §§push(§"!D§);
               if(!(_loc9_ && this))
               {
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_ || _loc3_)
                        {
                           addr185:
                           §§push(0);
                           if(_loc9_ && this)
                           {
                              addr217:
                           }
                        }
                        else
                        {
                           addr214:
                           §§push(1);
                           if(_loc10_)
                           {
                              §§goto(addr217);
                           }
                        }
                     }
                     else
                     {
                        §§push(§&&§);
                        if(!(_loc9_ && param1))
                        {
                           addr213:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr214);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr213);
               }
               §§goto(addr217);
            }
            §§goto(addr185);
         }
         addr223:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(!(_loc9_ && param1))
               {
                  §§push(_loc2_);
                  §§push(this.§2!d§);
                  if(_loc10_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§>w§(§§pop());
                  if(_loc10_ || _loc3_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§&o§();
               (_loc4_ = new b2PolygonShape()).§?g§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§^3§();
               if(!(_loc9_ && _loc2_))
               {
                  _loc7_ = 0;
                  if(_loc10_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!(_loc9_ && this))
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(_loc10_ || _loc3_)
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
                  if(_loc9_)
                  {
                     break;
                  }
               }
               return _loc4_;
         }
         return null;
      }
   }
}
