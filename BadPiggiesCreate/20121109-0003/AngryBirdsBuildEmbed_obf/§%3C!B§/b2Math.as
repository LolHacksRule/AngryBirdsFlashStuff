package §<!B§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22 = b2Mat22.§'!^§(new b2Vec2(1,0),new b2Vec2(0,1));
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            if(!_loc2_)
            {
               §§goto(addr51);
            }
            §§goto(addr65);
         }
         addr51:
         if(!_loc2_)
         {
            addr65:
            b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §@Y§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §9!;§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && b2Math))
         {
            §§push(param2.x);
            if(!(_loc3_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param1)
               {
                  addr63:
                  §§push(param1.y);
                  if(!(_loc3_ && param1))
                  {
                     addr75:
                     §§push(§§pop() + §§pop() * param2.y);
                  }
                  §§goto(addr75);
               }
               return §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr63);
      }
      
      public static function §?§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && param1))
         {
            §§push(param2.y);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param2)
               {
                  addr58:
                  §§push(param1.y);
                  if(!(_loc3_ && param1))
                  {
                     addr70:
                     §§push(§§pop() - §§pop() * param2.x);
                  }
                  §§goto(addr70);
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr58);
      }
      
      public static function §!!r§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc4_ || b2Math)
         {
            §§push(param1.y);
            if(_loc4_ || param2)
            {
               addr55:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc4_ || param2)
               {
                  §§goto(addr63);
               }
               §§goto(addr71);
            }
            addr63:
            §§push(-§§pop());
            if(_loc4_ || param2)
            {
               addr71:
               §§push(§§pop() * param1.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr55);
      }
      
      public static function §=!b§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || b2Math)
         {
            §§push(-§§pop());
            if(!_loc5_)
            {
               §§push(param2.y);
               if(!_loc5_)
               {
                  addr43:
                  §§push(§§pop() * §§pop());
                  §§push(param1);
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop() * param2.x);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
         }
         §§goto(addr43);
      }
      
      public static function §`!"§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!(_loc4_ && param1))
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || _loc3_)
               {
                  addr40:
                  §§push(param1.col2.x);
                  if(_loc5_)
                  {
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr63:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc4_ && param1))
                           {
                              §§push(param2.x);
                              if(_loc5_ || b2Math)
                              {
                                 §§goto(addr114);
                              }
                              addr114:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr100:
                                 §§push(param1.col2.y);
                                 if(_loc5_ || b2Math)
                                 {
                                    addr110:
                                    §§push(§§pop() * param2.y);
                                 }
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr114);
               }
               §§goto(addr63);
            }
            §§goto(addr100);
         }
         §§goto(addr40);
      }
      
      public static function §#Z§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§9!;§(param2,param1.col1),§9!;§(param2,param1.col2));
      }
      
      public static function §#!N§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §`!"§(param1.R,param2);
         if(!(_loc4_ && param1))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc4_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            if(_loc5_)
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      public static function §42§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §<b§(param2,param1.position);
         if(!(_loc5_ && param1))
         {
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(param1.R.col1.x);
               if(_loc6_)
               {
                  addr77:
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     §§push(_loc3_.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() * param1.R.col1.y);
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(!_loc5_)
                     {
                        §§push(param1.R.col2.x);
                        if(_loc6_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              addr109:
                              §§push(_loc3_.y);
                              if(!_loc5_)
                              {
                                 addr118:
                                 §§push(§§pop() + §§pop() * param1.R.col2.y);
                              }
                              §§goto(addr118);
                           }
                           §§pop().y = §§pop();
                           if(!_loc5_)
                           {
                              addr122:
                              _loc3_.x = _loc4_;
                              §§goto(addr125);
                           }
                           addr125:
                           return _loc3_;
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr122);
               }
               §§push(§§pop() + §§pop());
               if(_loc6_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr77);
         }
         §§goto(addr122);
      }
      
      public static function §[!d§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!(_loc4_ && param2))
            {
               addr42:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(_loc5_ || b2Math)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      public static function §<b§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc5_ && param1))
         {
            §§push(param2.x);
            if(_loc4_ || param2)
            {
               §§goto(addr56);
            }
            §§goto(addr65);
         }
         addr56:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc4_ || param1)
         {
            addr65:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §@9§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || param1)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc6_)
            {
               §§push(§§pop() - param2.y);
               if(_loc6_)
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            }
            §§goto(addr62);
         }
         §§goto(addr51);
      }
      
      public static function §>!V§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(_loc5_ || param1)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.y);
            if(!_loc6_)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(_loc3_);
               if(!(_loc6_ && b2Math))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || b2Math)
                  {
                  }
                  §§goto(addr98);
               }
               §§goto(addr95);
            }
            addr98:
            §§push(_loc4_);
            if(_loc5_ || b2Math)
            {
               addr95:
               §§push(§§pop() * _loc4_);
            }
            return §§pop() + §§pop();
         }
         §§goto(addr56);
      }
      
      public static function §'m§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_ || _loc3_)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc4_)
         {
            addr44:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §>U§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§'!^§(§[!d§(param1.col1,param2.col1),§[!d§(param1.col2,param2.col2));
      }
      
      public static function §6n§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§'!^§(§`!"§(param1,param2.col1),§`!"§(param1,param2.col2));
      }
      
      public static function §+!i§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§9!;§(param1.col1,param2.col1),§9!;§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§9!;§(param1.col1,param2.col2),§9!;§(param1.col2,param2.col2));
         return b2Mat22.§'!^§(_loc3_,_loc4_);
      }
      
      public static function §?!3§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() > 0)
               {
                  §§goto(addr45);
               }
               else
               {
                  §§push(param1);
                  if(_loc3_ || b2Math)
                  {
                     §§goto(addr80);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr71);
         }
         addr45:
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
            if(!(_loc3_ || b2Math))
            {
               addr88:
               §§push(Number(§§pop()));
            }
            else
            {
               addr71:
            }
         }
         else
         {
            addr80:
            §§push(-§§pop());
            if(!(_loc2_ && b2Math))
            {
               §§goto(addr88);
            }
         }
         return §§pop();
      }
      
      public static function §7!@§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§?!3§(param1.x),§?!3§(param1.y));
      }
      
      public static function §'!H§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§'!^§(§7!@§(param1.col1),§7!@§(param1.col2));
      }
      
      public static function §5!>§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && b2Math))
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() < param2)
               {
                  addr39:
                  §§push(param1);
                  if(_loc3_ || param2)
                  {
                     addr47:
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr55);
                  }
                  addr54:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr54);
                  }
               }
               addr55:
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr39);
      }
      
      public static function §6!h§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§5!>§(param1.x,param2.x),§5!>§(param1.y,param2.y));
      }
      
      public static function §,!a§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               if(§§pop() > param2)
               {
                  addr55:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr71);
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            addr71:
            return §§pop();
         }
         §§goto(addr55);
      }
      
      public static function §2!O§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§,!a§(param1.x,param2.x),§,!a§(param1.y,param2.y));
      }
      
      public static function §%!j§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            §§push(param2);
            if(!_loc5_)
            {
               §§push(§§pop() < §§pop());
               if(!(_loc5_ && param3))
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr53:
                        §§push(Number(param2));
                     }
                     else
                     {
                        addr67:
                        §§push(Number(param3));
                        if(_loc5_ && param1)
                        {
                           addr78:
                           §§push(Number(§§pop()));
                        }
                     }
                     return §§pop();
                  }
                  §§push(param1);
                  if(!(_loc5_ && param1))
                  {
                     addr66:
                     if(§§pop() > param3)
                     {
                        §§goto(addr67);
                     }
                     else
                     {
                        §§push(param1);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr53);
      }
      
      public static function §7M§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §2!O§(param2,§6!h§(param1,param3));
      }
      
      public static function §=X§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || param1)
               {
                  §§pop()[§§pop()] = param2[0];
                  if(_loc5_ || b2Math)
                  {
                     addr68:
                     param2[0] = _loc3_;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §2!2§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() - 1);
         }
         return §§pop();
      }
      
      public static function §7!$§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(_loc5_ || b2Math)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_ || param2)
                  {
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        addr65:
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr69:
                           §§push(§§pop() + param1);
                           if(_loc4_)
                           {
                           }
                           §§goto(addr77);
                        }
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           addr75:
                           _loc3_ = §§pop();
                           addr77:
                           return §§pop();
                           §§push(_loc3_);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr69);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr75);
      }
      
      public static function §6j§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(1);
                  if(_loc2_ || b2Math)
                  {
                     §§push(§§pop() >> §§pop());
                     §§push(2147483647);
                     if(!_loc3_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() | §§pop());
                           if(_loc2_ || b2Math)
                           {
                              param1 = uint(§§pop());
                              if(!(_loc3_ && param1))
                              {
                                 addr71:
                                 §§push(param1);
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    addr75:
                                    §§push(2);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() >> §§pop());
                                       §§push(1073741823);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() & §§pop());
                                          if(_loc2_ || b2Math)
                                          {
                                             §§push(§§pop() | §§pop());
                                             if(!_loc3_)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!_loc3_)
                                                {
                                                   param1 = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(param1);
                                                      §§push(param1);
                                                      if(_loc2_)
                                                      {
                                                         addr118:
                                                         §§push(4);
                                                         if(_loc2_)
                                                         {
                                                            addr121:
                                                            §§push(§§pop() >> §§pop());
                                                            §§push(268435455);
                                                            if(_loc2_)
                                                            {
                                                               addr126:
                                                               §§push(§§pop() | §§pop() & §§pop());
                                                               if(_loc2_ || b2Math)
                                                               {
                                                                  addr134:
                                                                  param1 = uint(§§pop());
                                                                  if(!(_loc3_ && b2Math))
                                                                  {
                                                                     addr143:
                                                                     §§push(param1);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr151:
                                                                        §§push(param1);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(8);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr162:
                                                                              §§push(§§pop() >> §§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(16777215);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr168:
                                                                                    §§push(§§pop() & §§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() | §§pop());
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             if(_loc2_ || param1)
                                                                                             {
                                                                                                addr204:
                                                                                                §§push(param1);
                                                                                                §§push(param1 >> 16 & 65535);
                                                                                                if(_loc3_ && _loc3_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr220);
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                          §§goto(addr217);
                                                                                       }
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr204);
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                        }
                                                                        §§goto(addr204);
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr134);
                                          }
                                          addr220:
                                          §§push(uint(§§pop() | §§pop()));
                                          if(!_loc3_)
                                          {
                                             addr217:
                                             param1 = §§pop();
                                             addr218:
                                             §§push(param1);
                                          }
                                          return §§pop() + 1;
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr121);
               }
               §§goto(addr75);
            }
            §§goto(addr151);
         }
         §§goto(addr71);
      }
      
      public static function §;d§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() > 0);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && b2Math))
                     {
                        addr60:
                        §§pop();
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc4_)
                        {
                           addr69:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr60);
      }
   }
}
