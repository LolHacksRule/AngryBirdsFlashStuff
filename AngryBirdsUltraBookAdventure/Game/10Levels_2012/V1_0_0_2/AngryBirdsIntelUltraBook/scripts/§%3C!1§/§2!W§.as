package §<!1§
{
   import §2!+§.b2CircleShape;
   import §2!+§.b2PolygonShape;
   import §2!+§.b2Shape;
   import §>H§.b2Vec2;
   import §^_§.§!>§;
   
   public class §2!W§
   {
      
      public static const §5!,§:int = 0;
      
      public static const §%!i§:int = 1;
      
      public static const §,]§:int = 2;
      
      public static const §,%§:int = 3;
      
      public static const §=!i§:int = 4;
      
      public static const §"d§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!,§ = 0;
            loop0:
            while(true)
            {
               §%!i§ = 1;
               while(true)
               {
                  §,]§ = 2;
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     §,%§ = 3;
                     loop3:
                     while(true)
                     {
                        §=!i§ = 4;
                        while(_loc1_)
                        {
                           §"d§ = 5;
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public var mName:String;
      
      public var §6r§:int;
      
      public var §'O§:Number;
      
      public var §!!A§:Number;
      
      public var §]!x§:Number;
      
      public var §9R§:Array = null;
      
      public function §2!W§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§6r§ = this.§=9§(param2);
                  while(true)
                  {
                     this.§'O§ = param3;
                     addr71:
                     while(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§!!A§ = param4;
            do
            {
               this.§]!x§ = param5;
            }
            while(_loc7_ && param2);
            
            if(_loc6_)
            {
               break;
            }
            §§goto(addr71);
         }
      }
      
      public function §@!P§() : int
      {
         return this.§6r§;
      }
      
      public function §#g§() : Number
      {
         return this.§'O§;
      }
      
      public function §=!q§() : int
      {
         return this.§!!A§;
      }
      
      private function §=9§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               loop1:
               while(§§pop() != §§pop())
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
                        while(§§pop() != §§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(_loc2_)
                              {
                                 §§push("POLYGON");
                                 loop7:
                                 while(!(_loc3_ && param1))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop9:
                                          while(true)
                                          {
                                             §§push("Image_Rectangle");
                                             loop10:
                                             while(!(_loc3_ && this))
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   loop11:
                                                   do
                                                   {
                                                      §§push(param1);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push("Image_Polygon");
                                                         loop13:
                                                         while(!_loc3_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               continue loop11;
                                                            }
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push("Image_Circle");
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§!>§);
                                                                                       §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(this.mName);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                §§goto(addr53);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr57);
                                                                                       }
                                                                                       addr53:
                                                                                       §§push(§§pop() + " invalid name = ");
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr57:
                                                                                          §§push(§§pop() + param1);
                                                                                       }
                                                                                       §§pop().log(§§pop());
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc2_ || param1))
                                                                                          {
                                                                                             break loop14;
                                                                                          }
                                                                                          if(!(_loc2_ || this))
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          §§push(§,%§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          addr121:
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(_loc2_ || param1)
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr164:
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          addr181:
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                             addr223:
                                                                                             §§push(§"d§);
                                                                                             break;
                                                                                          }
                                                                                          if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§5!,§);
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop12;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break loop1;
                                                            }
                                                            §§goto(addr121);
                                                            §§push(§,]§);
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   while(_loc3_ && _loc3_);
                                                   
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc3_ && param1)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§goto(addr164);
                                                   §§push(§%!i§);
                                                }
                                                §§goto(addr181);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        addr233:
                        return §§pop();
                     }
                  }
               }
               addr239:
               return §§pop();
            }
         }
         §§goto(addr163);
      }
      
      public function §!M§() : Array
      {
         return this.§9R§;
      }
      
      public function §]!H§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9R§ = param1;
         }
      }
      
      public function §#!9§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§%!x§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc4_ || _loc1_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§'O§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§!!A§ = §§pop();
         }
         while(_loc5_ && _loc2_);
         
      }
      
      public function §%!x§() : Array
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
         for each(_loc6_ in this.§9R§)
         {
            if(_loc10_)
            {
               §§push(_loc5_);
               if(!(_loc11_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(!(_loc11_ && _loc1_))
                           {
                              var _loc9_:* = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc11_ && this))
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc11_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_)
                                       {
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_ || _loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_ || _loc1_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            addr142:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr150:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc10_ || this)
                                                               {
                                                                  addr339:
                                                                  _loc5_ = false;
                                                                  addr340:
                                                                  continue;
                                                                  addr340:
                                                                  addr176:
                                                               }
                                                               else
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.x);
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr307:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 addr308:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.x);
                                                                                    addr310:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr311:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          addr312:
                                                                                          while(!_loc11_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr308:
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             addr265:
                                                                                             loop12:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc11_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc6_.y);
                                                                                                            loop14:
                                                                                                            for(; !_loc11_; while(true)
                                                                                                            {
                                                                                                               if(!(_loc10_ || this))
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr238:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     addr239:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ || this))
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              break loop11;
                                                                                                                           }
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            })
                                                                                                            {
                                                                                                               if(!(_loc11_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop16:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(_loc10_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              addr177:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 addr335:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr336:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr333:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr295:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr311);
                                                                                                                     }
                                                                                                                     §§goto(addr312);
                                                                                                                  }
                                                                                                                  addr287:
                                                                                                               }
                                                                                                               §§goto(addr335);
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§goto(addr308);
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§goto(addr177);
                                                                                             }
                                                                                          }
                                                                                          addr264:
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr194);
                                          }
                                          §§goto(addr311);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr265);
                        }
                        else
                        {
                           addr331:
                           §§push(_loc1_);
                        }
                        §§goto(addr332);
                     }
                     §§goto(addr340);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                     if(_loc10_)
                     {
                        §§goto(addr331);
                     }
                  }
                  §§goto(addr336);
               }
               §§goto(addr339);
            }
            §§goto(addr176);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §>!D§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§6r§);
         if(_loc10_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && _loc2_))
            {
               §§push(§=!i§);
               if(!_loc9_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_ || _loc3_)
                        {
                           addr165:
                           §§push(0);
                           if(_loc10_ || _loc3_)
                           {
                              addr208:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = new b2CircleShape();
                                    if(_loc10_)
                                    {
                                       §§push(_loc2_);
                                       §§push(this.§'O§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§[!x§(§§pop());
                                       if(_loc9_ && param1)
                                       {
                                          addr57:
                                          _loc3_ = this.§!M§();
                                          (_loc4_ = new b2PolygonShape()).§2`§(_loc3_,_loc3_.length);
                                          _loc5_ = _loc4_.§ A§();
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
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc6_);
                                                      §§push(_loc6_.y);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(§§pop() * param1);
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                }
                                             }
                                             if(!_loc9_)
                                             {
                                                return _loc4_;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                    }
                                    return _loc2_;
                                 case 1:
                                    §§goto(addr57);
                              }
                              return null;
                              addr207:
                           }
                           else
                           {
                              addr192:
                              if(§§pop() !== _loc7_)
                              {
                                 §§goto(addr207);
                                 §§push(2);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr207);
                        }
                        §§push(1);
                        if(_loc9_ && this)
                        {
                        }
                        §§goto(addr207);
                     }
                     else
                     {
                        §§push(§"d§);
                        if(_loc10_ || _loc3_)
                        {
                           §§goto(addr192);
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr192);
               }
               §§goto(addr207);
            }
            §§goto(addr165);
         }
         §§goto(addr208);
      }
   }
}
