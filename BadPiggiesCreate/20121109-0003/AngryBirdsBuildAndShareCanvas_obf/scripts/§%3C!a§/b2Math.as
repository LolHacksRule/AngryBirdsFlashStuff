package §<!a§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
         }
         while(true)
         {
            b2Mat22_identity = b2Mat22.§2!x§(new b2Vec2(1,0),new b2Vec2(0,1));
            while(_loc1_)
            {
               b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §7S§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §8n§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!(_loc4_ && param2))
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§goto(addr60);
            }
            §§push(§§pop() + §§pop());
         }
         addr60:
         §§push(§§pop() * §§pop());
         if(_loc3_)
         {
            §§push(param1.y);
            if(_loc3_)
            {
               return §§pop() * param2.y;
            }
         }
      }
      
      public static function §9!r§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_ || _loc3_)
         {
            §§push(param2.y);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr53:
                  §§push(param1.y);
                  if(_loc4_)
                  {
                     addr57:
                     §§push(§§pop() * param2.x);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      public static function §>O§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc5_ || _loc3_)
         {
            §§push(param1.y);
            if(_loc5_ || param2)
            {
               §§goto(addr46);
            }
            §§goto(addr67);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(_loc5_ || _loc3_)
         {
            §§push(-§§pop());
            if(!_loc4_)
            {
               addr67:
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §!!R§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(_loc4_)
            {
               §§push(param2.y);
               if(_loc4_ || param1)
               {
                  §§goto(addr43);
               }
               §§goto(addr61);
            }
         }
         addr43:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            addr61:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §<!G§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param2)
               {
                  §§push(param1.col2.x);
                  if(!_loc5_)
                  {
                     §§push(param2.y);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc3_)
                        {
                           addr72:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!_loc5_)
                           {
                              §§push(param2.x);
                              if(!_loc5_)
                              {
                                 addr81:
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ && param2)
                                 {
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr104);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr108);
               }
               §§goto(addr72);
            }
            addr108:
            §§push(param1.col2.y);
            if(_loc4_)
            {
               addr104:
               §§push(§§pop() * param2.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
         }
         §§goto(addr72);
      }
      
      public static function §#"-§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§8n§(param2,param1.col1),§8n§(param2,param1.col2));
      }
      
      public static function §#!K§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §<!G§(param1.R,param2);
         if(!_loc5_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc4_ || b2Math)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc4_ || param1));
            
         }
         return _loc3_;
      }
      
      public static function §"!O§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = § !r§(param2,param1.position);
         if(!(_loc6_ && param2))
         {
            §§push(_loc3_.x);
            if(!(_loc6_ && param1))
            {
               §§push(param1.R.col1.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || param2)
                  {
                     addr130:
                     §§push(_loc3_.y);
                     if(!(_loc6_ && param1))
                     {
                        addr139:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc5_ || param2)
                     {
                        §§push(param1.R.col2.x);
                        if(_loc5_ || param2)
                        {
                           addr103:
                           §§push(§§pop() * §§pop());
                           if(_loc5_ || param2)
                           {
                              §§push(_loc3_.y);
                              if(_loc5_)
                              {
                                 §§push(§§pop() * param1.R.col2.y);
                              }
                           }
                           §§pop().y = §§pop();
                           while(!_loc6_)
                           {
                              _loc3_.x = _loc4_;
                              if(_loc5_ || b2Math)
                              {
                                 return _loc3_;
                              }
                           }
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr103);
                  }
                  addr159:
               }
               §§goto(addr139);
            }
            §§goto(addr130);
         }
         §§goto(addr159);
      }
      
      public static function §'!c§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_ || param1)
         {
            §§push(param2.x);
            if(_loc5_ || param2)
            {
               addr47:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      public static function § !r§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               §§goto(addr41);
            }
            §§goto(addr60);
         }
         addr41:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc4_ || param2)
         {
            addr60:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §0?§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc5_ && param2))
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(_loc6_ || param1)
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            }
            §§goto(addr62);
         }
         §§goto(addr46);
      }
      
      public static function §,!8§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(_loc5_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc5_ || param1)
            {
               §§push(§§pop() - param2.y);
               if(!_loc6_)
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§goto(addr88);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr88:
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param2))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     return §§pop() * _loc4_;
                  }
               }
            }
            §§goto(addr56);
         }
         §§goto(addr30);
      }
      
      public static function §2!z§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               addr35:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr35);
      }
      
      public static function §`%§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§2!x§(§'!c§(param1.col1,param2.col1),§'!c§(param1.col2,param2.col2));
      }
      
      public static function §8_§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§2!x§(§<!G§(param1,param2.col1),§<!G§(param1,param2.col2));
      }
      
      public static function §^",§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§8n§(param1.col1,param2.col1),§8n§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§8n§(param1.col1,param2.col2),§8n§(param1.col2,param2.col2));
         return b2Mat22.§2!x§(_loc3_,_loc4_);
      }
      
      public static function §1!`§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || b2Math)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > 0)
               {
                  addr39:
                  §§push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc2_)
                     {
                        addr69:
                        §§push(-§§pop());
                        if(_loc2_)
                        {
                           addr72:
                           return Number(§§pop());
                        }
                     }
                     else
                     {
                        addr50:
                     }
                     return §§pop();
                  }
                  §§goto(addr50);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr69);
         }
         §§goto(addr39);
      }
      
      public static function §@!X§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§1!`§(param1.x),§1!`§(param1.y));
      }
      
      public static function §^";§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§2!x§(§@!X§(param1.col1),§@!X§(param1.col2));
      }
      
      public static function §+"1§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               if(§§pop() < param2)
               {
                  addr40:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                        addr60:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr60);
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§goto(addr60);
                  }
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr40);
      }
      
      public static function §#!N§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§+"1§(param1.x,param2.x),§+"1§(param1.y,param2.y));
      }
      
      public static function §8!c§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr64:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_ || param1)
                  {
                     §§goto(addr64);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr39);
      }
      
      public static function §0" §(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§8!c§(param1.x,param2.x),§8!c§(param1.y,param2.y));
      }
      
      public static function §5" §(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_ || b2Math)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(param2);
                           if(_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 addr85:
                                 return §§pop();
                                 addr80:
                              }
                              §§goto(addr85);
                           }
                        }
                        else
                        {
                           addr59:
                           §§push(param3);
                           if(_loc5_)
                           {
                              addr62:
                              §§push(Number(§§pop()));
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr80);
                              }
                              else
                              {
                                 addr84:
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                        §§goto(addr85);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           addr58:
                           if(§§pop() > param3)
                           {
                              §§goto(addr59);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§goto(addr84);
                              }
                           }
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr62);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr85);
         }
         §§goto(addr59);
      }
      
      public static function §+"5§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §0" §(param2,§#!N§(param1,param3));
      }
      
      public static function §%!Y§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr68:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
         }
      }
      
      public static function §"!+§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(!(_loc1_ && b2Math))
         {
            return §§pop() - 1;
         }
      }
      
      public static function §[c§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr54:
                           §§push(§§pop() + param1);
                           if(_loc5_)
                           {
                              addr57:
                              §§push(Number(§§pop()));
                              if(_loc4_ && b2Math)
                              {
                              }
                           }
                           §§goto(addr77);
                        }
                        _loc3_ = §§pop();
                        addr76:
                        addr77:
                        return §§pop();
                        §§push(_loc3_);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr57);
               }
               §§goto(addr54);
            }
            §§goto(addr57);
         }
         §§goto(addr76);
      }
      
      public static function §7!4§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     while(true)
                     {
                        §§push(2147483647);
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param1);
                                          addr242:
                                          while(true)
                                          {
                                             §§push(2);
                                             addr243:
                                             while(_loc3_)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   addr247:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      addr248:
                                                      while(!_loc2_)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         while(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(uint(§§pop()));
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr260:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  continue loop0;
                                                               }
                                                            }
                                                            while(_loc3_ || b2Math)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      public static function §&""§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               §§push(§§pop() > 0);
               if(!(_loc3_ && b2Math))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§pop();
                        addr62:
                        addr61:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc4_ || b2Math)
                        {
                        }
                        §§goto(addr85);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr85:
               return §§pop();
            }
            §§goto(addr62);
         }
         §§goto(addr61);
      }
   }
}
