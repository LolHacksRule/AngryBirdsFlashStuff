package §>o§
{
   import §0!'§.b2CircleShape;
   import §0!'§.b2PolygonShape;
   import §0!'§.b2Shape;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   
   public class §0!N§
   {
      
      public static const §#Z§:int = 0;
      
      public static const §!!'§:int = 1;
      
      public static const §@!O§:int = 2;
      
      public static const §>6§:int = 3;
      
      public static const §0M§:int = 4;
      
      public static const §#!`§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §0!N§)
         {
            §#Z§ = 0;
            while(true)
            {
               §!!'§ = 1;
               addr51:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               return;
               addr58:
            }
         }
         loop1:
         while(true)
         {
            §@!O§ = 2;
            addr92:
            while(true)
            {
               §>6§ = 3;
               continue loop1;
            }
         }
         §§goto(addr58);
      }
      
      public var mName:String;
      
      public var §;N§:int;
      
      public var §>!D§:Number;
      
      public var §7!3§:Number;
      
      public var §8z§:Number;
      
      public var §7!P§:Array = null;
      
      public function §0!N§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super();
         }
         while(true)
         {
            this.mName = param1;
            loop1:
            while(_loc7_)
            {
               this.§;N§ = this.§!!o§(param2);
               while(true)
               {
                  this.§>!D§ = param3;
                  loop3:
                  while(_loc7_)
                  {
                     this.§7!3§ = param4;
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §>1§() : int
      {
         return this.§;N§;
      }
      
      public function §9^§() : Number
      {
         return this.§>!D§;
      }
      
      public function §+!k§() : int
      {
         return this.§7!3§;
      }
      
      private function §!!o§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                              if(§§pop() != §§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(!_loc2_)
                                    {
                                       §§push("POLYGON");
                                       loop7:
                                       for(; §§pop() != §§pop(); loop10:
                                       while(true)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop7;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc2_ && this)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr162);
                                                      }
                                                      addr223:
                                                      §§push(§0M§);
                                                      break;
                                                   }
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop13:
                                                      for(; _loc3_ || this; while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr93);
                                                         }
                                                      },§§goto(addr230))
                                                      {
                                                         §§push("Image_Polygon");
                                                         loop14:
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§push("Image_Circle");
                                                            continue loop13;
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc2_ && this)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§[g§);
                                                                  §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     §§push(this.mName);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr50:
                                                                           §§push(§§pop() + " invalid name = ");
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(param1);
                                                                           }
                                                                           §§pop().log(§§pop());
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              addr121:
                                                                              if(!(_loc2_ && param1))
                                                                              {
                                                                                 addr129:
                                                                                 §§push(§@!O§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                    addr185:
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    break loop11;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return §>6§;
                                                                              }
                                                                              addr229:
                                                                              addr230:
                                                                              addr230:
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              break loop14;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr50);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr50);
                                                               }
                                                               addr156:
                                                               if(!_loc2_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                         §§goto(addr156);
                                                         §§push(§!!'§);
                                                      }
                                                      continue loop3;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§push(§>6§);
                                                   if(_loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr129);
                                                   §§goto(addr164);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr144);
                                       },continue loop4)
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr164:
                                             addr182:
                                             while(true)
                                             {
                                                §§push("Image_Rectangle");
                                                continue loop7;
                                             }
                                             if(!_loc2_)
                                             {
                                                break loop5;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr215:
                                       return §§pop();
                                       §§push(§#!`§);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr185);
                                 §§push(§#Z§);
                              }
                              §§goto(addr223);
                           }
                        }
                     }
                  }
                  §§goto(addr229);
               }
            }
         }
         §§goto(addr214);
      }
      
      public function §9K§() : Array
      {
         return this.§7!P§;
      }
      
      public function §=!&§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§7!P§ = param1;
         }
      }
      
      public function §2! §() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = this.§,s§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc5_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!_loc4_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§>!D§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(_loc5_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§7!3§ = §§pop();
         }
         while(!_loc5_);
         
      }
      
      public function §,s§() : Array
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
         for each(_loc6_ in this.§7!P§)
         {
            if(!(_loc11_ && _loc1_))
            {
               §§push(_loc5_);
               if(_loc10_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc6_.x);
                        if(_loc10_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(!(_loc11_ && _loc3_))
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc11_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc11_ && this))
                                    {
                                       §§push(_loc9_);
                                       if(!_loc11_)
                                       {
                                          if(_loc10_ || _loc1_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc11_)
                                             {
                                             }
                                             loop27:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr322:
                                                loop1:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.x);
                                                         addr325:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr326:
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr327:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr323:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.x);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         loop8:
                                                         while(_loc10_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        §§push(_loc6_.x);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 addr232:
                                                                                 addr237:
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.y);
                                                                                    addr235:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    loop10:
                                                                                    while(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          while(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ || _loc1_))
                                                                                                {
                                                                                                   break;
                                                                                                   addr268:
                                                                                                }
                                                                                                _loc2_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc10_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   if(!(_loc10_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                      addr330:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                                addr208:
                                                                                                if(_loc11_ && _loc1_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr218:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc11_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            addr228:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr230:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr232);
                                                                                                                  }
                                                                                                                  addr230:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr268);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr235);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr325);
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                          addr246:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§push(_loc4_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(!(_loc10_ || this))
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr208);
                                                                                                   }
                                                                                                   §§goto(addr218);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr246);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                          }
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             addr321:
                                          }
                                          _loc1_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc10_ || _loc2_)
                                             {
                                                §§push(§§pop());
                                                if(_loc10_ || this)
                                                {
                                                   _loc9_ = §§pop();
                                                   if(_loc10_ || this)
                                                   {
                                                      addr142:
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_)
                                                      {
                                                         addr145:
                                                         _loc4_ = §§pop();
                                                         addr147:
                                                         §§push(_loc9_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  addr329:
                                                                  _loc5_ = false;
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr322);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr294);
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr230);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr321);
               }
               §§goto(addr329);
            }
            §§goto(addr282);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function § !o§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§;N§);
         if(!(_loc10_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(!_loc10_)
            {
               §§push(§0M§);
               if(!(_loc10_ && _loc2_))
               {
                  §§push(_loc7_);
                  if(!_loc10_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || _loc2_)
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr201:
                           }
                        }
                        else
                        {
                           addr193:
                           §§push(1);
                           if(_loc9_ || param1)
                           {
                              §§goto(addr201);
                           }
                        }
                     }
                     else
                     {
                        §§push(§#!`§);
                        if(!_loc10_)
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
                     §§goto(addr207);
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr193);
         }
         addr207:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(this.§>!D§);
                  if(_loc9_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§^!4§(§§pop());
                  if(!(_loc10_ && _loc2_))
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§9K§();
               (_loc4_ = new b2PolygonShape()).§2!C§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§&p§();
               if(_loc9_ || _loc2_)
               {
                  _loc7_ = 0;
                  if(!_loc10_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(!(_loc10_ && _loc2_))
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
                  if(!_loc9_)
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
