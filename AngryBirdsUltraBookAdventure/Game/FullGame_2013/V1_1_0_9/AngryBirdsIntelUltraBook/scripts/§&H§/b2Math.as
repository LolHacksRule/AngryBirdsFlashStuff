package §&H§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
         }
         do
         {
            b2Mat22_identity = b2Mat22.§,A§(new b2Vec2(1,0),new b2Vec2(0,1));
            do
            {
               b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(_loc2_);
         
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §-!<§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §#D§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && param2))
         {
            §§push(param2.x);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc3_)
               {
               }
               §§goto(addr71);
            }
            §§goto(addr67);
         }
         addr71:
         §§push(param1.y);
         if(!_loc3_)
         {
            addr67:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §'!e§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || b2Math)
         {
            §§push(param2.y);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
               {
                  addr47:
                  §§push(param1.y);
                  if(_loc3_)
                  {
                     addr54:
                     §§push(§§pop() - §§pop() * param2.x);
                  }
                  §§goto(addr54);
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr47);
      }
      
      public static function §66§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc5_)
         {
            §§push(param1.y);
            if(_loc5_ || param2)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(_loc5_)
         {
            addr44:
            §§push(-§§pop());
            if(!_loc4_)
            {
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §<G§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(param2.y);
               if(!_loc4_)
               {
                  §§goto(addr44);
               }
               §§goto(addr47);
            }
         }
         addr44:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc5_)
         {
            addr47:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §[!%§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  addr30:
                  §§push(param1.col2.x);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && b2Math))
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc5_ || _loc3_)
                           {
                              addr83:
                              §§push(param2.x);
                              if(!_loc4_)
                              {
                                 §§goto(addr104);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr83);
                     }
                     addr104:
                     §§push(§§pop() * §§pop());
                     if(_loc5_)
                     {
                        addr90:
                        §§push(param1.col2.y);
                        if(_loc5_ || b2Math)
                        {
                           §§push(§§pop() * param2.y);
                        }
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr90);
         }
         §§goto(addr30);
      }
      
      public static function §0!&§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§#D§(param2,param1.col1),§#D§(param2,param1.col2));
      }
      
      public static function §%!r§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §[!%§(param1.R,param2);
         if(_loc5_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc5_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(_loc5_)
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(!_loc5_);
         
         return _loc3_;
      }
      
      public static function §5T§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = §%M§(param2,param1.position);
         if(_loc6_)
         {
            §§push(_loc3_.x);
            if(_loc6_ || param1)
            {
               §§push(param1.R.col1.x);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && param2))
                  {
                     §§push(_loc3_.y);
                     if(_loc6_)
                     {
                        addr135:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        addr144:
                        _loc4_ = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc6_)
                           {
                              §§push(param1.R.col2.x);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr79:
                                    §§push(_loc3_.y);
                                    if(!(_loc5_ && b2Math))
                                    {
                                       addr93:
                                       §§push(§§pop() + §§pop() * param1.R.col2.y);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§pop().y = §§pop();
                                 do
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 while(_loc3_.x = _loc4_, _loc5_ && _loc3_);
                                 
                                 return _loc3_;
                                 addr48:
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr79);
                        }
                     }
                  }
                  §§goto(addr144);
               }
               §§goto(addr135);
            }
            §§goto(addr144);
         }
         §§goto(addr48);
      }
      
      public static function §`v§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               addr37:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(_loc5_)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      public static function §%M§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc5_ && b2Math))
         {
            §§push(param2.x);
            if(!(_loc5_ && param2))
            {
               §§goto(addr56);
            }
            §§goto(addr65);
         }
         addr56:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(!(_loc5_ && param2))
         {
            addr65:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §65§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_ || param2)
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc6_)
            {
               §§push(§§pop() - param2.y);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr50);
      }
      
      public static function § §(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc5_)
         {
            §§push(§§pop() - param2.y);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§goto(addr78);
            }
            §§push(§§pop() + §§pop());
         }
         addr78:
         §§push(§§pop() * §§pop());
         if(_loc5_ || _loc3_)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               return §§pop() * _loc4_;
            }
         }
      }
      
      public static function §'§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§goto(addr36);
            }
            §§goto(addr39);
         }
         addr36:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc5_)
         {
            addr39:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §0!s§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§,A§(§`v§(param1.col1,param2.col1),§`v§(param1.col2,param2.col2));
      }
      
      public static function §@!N§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§,A§(§[!%§(param1,param2.col1),§[!%§(param1,param2.col2));
      }
      
      public static function §7!,§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§#D§(param1.col1,param2.col1),§#D§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§#D§(param1.col1,param2.col2),§#D§(param1.col2,param2.col2));
         return b2Mat22.§,A§(_loc3_,_loc4_);
      }
      
      public static function §0@§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  addr34:
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc2_ || _loc3_))
                     {
                        addr54:
                        §§push(-§§pop());
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr58);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1);
                  if(_loc2_ || b2Math)
                  {
                     §§goto(addr54);
                  }
               }
               addr58:
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr34);
      }
      
      public static function §-$§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§0@§(param1.x),§0@§(param1.y));
      }
      
      public static function §@!G§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§,A§(§-$§(param1.col1),§-$§(param1.col2));
      }
      
      public static function §;!t§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() < param2)
               {
                  addr39:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr54:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr45:
                     }
                  }
                  §§goto(addr45);
               }
               else
               {
                  §§push(param2);
                  if(_loc3_ || param2)
                  {
                     §§goto(addr54);
                  }
               }
               return §§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr39);
      }
      
      public static function §7!5§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§;!t§(param1.x,param2.x),§;!t§(param1.y,param2.y));
      }
      
      public static function §&h§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || param2)
            {
               if(§§pop() > param2)
               {
                  addr50:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ && param1)
                     {
                     }
                  }
                  else
                  {
                     addr70:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr70);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public static function §1!L§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§&h§(param1.x,param2.x),§&h§(param1.y,param2.y));
      }
      
      public static function §?!?§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && b2Math))
         {
            §§push(param1);
            if(!(_loc4_ && param3))
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc4_ && param3))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(param2);
                           if(_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_ && param2)
                              {
                                 addr81:
                                 if(§§pop() > param3)
                                 {
                                    addr84:
                                    §§push(param3);
                                    if(_loc5_)
                                    {
                                       addr87:
                                       §§push(Number(§§pop()));
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc5_ || param3)
                                    {
                                       addr99:
                                       return Number(§§pop());
                                    }
                                 }
                              }
                              else
                              {
                                 addr77:
                              }
                              return §§pop();
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§goto(addr81);
                        }
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr77);
         }
         §§goto(addr84);
      }
      
      public static function §%!O§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §1!L§(param2,§7!5§(param1,param3));
      }
      
      public static function § !n§(param1:Array, param2:Array) : void
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
      
      public static function § !w§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(_loc1_ || _loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §;J§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.random();
         if(!(_loc4_ && param1))
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr68);
               }
               addr65:
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr69:
                  addr68:
                  §§push(§§pop() + param1);
                  if(_loc5_ || _loc3_)
                  {
                  }
                  §§goto(addr85);
               }
               §§push(Number(§§pop()));
               if(!(_loc4_ && param1))
               {
                  §§goto(addr85);
               }
               addr85:
               return §§pop();
            }
         }
         §§goto(addr69);
      }
      
      public static function §2!E§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && b2Math))
         {
            §§push(param1);
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
                     loop3:
                     while(true)
                     {
                        §§push(2147483647);
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
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(2);
                                             while(!_loc3_)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         while(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(uint(§§pop()));
                                                            loop16:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr269:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  continue loop16;
                                                               }
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§goto(addr227);
                                                      §§push(268435455);
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
         §§goto(addr162);
      }
      
      public static function §^!C§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() > 0);
               if(_loc3_ || b2Math)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        addr61:
                        addr60:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc4_ && param1)
                        {
                        }
                        §§goto(addr74);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr74:
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr60);
      }
   }
}
