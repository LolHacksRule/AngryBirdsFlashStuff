package §9"§
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
            while(true)
            {
               b2Mat22_identity = b2Mat22.§ T§(new b2Vec2(1,0),new b2Vec2(0,1));
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                     if(_loc1_ || _loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §6!W§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §9-§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param1)
               {
               }
               §§goto(addr61);
            }
            §§goto(addr57);
         }
         addr61:
         §§push(param1.y);
         if(!_loc3_)
         {
            addr57:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §2c§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_)
         {
            §§push(param2.y);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && b2Math))
               {
                  addr42:
                  §§push(param1.y);
                  if(_loc3_ || _loc3_)
                  {
                     addr61:
                     §§push(§§pop() * param2.x);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr61);
         }
         §§goto(addr42);
      }
      
      public static function §"!L§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc5_ && param2))
         {
            §§push(param1.y);
            if(!_loc5_)
            {
               §§goto(addr40);
            }
            §§goto(addr61);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(_loc4_ || param2)
            {
               addr61:
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §@!"§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || param2)
         {
            §§push(-§§pop());
            if(_loc4_ || param1)
            {
               addr43:
               §§push(param2.y);
               if(_loc4_)
               {
                  §§goto(addr48);
               }
               §§goto(addr66);
            }
            addr48:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc5_ && b2Math))
            {
               addr66:
               §§push(§§pop() * param2.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr43);
      }
      
      public static function § set§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param1.col2.x);
                  if(_loc4_)
                  {
                     addr49:
                     §§push(param2.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr56:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc4_)
                           {
                              §§push(param2.x);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr69:
                                    §§push(param1.col2.y);
                                    if(!_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr88);
                              }
                              addr88:
                              return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                              §§push(§§pop() * param2.y);
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr49);
         }
         §§goto(addr56);
      }
      
      public static function §1!F§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§9-§(param2,param1.col1),§9-§(param2,param1.col2));
      }
      
      public static function §&B§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = § set§(param1.R,param2);
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc4_ || b2Math)
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
         while(_loc5_);
         
         return _loc3_;
      }
      
      public static function §3!F§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §?d§(param2,param1.position);
         if(_loc5_ || param1)
         {
            §§push(_loc3_.x);
            if(_loc5_)
            {
               §§push(param1.R.col1.x);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || param2)
                  {
                     addr130:
                     §§push(_loc3_.y);
                     if(_loc5_)
                     {
                        addr149:
                        §§push(§§pop() + §§pop() * param1.R.col1.y);
                        if(!_loc6_)
                        {
                           addr152:
                           §§push(Number(§§pop()));
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc5_ || b2Math)
                           {
                              §§push(param1.R.col2.x);
                              if(_loc5_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc6_ && param2))
                                 {
                                    addr88:
                                    §§push(_loc3_.y);
                                    if(!_loc6_)
                                    {
                                       addr92:
                                       §§push(§§pop() * param1.R.col2.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().y = §§pop();
                                 continue;
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr152);
               }
               §§goto(addr149);
            }
            §§goto(addr130);
         }
         §§goto(addr106);
      }
      
      public static function §`#§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_ || _loc3_)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               addr41:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!_loc5_)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §?d§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc5_ && b2Math))
         {
            §§push(param2.x);
            if(!_loc5_)
            {
               addr41:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(_loc4_ || b2Math)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §const§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc6_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(_loc5_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr25);
      }
      
      public static function §@K§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc5_ && b2Math))
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_ || param2)
            {
               §§push(_loc3_);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && param2))
                  {
                     addr93:
                     §§push(_loc4_);
                     if(!_loc5_)
                     {
                        addr98:
                        §§push(§§pop() + §§pop() * _loc4_);
                     }
                     §§goto(addr98);
                  }
                  return §§pop();
               }
               §§goto(addr98);
            }
            §§goto(addr93);
         }
         §§goto(addr36);
      }
      
      public static function §"!!§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_ || _loc3_)
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §'!D§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§ T§(§`#§(param1.col1,param2.col1),§`#§(param1.col2,param2.col2));
      }
      
      public static function §<3§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§ T§(§ set§(param1,param2.col1),§ set§(param1,param2.col2));
      }
      
      public static function §,!=§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§9-§(param1.col1,param2.col1),§9-§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§9-§(param1.col1,param2.col2),§9-§(param1.col2,param2.col2));
         return b2Mat22.§ T§(_loc3_,_loc4_);
      }
      
      public static function §>8§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || b2Math)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop() > 0)
               {
                  addr45:
                  §§push(param1);
                  if(!_loc2_)
                  {
                     addr48:
                     §§push(Number(§§pop()));
                     if(!(_loc3_ || param1))
                     {
                        addr78:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                     if(!(_loc2_ && param1))
                     {
                        §§goto(addr78);
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr45);
      }
      
      public static function §9!&§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§>8§(param1.x),§>8§(param1.y));
      }
      
      public static function §2!8§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§ T§(§9!&§(param1.col1),§9!&§(param1.col2));
      }
      
      public static function §&f§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() < param2)
               {
                  addr40:
                  §§push(param1);
                  if(_loc4_ || b2Math)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        addr70:
                        return Number(§§pop());
                     }
                     else
                     {
                        addr51:
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && b2Math))
                  {
                     §§goto(addr70);
                  }
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr40);
      }
      
      public static function §!i§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§&f§(param1.x,param2.x),§&f§(param1.y,param2.y));
      }
      
      public static function §2a§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(_loc3_)
                  {
                     addr52:
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                     §§goto(addr60);
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§goto(addr60);
                  }
               }
               addr60:
               return Number(§§pop());
            }
            §§goto(addr52);
         }
         §§goto(addr39);
      }
      
      public static function §<!K§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§2a§(param1.x,param2.x),§2a§(param1.y,param2.y));
      }
      
      public static function §?!&§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(!(_loc4_ && b2Math))
            {
               §§push(param2);
               if(_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 addr99:
                                 return Number(§§pop());
                              }
                           }
                           else
                           {
                              addr66:
                              if(§§pop() > param3)
                              {
                                 addr69:
                                 §§push(param3);
                                 if(!(_loc4_ && b2Math))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr99);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc5_ || param1)
                                 {
                                    §§goto(addr99);
                                 }
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr69);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§goto(addr66);
                        }
                        §§goto(addr99);
                     }
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr99);
         }
         §§goto(addr69);
      }
      
      public static function §>T§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §<!K§(param2,§!i§(param1,param3));
      }
      
      public static function §&i§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(!(_loc5_ && param2))
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
         }
      }
      
      public static function §-P§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(_loc1_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §=K§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!(_loc4_ && b2Math))
         {
            §§push(param2);
            if(_loc5_ || _loc3_)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && param2))
                     {
                        addr60:
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr74:
                           §§push(§§pop() + param1);
                           if(!_loc4_)
                           {
                              addr77:
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr82);
                           }
                        }
                        _loc3_ = §§pop();
                        addr82:
                        return §§pop();
                        §§push(_loc3_);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr77);
               }
               §§goto(addr60);
            }
            §§goto(addr77);
         }
         §§goto(addr60);
      }
      
      public static function §]n§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
                                             for(; _loc3_; if(_loc2_ && _loc3_)
                                             {
                                                continue;
                                             },§§push(§§pop() >> §§pop()),if(!_loc2_)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§goto(addr165);
                                                   §§push(16777215);
                                                }
                                                §§goto(addr232);
                                             },§§goto(addr173))
                                             {
                                                §§push(§§pop() >> §§pop());
                                                if(!_loc2_)
                                                {
                                                   §§push(1073741823);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                   }
                                                   addr264:
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop() | §§pop());
                                                   loop14:
                                                   while(_loc3_ || _loc2_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(4);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() >> §§pop());
                                                                     addr232:
                                                                     while(true)
                                                                     {
                                                                        §§push(268435455);
                                                                        loop21:
                                                                        while(_loc3_ || param1)
                                                                        {
                                                                           §§push(§§pop() & §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() | §§pop());
                                                                              addr242:
                                                                              addr173:
                                                                              while(true)
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                                 addr243:
                                                                                 while(true)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    addr244:
                                                                                    while(_loc3_ || _loc2_)
                                                                                    {
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                              loop31:
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(_loc2_ && _loc3_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(§§pop() | §§pop());
                                                                                 loop32:
                                                                                 for(; !_loc2_; while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    if(_loc2_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr104);
                                                                                    §§push(uint(§§pop()));
                                                                                    §§goto(addr43);
                                                                                 })
                                                                                 {
                                                                                    if(_loc2_ && _loc3_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§push(uint(§§pop()));
                                                                                    loop33:
                                                                                    for(; _loc3_ || b2Math; if(!(_loc3_ || param1))
                                                                                    {
                                                                                       continue;
                                                                                    },if(_loc2_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    },§§push(1),if(_loc2_ && b2Math)
                                                                                    {
                                                                                       continue loop32;
                                                                                    },if(_loc3_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr55);
                                                                                       }
                                                                                       continue loop3;
                                                                                    },§§goto(addr82))
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       param1 = §§pop();
                                                                                       loop34:
                                                                                       while(_loc3_ || _loc2_)
                                                                                       {
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§push(param1);
                                                                                          if(_loc2_ && _loc3_)
                                                                                          {
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   param1 = §§pop();
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(!(_loc2_ && param1))
                                                                                                      {
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                      continue;
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop34;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop7;
                                                                                             addr104:
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr73:
                                                                                                §§push(16);
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() >> §§pop());
                                                                                                   loop35:
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      addr84:
                                                                                                      §§push(65535);
                                                                                                      if(_loc2_ && _loc3_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ || b2Math)
                                                                                                            {
                                                                                                               §§push(§§pop() & §§pop());
                                                                                                               break loop35;
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr84);
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                         addr165:
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() & §§pop());
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      §§goto(addr264);
                                                                                                   }
                                                                                                   continue loop31;
                                                                                                   addr82:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc2_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(8);
                                                                                                }
                                                                                                continue loop18;
                                                                                                addr115:
                                                                                             }
                                                                                             while(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                continue loop11;
                                                                                                §§goto(addr73);
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr114:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr115);
                                                                                       }
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                    §§goto(addr243);
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop6;
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
            }
         }
         while(true)
         {
            §§goto(addr114);
         }
         addr55:
         return §§pop() + §§pop();
      }
      
      public static function §%!Y§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() > 0);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || b2Math)
                     {
                        §§pop();
                        addr47:
                        addr46:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc3_ && _loc3_)
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
            §§goto(addr47);
         }
         §§goto(addr46);
      }
   }
}
