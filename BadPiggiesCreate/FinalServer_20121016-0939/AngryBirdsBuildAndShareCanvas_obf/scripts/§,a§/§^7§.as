package §,a§
{
   import §"!9§.b2CircleShape;
   import §"!9§.b2PolygonShape;
   import §"!9§.b2Shape;
   import §2"=§.b2Vec2;
   import §=!M§.§9!P§;
   
   public class §^7§
   {
      
      public static const §6!l§:int = 0;
      
      public static const §0S§:int = 1;
      
      public static const §2!M§:int = 2;
      
      public static const §8K§:int = 3;
      
      public static const §+!h§:int = 4;
      
      public static const §<!g§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!l§ = 0;
            while(true)
            {
               §0S§ = 1;
            }
            addr91:
         }
         loop1:
         while(true)
         {
            §2!M§ = 2;
            loop2:
            while(true)
            {
               if(!_loc1_)
               {
                  continue loop1;
               }
               §8K§ = 3;
               loop3:
               while(_loc1_)
               {
                  §+!h§ = 4;
                  while(true)
                  {
                     if(_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop3;
                     addr58:
                     §<!g§ = 5;
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                  }
                  continue loop2;
               }
               §§goto(addr91);
            }
         }
      }
      
      public var mName:String;
      
      public var §#z§:int;
      
      public var §7!T§:Number;
      
      public var §>w§:Number;
      
      public var §=",§:Number;
      
      public var §=!@§:Array = null;
      
      public function §^7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mName = param1;
            loop1:
            while(true)
            {
               this.§#z§ = this.§'!?§(param2);
               while(true)
               {
                  this.§7!T§ = param3;
                  while(!_loc7_)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           this.§>w§ = param4;
                           do
                           {
                              this.§=",§ = param5;
                           }
                           while(_loc7_);
                           
                           if(_loc6_)
                           {
                              return;
                           }
                           continue;
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
      
      public function §7!U§() : int
      {
         return this.§#z§;
      }
      
      public function §=y§() : Number
      {
         return this.§7!T§;
      }
      
      public function §-p§() : int
      {
         return this.§>w§;
      }
      
      private function §'!?§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            for(; §§pop() != "Rectangle"; loop2:
            while(true)
            {
               if(_loc2_ && this)
               {
                  continue loop0;
               }
               if(§§pop() != "CIRCLE")
               {
                  loop3:
                  while(true)
                  {
                     §§push(param1);
                     loop4:
                     while(_loc3_)
                     {
                        if(§§pop() != "POLYGON")
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(§§pop() != "Image_Rectangle")
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param1);
                                    while(_loc3_)
                                    {
                                       if(§§pop() != "Image_Polygon")
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(_loc2_ && _loc3_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop() == "Image_Circle")
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr106:
                                                         §§push(§2!M§);
                                                         if(!_loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr124:
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr157:
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§<!g§);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr206:
                                                         return §§pop();
                                                      }
                                                      break loop2;
                                                   }
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                else
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         addr123:
                                                         §§push(§0S§);
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§9!P§);
                                                         §§push("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop() + " invalid name = ");
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               addr61:
                                                               §§push(§§pop() + param1);
                                                            }
                                                            §§pop().log(§§pop());
                                                            if(!_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               continue loop5;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break loop6;
                                                            }
                                                            §§push(§8K§);
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr142);
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         §§goto(addr61);
                                                      }
                                                   }
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr39);
                                          }
                                          continue;
                                       }
                                       §§goto(addr123);
                                    }
                                    continue loop6;
                                 }
                              }
                              if(!_loc3_)
                              {
                                 addr199:
                                 §§push(§+!h§);
                                 break loop2;
                              }
                              addr142:
                              return §§pop();
                              §§push(§6!l§);
                           }
                        }
                        §§goto(addr157);
                     }
                     continue loop2;
                  }
               }
               §§goto(addr199);
            },return §§pop())
            {
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
            §§goto(addr206);
            §§push(§8K§);
         }
         §§goto(addr150);
      }
      
      public function §#!g§() : Array
      {
         return this.§=!@§;
      }
      
      public function §"!m§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!@§ = param1;
         }
      }
      
      public function §%!f§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§]!&§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc4_ || _loc3_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§7!T§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(!_loc5_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§>w§ = §§pop();
         }
         while(_loc5_ && _loc3_);
         
      }
      
      public function §]!&§() : Array
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
         for each(_loc6_ in this.§=!@§)
         {
            if(!(_loc10_ && _loc1_))
            {
               §§push(_loc5_);
               if(_loc11_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc6_.x);
                        if(!(_loc10_ && _loc1_))
                        {
                           §§push(§§pop());
                           if(_loc11_ || _loc1_)
                           {
                              var _loc9_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc10_)
                                       {
                                          addr99:
                                          if(_loc11_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc10_)
                                             {
                                                addr105:
                                                _loc1_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   addr108:
                                                   §§push(_loc6_.y);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc10_)
                                                            {
                                                               addr131:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(_loc11_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc11_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  addr290:
                                                                  _loc5_ = false;
                                                                  addr291:
                                                                  continue;
                                                                  addr291:
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            else
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!(_loc10_ && _loc1_))
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(_loc6_.y);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ && _loc1_))
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(!(_loc10_ && _loc1_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            addr224:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           loop10:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          addr242:
                                                                                                                                          loop14:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                break loop10;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr143:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr240:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop3:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       addr288:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop5:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                             if(_loc11_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr283:
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                while(_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr276:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  break loop10;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr275:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr291);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break loop10;
                                                                                                                                                   }
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      addr286:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr261:
                                                                                                                                                addr283:
                                                                                                                                             }
                                                                                                                                             §§goto(addr276);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr275);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                              §§goto(addr242);
                                                                                                                           }
                                                                                                                           addr236:
                                                                                                                        }
                                                                                                                        §§goto(addr288);
                                                                                                                     }
                                                                                                                     addr232:
                                                                                                                  }
                                                                                                                  §§goto(addr143);
                                                                                                               }
                                                                                                               §§goto(addr261);
                                                                                                            }
                                                                                                         }
                                                                                                         addr223:
                                                                                                      }
                                                                                                      §§goto(addr236);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             addr204:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr283);
                                                                                             }
                                                                                             addr282:
                                                                                          }
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       addr196:
                                                                                    }
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr249);
                                             }
                                          }
                                          §§goto(addr223);
                                       }
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr291);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr282);
               }
               §§goto(addr290);
            }
            §§goto(addr108);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §#!o§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§#z§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc10_ || param1)
            {
               §§push(§+!h§);
               if(_loc10_ || this)
               {
                  §§push(_loc7_);
                  if(_loc10_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_)
                        {
                           addr185:
                           §§push(0);
                           if(_loc9_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr204:
                           §§push(1);
                           if(_loc10_ || _loc3_)
                           {
                              addr222:
                           }
                        }
                        addr228:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = new b2CircleShape();
                              if(_loc10_)
                              {
                                 §§push(_loc2_);
                                 §§push(this.§7!T§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§7s§(§§pop());
                                 if(_loc10_)
                                 {
                                    return _loc2_;
                                 }
                              }
                           case 1:
                              _loc3_ = this.§#!g§();
                              (_loc4_ = new b2PolygonShape()).§7o§(_loc3_,_loc3_.length);
                              _loc5_ = _loc4_.§-"=§();
                              if(_loc10_ || _loc3_)
                              {
                                 _loc7_ = 0;
                                 if(_loc10_)
                                 {
                                    for each(_loc6_ in _loc5_)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.x);
                                       if(_loc10_ || _loc3_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().x = §§pop();
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(_loc6_);
                                          §§push(_loc6_.y);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                    }
                                 }
                                 if(!(_loc9_ && this))
                                 {
                                    return _loc4_;
                                 }
                                 break;
                              }
                        }
                        return null;
                        addr227:
                     }
                     else
                     {
                        §§push(§<!g§);
                        if(!(_loc9_ && _loc3_))
                        {
                           addr203:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr204);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr227);
                        }
                     }
                     §§goto(addr222);
                  }
               }
               §§goto(addr203);
            }
            §§goto(addr185);
         }
         §§goto(addr228);
      }
   }
}
