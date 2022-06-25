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
            while(true)
            {
               b2Mat22_identity = b2Mat22.§,A§(new b2Vec2(1,0),new b2Vec2(0,1));
               while(_loc1_ || b2Math)
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
         if(!_loc3_)
         {
            §§push(param2.x);
            if(_loc4_ || b2Math)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && param1))
               {
                  addr48:
                  §§push(param1.y);
                  if(!_loc3_)
                  {
                     addr52:
                     §§push(§§pop() * param2.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr52);
         }
         §§goto(addr48);
      }
      
      public static function §'!e§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.y);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
               }
               §§goto(addr55);
            }
            §§goto(addr51);
         }
         addr55:
         §§push(param1.y);
         if(_loc3_ || b2Math)
         {
            addr51:
            §§push(§§pop() * param2.x);
         }
         return §§pop() - §§pop();
      }
      
      public static function §66§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc4_ || b2Math)
         {
            §§push(param1.y);
            if(!_loc5_)
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(!(_loc5_ && param2))
               {
                  §§goto(addr48);
               }
               §§goto(addr51);
            }
            addr48:
            §§push(-§§pop());
            if(!_loc5_)
            {
               addr51:
               §§push(§§pop() * param1.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §<G§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(param2.y);
               if(_loc5_)
               {
                  §§goto(addr39);
               }
               §§goto(addr42);
            }
         }
         addr39:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc4_)
         {
            addr42:
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
         if(_loc5_)
         {
            §§push(param2.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param1))
               {
                  §§push(param1.col2.x);
                  if(!_loc4_)
                  {
                     §§push(param2.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr58:
                           addr57:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc4_ && param2)
                           {
                           }
                           §§goto(addr94);
                        }
                        §§push(param2.x);
                        if(_loc5_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                              §§push(param1.col2.y);
                              if(_loc5_)
                              {
                                 addr90:
                                 §§push(§§pop() * param2.y);
                              }
                              addr94:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr94);
               }
               §§goto(addr58);
            }
            §§goto(addr57);
         }
         §§goto(addr58);
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
         if(!_loc4_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc4_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!(_loc4_ && b2Math))
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(_loc4_ && _loc3_);
         
         return _loc3_;
      }
      
      public static function §5T§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §%M§(param2,param1.position);
         if(!_loc5_)
         {
            §§push(_loc3_.x);
            if(_loc6_ || param2)
            {
               §§push(param1.R.col1.x);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || param2)
                  {
                     addr131:
                     §§push(_loc3_.y);
                     if(!(_loc5_ && b2Math))
                     {
                        addr145:
                        §§push(§§pop() + §§pop() * param1.R.col1.y);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr145);
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc6_)
                     {
                        §§push(param1.R.col2.x);
                        if(!_loc5_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_ || param1)
                           {
                              addr89:
                              §§push(_loc3_.y);
                              if(!_loc5_)
                              {
                                 addr83:
                                 §§push(§§pop() * param1.R.col2.y);
                              }
                              §§pop().y = §§pop() + §§pop();
                              while(_loc6_)
                              {
                                 _loc3_.x = _loc4_;
                                 if(_loc6_ || b2Math)
                                 {
                                    return _loc3_;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr89);
                  }
                  addr150:
               }
               §§goto(addr145);
            }
            §§goto(addr131);
         }
         §§goto(addr150);
      }
      
      public static function §`v§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr42);
            }
            §§goto(addr51);
         }
         addr42:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!(_loc4_ && _loc3_))
         {
            addr51:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §%M§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_ || b2Math)
            {
               addr41:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(_loc4_)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §65§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(_loc5_)
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            }
            §§goto(addr46);
         }
         §§goto(addr35);
      }
      
      public static function § §(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc6_)
         {
            §§push(§§pop() - param2.y);
            if(_loc6_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || b2Math)
               {
                  addr83:
                  §§push(_loc4_);
                  if(!(_loc5_ && param2))
                  {
                     addr91:
                     §§push(§§pop() * _loc4_);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr91);
         }
         §§goto(addr83);
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
            if(_loc5_ || param2)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() > 0)
               {
                  addr40:
                  §§push(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr58:
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(-§§pop());
                     if(!(_loc2_ && param1))
                     {
                        return Number(§§pop());
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr40);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               if(§§pop() < param2)
               {
                  addr55:
                  §§push(param1);
                  if(_loc4_ || b2Math)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc4_ || param2))
                     {
                        addr75:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§goto(addr75);
                  }
               }
               return §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      public static function §7!5§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§;!t§(param1.x,param2.x),§;!t§(param1.y,param2.y));
      }
      
      public static function §&h§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || b2Math)
            {
               if(§§pop() > param2)
               {
                  addr54:
                  §§push(param1);
                  if(_loc3_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr69:
                        return Number(§§pop());
                     }
                     else
                     {
                        addr65:
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§goto(addr69);
                  }
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr54);
      }
      
      public static function §1!L§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§&h§(param1.x,param2.x),§&h§(param1.y,param2.y));
      }
      
      public static function §?!?§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc4_ && param3))
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                                 addr82:
                                 §§push(Number(§§pop()));
                                 if(!_loc4_)
                                 {
                                    §§goto(addr95);
                                 }
                                 else
                                 {
                                    addr94:
                                    addr95:
                                    return §§pop();
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr74:
                           §§push(param3);
                           if(_loc5_ || param2)
                           {
                              §§goto(addr82);
                           }
                        }
                        §§goto(addr95);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_ || b2Math)
                        {
                           addr73:
                           if(§§pop() > param3)
                           {
                              §§goto(addr74);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc5_ || param3)
                              {
                              }
                              §§goto(addr95);
                           }
                        }
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr95);
         }
         §§goto(addr74);
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
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr73:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
            addr72:
         }
         while(true)
         {
            §§push(param2);
            if(!(_loc4_ && b2Math))
            {
               §§push(0);
               if(!(_loc4_ && param2))
               {
                  §§pop()[§§pop()] = _loc3_;
                  if(_loc5_)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr72);
            }
            §§goto(addr73);
         }
      }
      
      public static function § !w§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!(_loc2_ && b2Math))
         {
            return §§pop() - 1;
         }
      }
      
      public static function §;J§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(_loc4_)
         {
            §§push(param2);
            if(!(_loc5_ && _loc3_))
            {
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || param1)
                        {
                           §§goto(addr73);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr81);
               }
               §§goto(addr73);
            }
            addr73:
            §§push(§§pop() + param1);
            if(!(_loc5_ && _loc3_))
            {
               addr81:
               §§push(Number(§§pop()));
               if(!_loc5_)
               {
                  addr84:
                  _loc3_ = §§pop();
                  return _loc3_;
               }
            }
         }
         §§goto(addr84);
      }
      
      public static function §2!E§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(param1);
               addr252:
               while(true)
               {
                  §§push(1);
                  addr253:
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
                                 loop7:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(2);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            loop16:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr215:
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                        addr216:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(268435455);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       loop25:
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             loop36:
                                                                                             while(!(_loc3_ && b2Math))
                                                                                             {
                                                                                                §§push(param1);
                                                                                                loop37:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   addr155:
                                                                                                   while(_loc2_ || b2Math)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      while(_loc2_)
                                                                                                      {
                                                                                                         §§push(8);
                                                                                                         while(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() >> §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(16777215);
                                                                                                               addr170:
                                                                                                               while(!(_loc3_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() & §§pop());
                                                                                                                  while(!(_loc3_ && b2Math))
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() | §§pop());
                                                                                                                        loop34:
                                                                                                                        while(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1 = §§pop();
                                                                                                                              continue loop36;
                                                                                                                              addr142:
                                                                                                                              while(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 param1 = §§pop();
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() | §§pop());
                                                                                                                              if(!(_loc2_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr142);
                                                                                                                              §§push(uint(§§pop()));
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr47:
                                                                                                               continue loop22;
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        return §§pop() + §§pop();
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       continue loop16;
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
            }
         }
         while(true)
         {
            §§goto(addr155);
         }
      }
      
      public static function §^!C§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() > 0);
               if(!(_loc3_ && b2Math))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§pop();
                        addr67:
                        addr66:
                        §§push((param1 & param1 - 1) == 0);
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr75);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr75:
               return §§pop();
            }
            §§goto(addr67);
         }
         §§goto(addr66);
      }
   }
}
