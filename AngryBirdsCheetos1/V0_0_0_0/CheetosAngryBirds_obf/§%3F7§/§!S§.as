package §?7§
{
   import §-!C§.b2CircleShape;
   import §-!C§.b2PolygonShape;
   import §-!C§.b2Shape;
   import §9"§.b2Vec2;
   import §@,§.§4h§;
   
   public class §!S§
   {
      
      public static const §]!2§:int = 0;
      
      public static const §<4§:int = 1;
      
      public static const §,i§:int = 2;
      
      public static const §;A§:int = 3;
      
      public static const §=§:int = 4;
      
      public static const §1F§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!S§)
         {
            §]!2§ = 0;
            loop0:
            while(true)
            {
               §<4§ = 1;
               while(true)
               {
                  §,i§ = 2;
                  addr64:
                  while(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §;A§ = 3;
            loop4:
            do
            {
               §=§ = 4;
               while(!_loc1_)
               {
                  §1F§ = 5;
                  if(_loc2_)
                  {
                     continue loop4;
                  }
               }
               §§goto(addr64);
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      public var mName:String;
      
      public var §>!B§:int;
      
      public var §?l§:Number;
      
      public var §+G§:Number;
      
      public var §5!L§:Number;
      
      public var §`e§:Array = null;
      
      public function §!S§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§>!B§ = this.§5G§(param2);
                  while(true)
                  {
                     if(_loc6_)
                     {
                        this.§?l§ = param3;
                        loop3:
                        while(true)
                        {
                           this.§+G§ = param4;
                           while(true)
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        return;
                        addr56:
                        addr75:
                     }
                     break;
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §^6§() : int
      {
         return this.§>!B§;
      }
      
      public function §7!A§() : Number
      {
         return this.§?l§;
      }
      
      public function §]$§() : int
      {
         return this.§+G§;
      }
      
      private function §5G§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                  while(true)
                  {
                     if(§§pop() != "CIRCLE")
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(_loc2_)
                           {
                              if(§§pop() != "POLYGON")
                              {
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() == "Image_Rectangle")
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             while(_loc2_ || this)
                                             {
                                                while(true)
                                                {
                                                   addr131:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(§§pop() == "Image_Polygon")
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              §§push(§1F§);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr196:
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr152:
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§<4§);
                                                                        break;
                                                                     }
                                                                     continue loop3;
                                                                     return §§pop();
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                }
                                                if(!(_loc2_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(§;A§);
                                                if(_loc2_ || this)
                                                {
                                                   if(_loc3_ && this)
                                                   {
                                                      addr151:
                                                      return §§pop();
                                                   }
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr152);
                                                }
                                                else
                                                {
                                                   §§goto(addr113);
                                                }
                                             }
                                             continue loop1;
                                          }
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             break loop0;
                                          }
                                          addr179:
                                          §§push(§]!2§);
                                          if(_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                              §§goto(addr196);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr214);
                  }
               }
            }
            §§goto(addr220);
            §§push(§;A§);
         }
         §§goto(addr189);
      }
      
      public function §-w§() : Array
      {
         return this.§`e§;
      }
      
      public function §7!§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`e§ = param1;
         }
      }
      
      public function §`6§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = this.§!!<§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc5_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§?l§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(!_loc4_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§+G§ = §§pop();
         }
         while(_loc4_);
         
      }
      
      public function §!!<§() : Array
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
         for each(_loc6_ in this.§`e§)
         {
            if(_loc11_)
            {
               §§push(_loc5_);
               if(_loc11_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && _loc1_))
                     {
                        §§push(_loc6_.x);
                        if(_loc11_ || this)
                        {
                           §§push(§§pop());
                           if(_loc11_ || _loc2_)
                           {
                              var _loc9_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(_loc9_);
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          if(_loc11_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(!(_loc10_ && this))
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc11_)
                                                   {
                                                      addr122:
                                                      §§push(§§pop());
                                                      if(!(_loc10_ && _loc1_))
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            addr133:
                                                            §§push(Number(§§pop()));
                                                            if(_loc11_)
                                                            {
                                                               addr136:
                                                               _loc4_ = §§pop();
                                                               addr137:
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  addr325:
                                                                  _loc5_ = false;
                                                               }
                                                               else
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr197:
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc10_ && _loc1_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc11_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr231:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr233:
                                                                                                                     if(_loc11_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr240:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           addr241:
                                                                                                                           while(!(_loc10_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 addr255:
                                                                                                                                 loop12:
                                                                                                                                 while(!(_loc10_ && this))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       addr263:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          if(_loc11_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      addr277:
                                                                                                                                                      addr319:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc11_ || this))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr294:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  addr297:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr298:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop11;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr323:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                            break loop12;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         addr321:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr322:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               §§goto(addr323);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr276:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr233);
                                                                                                                                             }
                                                                                                                                             while(_loc11_)
                                                                                                                                             {
                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                break loop17;
                                                                                                                                             }
                                                                                                                                             §§goto(addr321);
                                                                                                                                             addr302:
                                                                                                                                             addr273:
                                                                                                                                          }
                                                                                                                                          §§goto(addr277);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr302);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr326:
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                        addr240:
                                                                                                                     }
                                                                                                                     §§goto(addr273);
                                                                                                                  }
                                                                                                                  §§goto(addr276);
                                                                                                               }
                                                                                                            }
                                                                                                            addr230:
                                                                                                         }
                                                                                                         §§goto(addr297);
                                                                                                      }
                                                                                                      §§goto(addr231);
                                                                                                   }
                                                                                                   addr219:
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          addr204:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr197);
                                                                                          }
                                                                                          addr318:
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                                 §§goto(addr263);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     addr305:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr252);
                                                                        §§goto(addr241);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   else
                                                   {
                                                      addr317:
                                                      §§push(_loc1_);
                                                   }
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr319);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                     if(_loc11_ || this)
                     {
                        §§goto(addr317);
                     }
                  }
                  §§goto(addr322);
               }
               §§goto(addr325);
            }
            §§goto(addr219);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §-x§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§>!B§);
         if(!_loc10_)
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || this)
            {
               §§push(§=§);
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc10_ && param1))
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr211:
                           }
                        }
                        else
                        {
                           addr193:
                           §§push(1);
                           if(!(_loc10_ && _loc2_))
                           {
                              §§goto(addr211);
                           }
                        }
                     }
                     else
                     {
                        §§push(§1F§);
                        if(!(_loc10_ && param1))
                        {
                           addr192:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr193);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr192);
               }
               §§goto(addr211);
            }
            §§goto(addr193);
         }
         addr217:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc9_ || _loc2_)
               {
                  §§push(_loc2_);
                  §§push(this.§?l§);
                  if(!(_loc10_ && this))
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§>w§(§§pop());
                  if(!_loc10_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§-w§();
               (_loc4_ = new b2PolygonShape()).§1#§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§,n§();
               if(_loc9_ || this)
               {
                  _loc7_ = 0;
                  if(!(_loc10_ && _loc2_))
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
                        if(_loc9_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().y = §§pop();
                        }
                     }
                  }
                  if(_loc9_ || this)
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
