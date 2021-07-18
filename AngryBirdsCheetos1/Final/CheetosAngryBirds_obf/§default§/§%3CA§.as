package §default§
{
   import § !G§.§ #§;
   import §&U§.b2CircleShape;
   import §&U§.b2PolygonShape;
   import §&U§.b2Shape;
   import §0!G§.b2Vec2;
   
   public class §<A§
   {
      
      public static const §5!R§:int = 0;
      
      public static const §+6§:int = 1;
      
      public static const §=H§:int = 2;
      
      public static const §?b§:int = 3;
      
      public static const §4!S§:int = 4;
      
      public static const §%E§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!R§ = 0;
            loop0:
            while(true)
            {
               §+6§ = 1;
               loop1:
               while(true)
               {
                  §=H§ = 2;
                  loop2:
                  while(true)
                  {
                     §?b§ = 3;
                     loop3:
                     while(_loc1_)
                     {
                        §4!S§ = 4;
                        while(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              §%E§ = 5;
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                 }
                                 continue loop3;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public var mName:String;
      
      public var § !+§:int;
      
      public var §^!I§:Number;
      
      public var §,!X§:Number;
      
      public var §2F§:Number;
      
      public var §5T§:Array = null;
      
      public function §<A§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§ !+§ = this.§@!§(param2);
                  while(true)
                  {
                     this.§^!I§ = param3;
                     §§goto(addr78);
                  }
               }
            }
         }
         addr78:
         while(true)
         {
            this.§,!X§ = param4;
            do
            {
               this.§2F§ = param5;
            }
            while(_loc6_ && param2);
            
            if(!(_loc6_ && param1))
            {
               if(!_loc6_)
               {
                  continue loop1;
               }
               continue loop2;
            }
         }
         addr68:
      }
      
      public function §<!"§() : int
      {
         return this.§ !+§;
      }
      
      public function §"@§() : Number
      {
         return this.§^!I§;
      }
      
      public function §,7§() : int
      {
         return this.§,!X§;
      }
      
      private function §@!§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != "Rectangle"; loop2:
            while(true)
            {
               if(!(_loc2_ || param1))
               {
                  continue loop0;
               }
               if(§§pop() == "CIRCLE")
               {
                  break;
               }
               loop3:
               while(true)
               {
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     if(§§pop() != "POLYGON")
                     {
                        loop5:
                        while(true)
                        {
                           §§push(param1);
                           loop6:
                           while(!_loc3_)
                           {
                              if(§§pop() != "Image_Rectangle")
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop8:
                                    while(§§pop() != "Image_Polygon")
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc2_)
                                          {
                                             if(_loc3_ && this)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop() == "Image_Circle")
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(§=H§);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr35);
                                                   }
                                                }
                                                §§goto(addr97);
                                             }
                                             addr35:
                                          }
                                          continue loop8;
                                          while(true)
                                          {
                                             §§push(§ #§);
                                             §§push("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName);
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(§§pop() + " invalid name = ");
                                                if(!_loc3_)
                                                {
                                                   addr52:
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().log(§§pop());
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr52);
                                          }
                                          if(_loc2_)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue loop5;
                                             }
                                             §§push(§?b§);
                                             if(_loc3_)
                                             {
                                                addr97:
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr110:
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr180:
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             if(!(_loc2_ || this))
                                             {
                                                §§goto(addr134);
                                             }
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop7;
                                             }
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             addr147:
                                             if(!_loc2_)
                                             {
                                                break loop0;
                                             }
                                             return §%E§;
                                          }
                                          return §§pop();
                                       }
                                       return §§pop();
                                    }
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr110);
                                          §§push(§+6§);
                                       }
                                       else
                                       {
                                          §§goto(addr152);
                                       }
                                    }
                                 }
                              }
                              if(!(_loc2_ || param1))
                              {
                                 continue loop3;
                              }
                              addr134:
                              return §§pop();
                              §§push(§5!R§);
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr147);
                  }
               }
            },§§goto(addr174))
            {
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
            §§goto(addr180);
            §§push(§?b§);
         }
         §§goto(addr66);
      }
      
      public function §1,§() : Array
      {
         return this.§5T§;
      }
      
      public function §?!B§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5T§ = param1;
         }
      }
      
      public function §]!'§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§%!8§();
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
            §§pop().§^!I§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§,!X§ = §§pop();
            }
            while(!(_loc4_ || _loc1_));
            
         }
      }
      
      public function §%!8§() : Array
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
         for each(_loc6_ in this.§5T§)
         {
            if(_loc10_)
            {
               §§push(_loc5_);
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc6_.x);
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(!_loc11_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_ || _loc3_)
                                       {
                                          addr83:
                                          if(!(_loc11_ && _loc1_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                _loc1_ = §§pop();
                                                if(!(_loc11_ && this))
                                                {
                                                   §§push(_loc6_.y);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc11_ && _loc1_))
                                                            {
                                                               addr135:
                                                               _loc4_ = §§pop();
                                                               addr137:
                                                               §§push(_loc9_);
                                                               if(!_loc11_)
                                                               {
                                                                  addr140:
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     addr158:
                                                                     _loc2_ = §§pop();
                                                                     if(_loc10_)
                                                                     {
                                                                        addr289:
                                                                        _loc5_ = false;
                                                                     }
                                                                     else
                                                                     {
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    addr282:
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.x);
                                                                                             addr285:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr286:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   addr287:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr283:
                                                                                       }
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.x);
                                                                                          addr252:
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ || _loc1_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      break loop12;
                                                                                                   }
                                                                                                   addr261:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                                addr260:
                                                                                             }
                                                                                             §§goto(addr286);
                                                                                          }
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               addr244:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr245:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr246:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                           addr290:
                                                                                                                        }
                                                                                                                        addr248:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr242:
                                                                                                         }
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.y);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        if(!(_loc11_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc11_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr195:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(!(_loc11_ && this))
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr212:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         break loop8;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr244);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr211:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                }
                                                                                                                                                addr275:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr212);
                                                                                                                                       }
                                                                                                                                       addr195:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr283);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr242);
                                                                                                                              }
                                                                                                                              §§goto(addr244);
                                                                                                                           }
                                                                                                                           §§goto(addr246);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              addr222:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr260);
                                                                                                                     }
                                                                                                                     §§goto(addr261);
                                                                                                                  }
                                                                                                                  addr169:
                                                                                                               }
                                                                                                               §§goto(addr245);
                                                                                                            }
                                                                                                            §§goto(addr212);
                                                                                                            §§goto(addr248);
                                                                                                         }
                                                                                                         _loc4_ = §§pop();
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§goto(addr285);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr281:
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr195);
                                             }
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr282);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr222);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr281);
               }
               §§goto(addr289);
            }
            §§goto(addr195);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §!H§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§ !+§);
         if(!_loc10_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc10_ && _loc2_))
            {
               §§push(§4!S§);
               if(!(_loc10_ && this))
               {
                  §§push(_loc7_);
                  if(_loc9_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc10_)
                        {
                           addr169:
                           §§push(0);
                           if(!_loc9_)
                           {
                           }
                        }
                        else
                        {
                           addr178:
                           §§push(1);
                           if(!_loc10_)
                           {
                              addr191:
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
                                 §§push(this.§^!I§);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§%!4§(§§pop());
                                 if(!_loc9_)
                                 {
                                    addr56:
                                    _loc3_ = this.§1,§();
                                    (_loc4_ = new b2PolygonShape()).§[U§(_loc3_,_loc3_.length);
                                    _loc5_ = _loc4_.§;D§();
                                    if(!(_loc10_ && param1))
                                    {
                                       _loc7_ = 0;
                                       if(!_loc10_)
                                       {
                                          for each(_loc6_ in _loc5_)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc6_.x);
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().x = §§pop();
                                             if(_loc9_)
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc6_.y);
                                                if(!_loc10_)
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
                                    break;
                                 }
                              }
                              return _loc2_;
                           case 1:
                              §§goto(addr56);
                        }
                        return null;
                        addr196:
                     }
                     else
                     {
                        §§push(§%E§);
                        if(_loc9_)
                        {
                           §§push(_loc7_);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr191);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr178);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr196);
               }
               §§goto(addr191);
            }
            §§goto(addr169);
         }
         §§goto(addr197);
      }
   }
}
