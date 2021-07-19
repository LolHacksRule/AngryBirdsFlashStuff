package §[R§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            while(true)
            {
               b2Mat22_identity = b2Mat22.§1"'§(new b2Vec2(1,0),new b2Vec2(0,1));
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
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
      
      public static function §&" §(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §+#>§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_ || param2)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr43:
                  §§push(param1.y);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr62:
                     §§push(§§pop() * param2.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      public static function §0#W§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!_loc3_)
         {
            §§push(param2.y);
            if(_loc4_ || param1)
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
         if(!(_loc3_ && param1))
         {
            addr67:
            §§push(§§pop() * param2.x);
         }
         return §§pop() - §§pop();
      }
      
      public static function §`0§(param1:b2Vec2, param2:Number) : b2Vec2
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
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc5_)
               {
                  §§push(-§§pop());
                  if(_loc5_ || param2)
                  {
                     addr62:
                     §§push(§§pop() * param1.x);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
            §§goto(addr62);
         }
         §§goto(addr41);
      }
      
      public static function §7!m§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || b2Math)
         {
            §§push(-§§pop());
            if(_loc4_)
            {
               §§push(param2.y);
               if(!_loc5_)
               {
                  addr43:
                  §§push(§§pop() * §§pop());
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() * param2.x);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
         }
         §§goto(addr43);
      }
      
      public static function §="L§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  §§push(param1.col2.x);
                  if(!_loc4_)
                  {
                     §§push(param2.y);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && param2))
                        {
                           addr73:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc4_ && b2Math))
                           {
                              §§push(param2.x);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    §§push(param1.col2.y);
                                    if(_loc5_)
                                    {
                                       addr113:
                                       §§push(§§pop() + §§pop() * param2.y);
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              §§goto(addr113);
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr113);
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §9#A§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§+#>§(param2,param1.col1),§+#>§(param2,param1.col2));
      }
      
      public static function §""$§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §="L§(param1.R,param2);
         if(!(_loc4_ && param2))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc5_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!_loc4_)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc5_ || _loc3_));
            
         }
         return _loc3_;
      }
      
      public static function §'!B§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §8!3§(param2,param1.position);
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc3_.x);
            if(!_loc6_)
            {
               §§push(param1.R.col1.x);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || param1)
                  {
                     addr125:
                     §§push(_loc3_.y);
                     if(!(_loc6_ && param1))
                     {
                        addr134:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc5_ || _loc3_)
                     {
                        addr157:
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(!(_loc6_ && param2))
                        {
                           §§push(param1.R.col2.x);
                           if(!_loc6_)
                           {
                              addr98:
                              §§push(§§pop() * §§pop());
                              if(_loc5_)
                              {
                                 §§push(_loc3_.y);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                              }
                              §§pop().y = §§pop();
                              do
                              {
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              while(_loc3_.x = _loc4_, !(_loc5_ || b2Math));
                              
                              return _loc3_;
                              addr52:
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr157);
               }
               §§goto(addr134);
            }
            §§goto(addr125);
         }
         §§goto(addr52);
      }
      
      public static function §6!<§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               §§goto(addr41);
            }
            §§goto(addr55);
         }
         addr41:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!_loc5_)
         {
            addr55:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §8!3§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_ || param2)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§goto(addr42);
            }
            §§goto(addr61);
         }
         addr42:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(!(_loc4_ && param2))
         {
            addr61:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §?"2§(param1:b2Vec2, param2:b2Vec2) : Number
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
         if(_loc5_)
         {
            §§push(§§pop() - param2.y);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function §"#?§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() - param2.x);
            if(!_loc6_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc5_ || param1)
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
               if(_loc5_ || b2Math)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param2))
                  {
                     addr77:
                     §§push(_loc4_);
                     if(!(_loc6_ && b2Math))
                     {
                        addr95:
                        §§push(§§pop() * _loc4_);
                     }
                     return §§pop() + §§pop();
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr77);
         }
         §§goto(addr30);
      }
      
      public static function §]!b§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(param2.x);
            if(!_loc5_)
            {
               §§goto(addr40);
            }
            §§goto(addr58);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            addr58:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §^!>§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§1"'§(§6!<§(param1.col1,param2.col1),§6!<§(param1.col2,param2.col2));
      }
      
      public static function §[#9§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§1"'§(§="L§(param1,param2.col1),§="L§(param1,param2.col2));
      }
      
      public static function §9"p§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§+#>§(param1.col1,param2.col1),§+#>§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§+#>§(param1.col1,param2.col2),§+#>§(param1.col2,param2.col2));
         return b2Mat22.§1"'§(_loc3_,_loc4_);
      }
      
      public static function §6"%§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               if(§§pop() > 0)
               {
                  §§goto(addr45);
               }
               else
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr61);
         }
         addr45:
         §§push(param1);
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
            if(_loc2_)
            {
               addr68:
               return Number(§§pop());
            }
            else
            {
               addr61:
            }
         }
         else
         {
            addr65:
            §§push(-§§pop());
            if(_loc3_)
            {
               §§goto(addr68);
            }
         }
         return §§pop();
      }
      
      public static function §&#R§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§6"%§(param1.x),§6"%§(param1.y));
      }
      
      public static function §2"y§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§1"'§(§&#R§(param1.col1),§&#R§(param1.col2));
      }
      
      public static function §'#Z§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() < param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                     §§goto(addr61);
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_ || b2Math)
                  {
                     addr60:
                     §§push(Number(§§pop()));
                  }
               }
               addr61:
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr35);
      }
      
      public static function §;"H§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§'#Z§(param1.x,param2.x),§'#Z§(param1.y,param2.y));
      }
      
      public static function §<#N§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(!(_loc4_ && b2Math))
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
                  if(_loc3_)
                  {
                     §§goto(addr64);
                  }
               }
               return §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr39);
      }
      
      public static function §;V§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§<#N§(param1.x,param2.x),§<#N§(param1.y,param2.y));
      }
      
      public static function §<"X§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || b2Math)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(param2);
               if(_loc5_ || param3)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc4_ && param3))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param3)
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc4_ && param2))
                        {
                           §§goto(addr81);
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr81);
         }
         addr61:
         §§push(param2);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
            if(_loc4_)
            {
            }
         }
         else
         {
            addr81:
            if(§§pop() > param3)
            {
               addr84:
               §§push(param3);
               if(!_loc4_)
               {
                  addr97:
                  §§push(Number(§§pop()));
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr105);
               }
               addr104:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§goto(addr104);
               }
            }
         }
         addr105:
         return §§pop();
      }
      
      public static function §!"E§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §;V§(param2,§;"H§(param1,param3));
      }
      
      public static function §;"[§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(!(_loc4_ && b2Math))
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
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && _loc3_))
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
      
      public static function §@a§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(_loc1_ || b2Math)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §7#8§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!_loc4_)
         {
            §§push(param2);
            if(!(_loc4_ && param1))
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        addr50:
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || b2Math)
                        {
                           addr69:
                           §§push(§§pop() + param1);
                           if(_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                              }
                           }
                           §§goto(addr77);
                        }
                        _loc3_ = §§pop();
                        addr77:
                        return §§pop();
                        §§push(_loc3_);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr77);
               }
               §§goto(addr50);
            }
            §§goto(addr77);
         }
         §§goto(addr50);
      }
      
      public static function § !n§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
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
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
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
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      loop14:
                                                      while(_loc2_)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            addr268:
                                                            addr134:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc3_ && b2Math)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     addr269:
                                                                     loop25:
                                                                     while(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           §§push(param1);
                                                                           loop26:
                                                                           for(; !_loc3_; §§push(param1),if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           },addr80:,if(_loc2_ || _loc3_)
                                                                           {
                                                                              §§goto(addr87);
                                                                           },while(true)
                                                                           {
                                                                              §§goto(addr230);
                                                                              §§goto(addr80);
                                                                           })
                                                                           {
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(8);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() >> §§pop());
                                                                                 loop28:
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    §§push(16777215);
                                                                                    loop29:
                                                                                    while(_loc2_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() & §§pop());
                                                                                       loop30:
                                                                                       while(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() | §§pop());
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             addr201:
                                                                                             addr246:
                                                                                             loop32:
                                                                                             while(_loc2_ || _loc3_)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   loop34:
                                                                                                   while(_loc2_ || param1)
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                      if(_loc3_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      addr42:
                                                                                                      §§push(1);
                                                                                                      if(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         addr50:
                                                                                                         if(_loc2_ || b2Math)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               return §§pop() + §§pop();
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         addr103:
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(65535);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() & §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                           §§goto(addr42);
                                                                                                                        }
                                                                                                                        continue loop34;
                                                                                                                        addr120:
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr240:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop35;
                                                                                                            }
                                                                                                            §§goto(addr50);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() & §§pop());
                                                                                                            break loop28;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr120);
                                                                                                   }
                                                                                                   continue loop32;
                                                                                                }
                                                                                             }
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                continue loop25;
                                                                                                §§goto(addr201);
                                                                                             }
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr243);
                                                                                 }
                                                                                 addr87:
                                                                                 §§push(16);
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    if(_loc2_ || b2Math)
                                                                                    {
                                                                                       §§goto(addr103);
                                                                                       §§push(§§pop() >> §§pop());
                                                                                    }
                                                                                    while(!(_loc3_ && param1))
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr240);
                                                                                       §§push(§§pop() >> §§pop());
                                                                                    }
                                                                                    continue loop11;
                                                                                    addr230:
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr201);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc2_ || param1)
                                                                        {
                                                                           if(!(_loc2_ || param1))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr229);
                                                                           §§push(param1);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
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
         §§goto(addr269);
      }
      
      public static function §0"M§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() > 0);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        §§goto(addr46);
                     }
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr46);
         }
         addr46:
         §§push((param1 & param1 - 1) == 0);
         if(!(_loc4_ && param1))
         {
            addr68:
            return Boolean(§§pop());
         }
      }
   }
}
