package §6!H§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            while(true)
            {
               b2Mat22_identity = b2Mat22.§5U§(new b2Vec2(1,0),new b2Vec2(0,1));
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §&U§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §%!a§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_ || param1)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
               }
               §§goto(addr61);
            }
            §§goto(addr57);
         }
         addr61:
         §§push(param1.y);
         if(_loc4_)
         {
            addr57:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §5!B§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || b2Math)
         {
            §§push(param2.y);
            if(_loc3_)
            {
               §§goto(addr65);
            }
            §§push(§§pop() - §§pop());
         }
         addr65:
         §§push(§§pop() * §§pop());
         if(!(_loc4_ && param2))
         {
            §§push(param1.y);
            if(!_loc4_)
            {
               return §§pop() * param2.x;
            }
         }
      }
      
      public static function §>"§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc5_ && param1))
         {
            §§push(param1.y);
            if(!(_loc5_ && param2))
            {
               §§goto(addr45);
            }
            §§goto(addr48);
         }
         addr45:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(!_loc5_)
         {
            addr48:
            §§push(-§§pop());
            if(!_loc5_)
            {
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §;!G§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc5_ && b2Math))
         {
            §§push(-§§pop());
            if(_loc4_)
            {
               §§push(param2.y);
               if(_loc4_)
               {
                  §§goto(addr43);
               }
               §§goto(addr56);
            }
         }
         addr43:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc4_)
         {
            addr56:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §&W§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc5_)
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr35:
                  §§push(param1.col2.x);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr63:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!_loc4_)
                           {
                              addr68:
                              §§push(param2.x);
                              if(!_loc4_)
                              {
                                 §§goto(addr104);
                              }
                              addr104:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && param2))
                              {
                                 addr80:
                                 §§push(param1.col2.y);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() * param2.y);
                                 }
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr104);
               }
               §§goto(addr63);
            }
            §§goto(addr68);
         }
         §§goto(addr35);
      }
      
      public static function §=!X§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§%!a§(param2,param1.col1),§%!a§(param2,param1.col2));
      }
      
      public static function §=!!§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §&W§(param1.R,param2);
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc4_ || b2Math));
         
         return _loc3_;
      }
      
      public static function §&!h§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §=_§(param2,param1.position);
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(param1.R.col1.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     addr116:
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        addr120:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(!_loc5_)
                     {
                        §§push(param1.R.col2.x);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              addr101:
                              §§push(_loc3_.y);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr95:
                                 §§push(§§pop() * param1.R.col2.y);
                              }
                              §§pop().y = §§pop() + §§pop();
                              continue;
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr120);
            }
            §§goto(addr116);
         }
         §§goto(addr102);
      }
      
      public static function §'w§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_ || param1)
         {
            §§push(param2.x);
            if(!(_loc4_ && param2))
            {
               §§goto(addr47);
            }
            §§goto(addr61);
         }
         addr47:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(_loc5_)
         {
            addr61:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §=_§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_ || b2Math)
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr47);
            }
            §§goto(addr66);
         }
         addr47:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc5_ || param1)
         {
            addr66:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §4!-§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc6_ && b2Math))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc5_ || param2)
         {
            §§push(§§pop() - param2.y);
            if(_loc5_ || b2Math)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function §`l§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() - param2.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_)
         {
            §§push(_loc3_);
            if(!(_loc5_ && b2Math))
            {
               §§goto(addr94);
            }
            §§push(§§pop() + §§pop());
         }
         addr94:
         §§push(§§pop() * §§pop());
         if(!_loc5_)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               return §§pop() * _loc4_;
            }
         }
      }
      
      public static function §[!Z§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_ || b2Math)
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr46);
            }
            §§goto(addr59);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc5_)
         {
            addr59:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §;!J§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§5U§(§'w§(param1.col1,param2.col1),§'w§(param1.col2,param2.col2));
      }
      
      public static function §>! §(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§5U§(§&W§(param1,param2.col1),§&W§(param1,param2.col2));
      }
      
      public static function §98§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§%!a§(param1.col1,param2.col1),§%!a§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§%!a§(param1.col1,param2.col2),§%!a§(param1.col2,param2.col2));
         return b2Mat22.§5U§(_loc3_,_loc4_);
      }
      
      public static function §1T§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || b2Math)
            {
               if(§§pop() > 0)
               {
                  §§goto(addr39);
               }
               else
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr47);
         }
         addr39:
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr47:
            §§push(Number(§§pop()));
            if(_loc3_)
            {
               addr72:
               return Number(§§pop());
            }
         }
         else
         {
            addr54:
            §§push(-§§pop());
            if(_loc2_ || _loc2_)
            {
               §§goto(addr72);
            }
         }
         return §§pop();
      }
      
      public static function §;M§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§1T§(param1.x),§1T§(param1.y));
      }
      
      public static function §'!8§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§5U§(§;M§(param1.col1),§;M§(param1.col2));
      }
      
      public static function §?I§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && b2Math))
         {
            §§push(param1);
            if(_loc3_ || param2)
            {
               if(§§pop() < param2)
               {
                  addr44:
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ || param1))
                     {
                        addr74:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_ || param2)
                  {
                     §§goto(addr74);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public static function §4z§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§?I§(param1.x,param2.x),§?I§(param1.y,param2.y));
      }
      
      public static function §@e§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(!(_loc3_ && param2))
                  {
                     addr43:
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr65:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr65);
                  }
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr35);
      }
      
      public static function §>O§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§@e§(param1.x,param2.x),§@e§(param1.y,param2.y));
      }
      
      public static function §9!%§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc5_ && b2Math))
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc4_ || b2Math))
                              {
                                 addr66:
                                 §§push(Number(§§pop()));
                                 if(_loc4_ || param2)
                                 {
                                    addr74:
                                 }
                              }
                              else
                              {
                                 addr56:
                              }
                           }
                           else
                           {
                              addr60:
                              if(§§pop() > param3)
                              {
                                 addr63:
                                 §§push(param3);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr66);
                                 }
                                 §§goto(addr74);
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc4_ || param1)
                                 {
                                    addr93:
                                    return Number(§§pop());
                                 }
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr63);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§goto(addr60);
                        }
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr56);
         }
         §§goto(addr63);
      }
      
      public static function §7j§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §>O§(param2,§4z§(param1,param3));
      }
      
      public static function §'!b§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(_loc4_ || b2Math)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr72:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
            addr71:
         }
         while(true)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§pop()[§§pop()] = _loc3_;
                  if(!(_loc5_ && param2))
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr71);
            }
            §§goto(addr72);
         }
      }
      
      public static function §"!G§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §^!H§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(!_loc5_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(param1);
               if(!(_loc5_ && b2Math))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     addr46:
                     §§push(_loc3_);
                     if(_loc4_)
                     {
                        addr49:
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || b2Math)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr68);
                  }
                  addr68:
                  §§push(§§pop() + param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        addr74:
                        _loc3_ = §§pop();
                        return _loc3_;
                     }
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr46);
         }
         §§goto(addr74);
      }
      
      public static function §3q§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(2147483647);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop10:
                                          while(_loc3_)
                                          {
                                             §§push(2);
                                             loop11:
                                             for(; !(_loc2_ && _loc2_); if(_loc2_ && b2Math)
                                             {
                                                continue;
                                             },§§push(§§pop() >> §§pop()),if(!_loc2_)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(65535);
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§goto(addr106);
                                                            §§push(§§pop() & §§pop());
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr179);
                                             },§§goto(addr106))
                                             {
                                                §§push(§§pop() >> §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   loop13:
                                                   while(_loc3_)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      while(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         loop15:
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr255:
                                                               addr162:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr200:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr201:
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           addr203:
                                                                           while(true)
                                                                           {
                                                                              §§push(268435455);
                                                                              addr204:
                                                                              while(!(_loc2_ && param1))
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    addr213:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       addr214:
                                                                                       while(!_loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          param1 = §§pop();
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr46:
                                                                                    if(!(_loc2_ && param1))
                                                                                    {
                                                                                       return §§pop() + §§pop();
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               loop27:
                                                               while(!(_loc2_ && param1))
                                                               {
                                                                  §§push(param1);
                                                                  loop28:
                                                                  while(_loc3_ || b2Math)
                                                                  {
                                                                     §§push(8);
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() >> §§pop());
                                                                        addr179:
                                                                        while(true)
                                                                        {
                                                                           §§push(16777215);
                                                                           addr180:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() | §§pop());
                                                                                 addr182:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§push(uint(§§pop()));
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       addr188:
                                                                                       while(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop34;
                                                                                                }
                                                                                                §§push(param1);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                if(!(_loc3_ || param1))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(16);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§goto(addr202);
                                                                                                addr29:
                                                                                                if(_loc2_ && _loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                addr38:
                                                                                                §§push(1);
                                                                                                if(!(_loc2_ && param1))
                                                                                                {
                                                                                                   §§goto(addr46);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr106:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_ && b2Math)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                      §§goto(addr38);
                                                                                                   }
                                                                                                   §§goto(addr203);
                                                                                                   addr106:
                                                                                                }
                                                                                                §§goto(addr212);
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§goto(addr255);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr213);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             continue loop2;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               param1 = §§pop();
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr159);
                  }
                  while(true)
                  {
                     §§goto(addr162);
                  }
                  addr219:
               }
               §§goto(addr188);
            }
         }
         §§goto(addr219);
      }
      
      public static function §`9§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() > 0);
               if(_loc4_ || b2Math)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || b2Math)
                     {
                        §§pop();
                        addr52:
                        addr51:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr70);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr70:
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr51);
      }
   }
}
