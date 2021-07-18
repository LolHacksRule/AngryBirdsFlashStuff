package §@0§
{
   import §6A§.b2Vec2;
   import §7q§.b2CircleShape;
   import §7q§.b2PolygonShape;
   import §7q§.b2Shape;
   import §@R§.§4,§;
   
   public class §3U§
   {
      
      public static const §1E§:int = 0;
      
      public static const §!!9§:int = 1;
      
      public static const §2o§:int = 2;
      
      public static const §1!7§:int = 3;
      
      public static const §=P§:int = 4;
      
      public static const §?t§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1E§ = 0;
            loop0:
            while(true)
            {
               §!!9§ = 1;
               while(true)
               {
                  §2o§ = 2;
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     §1!7§ = 3;
                     while(true)
                     {
                        §=P§ = 4;
                        while(_loc1_)
                        {
                           §?t§ = 5;
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr48);
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public var mName:String;
      
      public var §&!>§:int;
      
      public var §@!-§:Number;
      
      public var §3S§:Number;
      
      public var §7a§:Number;
      
      public var §1@§:Array = null;
      
      public function §3U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§&!>§ = this.§"!+§(param2);
                  while(true)
                  {
                     this.§@!-§ = param3;
                     loop3:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           this.§3S§ = param4;
                           do
                           {
                              this.§7a§ = param5;
                           }
                           while(!(_loc7_ || param1));
                           
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §7!P§() : int
      {
         return this.§&!>§;
      }
      
      public function §[3§() : Number
      {
         return this.§@!-§;
      }
      
      public function § !7§() : int
      {
         return this.§3S§;
      }
      
      private function §"!+§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
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
                     if(§§pop() == "CIRCLE")
                     {
                        if(!_loc2_)
                        {
                           §§push(§=P§);
                           break;
                        }
                        while(true)
                        {
                           addr184:
                           if(!(_loc2_ && param1))
                           {
                              addr192:
                              §§push(§?t§);
                              if(_loc3_ || this)
                              {
                                 return §§pop();
                              }
                              break loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(param1);
                        loop5:
                        for(; _loc3_; loop7:
                        while(_loc3_ || _loc3_)
                        {
                           if(_loc2_ && this)
                           {
                              continue loop2;
                           }
                           if(§§pop() != "Image_Rectangle")
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(param1);
                                 loop9:
                                 while(_loc3_)
                                 {
                                    if(§§pop() != "Image_Polygon")
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc3_)
                                          {
                                             if(§§pop() == "Image_Circle")
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   while(!(_loc2_ && this))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr173:
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr176);
                                                         }
                                                         break loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§pop().log(§§pop());
                                                      if(_loc3_ || param1)
                                                      {
                                                         break loop8;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc2_ && this)
                                                {
                                                   §§goto(addr145);
                                                }
                                                §§push(§2o§);
                                                if(!(_loc2_ && this))
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr192);
                                             }
                                             break;
                                          }
                                          continue loop9;
                                       }
                                       while(true)
                                       {
                                          §§push(§4,§);
                                          §§push("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(§§pop() + " invalid name = ");
                                             if(!_loc2_)
                                             {
                                                addr68:
                                                §§push(§§pop() + param1);
                                             }
                                             §§goto(addr70);
                                          }
                                          §§goto(addr68);
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 continue loop7;
                              }
                              if(!_loc2_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§1!7§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr176:
                                          return §1E§;
                                       }
                                       addr145:
                                       §§push(§!!9§);
                                       if(_loc3_ || this)
                                       {
                                          return §§pop();
                                       }
                                       addr231:
                                       return §§pop();
                                    }
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    §§goto(addr184);
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr207);
                              }
                           }
                           §§goto(addr173);
                        })
                        {
                           if(§§pop() == "POLYGON")
                           {
                              §§goto(addr184);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 continue loop5;
                                 addr207:
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr231);
            §§push(§1!7§);
         }
         §§goto(addr138);
      }
      
      public function §^!;§() : Array
      {
         return this.§1@§;
      }
      
      public function §[!X§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1@§ = param1;
         }
      }
      
      public function §^q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§6p§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§@!-§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§3S§ = §§pop();
            }
            while(!_loc4_);
            
         }
      }
      
      public function §6p§() : Array
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
         for each(_loc6_ in this.§1@§)
         {
            if(_loc10_ || this)
            {
               §§push(_loc5_);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || _loc2_)
                     {
                        §§push(_loc6_.x);
                        if(!(_loc11_ && _loc3_))
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc10_ || this)
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_)
                                       {
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc11_ && _loc1_))
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   addr112:
                                                   §§push(_loc6_.y);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            addr127:
                                                            §§push(Number(§§pop()));
                                                            if(_loc11_ && _loc1_)
                                                            {
                                                            }
                                                            addr137:
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr145:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     addr314:
                                                                     _loc5_ = false;
                                                                  }
                                                                  else
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        addr266:
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(§§pop() <= §§pop())
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§push(_loc6_.y);
                                                                                                         if(!(_loc11_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr199:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc10_ || this))
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     addr211:
                                                                                                                     if(!(_loc11_ && this))
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           loop11:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              if(_loc10_ || _loc1_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    addr235:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc11_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ || this))
                                                                                                                                                   {
                                                                                                                                                      break loop15;
                                                                                                                                                   }
                                                                                                                                                   addr315:
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          addr305:
                                                                                                                                          addr305:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                addr306:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr311:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         addr312:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr311:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr311);
                                                                                                                                                }
                                                                                                                                                addr306:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                addr286:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   addr287:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr287);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr234:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr291:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    addr292:
                                                                                                                                    while(!(_loc11_ && this))
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    §§goto(addr312);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr306);
                                                                                                                     }
                                                                                                                     §§goto(addr288);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr304:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr305);
                                                                                                                     }
                                                                                                                     addr304:
                                                                                                                  }
                                                                                                                  §§goto(addr305);
                                                                                                               }
                                                                                                               §§goto(addr291);
                                                                                                            }
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         §§goto(addr199);
                                                                                                      }
                                                                                                      §§goto(addr211);
                                                                                                   }
                                                                                                   §§goto(addr235);
                                                                                                }
                                                                                                §§goto(addr199);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr282:
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                 }
                                                                                 addr274:
                                                                              }
                                                                              §§goto(addr311);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         _loc4_ = §§pop();
                                                         addr136:
                                                         §§goto(addr137);
                                                         §§push(_loc9_);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr306);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr266);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr305);
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr282);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr304);
               }
               §§goto(addr314);
            }
            §§goto(addr112);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §7!O§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§&!>§);
         if(_loc10_ || this)
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && _loc2_))
            {
               §§push(§=P§);
               if(_loc10_)
               {
                  §§push(_loc7_);
                  if(!_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              addr173:
                           }
                           else
                           {
                              addr197:
                           }
                        }
                        else
                        {
                           addr179:
                           §§push(1);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§goto(addr197);
                           }
                        }
                     }
                     else
                     {
                        §§push(§?t§);
                        if(!_loc9_)
                        {
                           addr178:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr179);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr178);
               }
               §§goto(addr173);
            }
            §§goto(addr179);
         }
         addr203:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc10_ || _loc2_)
               {
                  §§push(_loc2_);
                  §§push(this.§@!-§);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§6!!§(§§pop());
                  if(!_loc9_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§^!;§();
               (_loc4_ = new b2PolygonShape()).§-!e§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§<Q§();
               if(_loc10_)
               {
                  _loc7_ = 0;
                  if(_loc10_ || _loc2_)
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
                        if(!_loc9_)
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
                  if(!(_loc9_ && param1))
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
