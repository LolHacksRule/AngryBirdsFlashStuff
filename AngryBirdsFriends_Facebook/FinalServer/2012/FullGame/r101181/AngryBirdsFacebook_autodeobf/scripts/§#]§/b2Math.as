package §#]§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
         }
         do
         {
            b2Mat22_identity = b2Mat22.§=q§(new b2Vec2(1,0),new b2Vec2(0,1));
            do
            {
               b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            }
            while(!(_loc2_ || b2Math));
            
         }
         while(!_loc2_);
         
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §^!-§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §+'§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc3_)
               {
                  addr47:
                  §§push(param1.y);
                  if(_loc3_)
                  {
                     addr54:
                     §§push(§§pop() + §§pop() * param2.y);
                  }
                  §§goto(addr54);
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr47);
      }
      
      public static function §%!s§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.y);
            if(_loc3_ || param1)
            {
               §§goto(addr50);
            }
            §§push(§§pop() - §§pop());
         }
         addr50:
         §§push(§§pop() * §§pop());
         if(_loc3_)
         {
            §§push(param1.y);
            if(_loc3_)
            {
               return §§pop() * param2.x;
            }
         }
      }
      
      public static function §8E§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!_loc4_)
         {
            §§push(param1.y);
            if(_loc5_)
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc5_ || _loc3_)
               {
                  §§push(-§§pop());
                  if(!_loc4_)
                  {
                     §§push(§§pop() * param1.x);
                  }
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      public static function §#!'§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc4_)
         {
            §§push(-§§pop());
            if(!(_loc4_ && param2))
            {
               §§push(param2.y);
               if(!_loc4_)
               {
                  addr44:
                  §§push(§§pop() * §§pop());
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * param2.x);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
         }
         §§goto(addr44);
      }
      
      public static function §?"1§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc5_ || param2)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  addr35:
                  §§push(param1.col2.x);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param2.y);
                     if(!(_loc4_ && b2Math))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc4_ && b2Math))
                           {
                              §§push(param2.x);
                              if(!_loc4_)
                              {
                                 §§goto(addr104);
                              }
                              addr104:
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 §§push(param1.col2.y);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() * param2.y);
                                 }
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                        }
                     }
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr35);
      }
      
      public static function §%o§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§+'§(param2,param1.col1),§+'§(param2,param1.col2));
      }
      
      public static function §2C§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §?"1§(param1.R,param2);
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
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(!_loc5_);
         
         return _loc3_;
      }
      
      public static function §@!O§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §0!1§(param2,param1.position);
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc3_.x);
            if(_loc6_)
            {
               §§push(param1.R.col1.x);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     addr131:
                     §§push(_loc3_.y);
                     if(_loc6_ || _loc3_)
                     {
                        addr140:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || _loc3_)
                     {
                        addr153:
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(_loc6_ || b2Math)
                        {
                           §§push(param1.R.col2.x);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc5_ && b2Math))
                              {
                                 addr84:
                                 §§push(_loc3_.y);
                                 if(!(_loc5_ && b2Math))
                                 {
                                    addr93:
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().y = §§pop();
                              continue;
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr140);
            }
            §§goto(addr131);
         }
         §§goto(addr48);
      }
      
      public static function §=!i§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc4_ && param1))
         {
            §§push(param2.x);
            if(_loc5_ || param1)
            {
               §§goto(addr57);
            }
            §§goto(addr66);
         }
         addr57:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!(_loc4_ && _loc3_))
         {
            addr66:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §0!1§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               addr36:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(_loc4_ || param2)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      public static function §;!h§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.y);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function §0g§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() - param2.y);
            if(!(_loc5_ && param1))
            {
               addr67:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || b2Math)
                  {
                  }
                  §§goto(addr89);
               }
               §§goto(addr86);
            }
            addr89:
            §§push(_loc4_);
            if(_loc6_)
            {
               addr86:
               §§push(§§pop() * _loc4_);
            }
            return §§pop() + §§pop();
         }
         §§goto(addr67);
      }
      
      public static function §7B§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_ || param2)
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §'!c§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§=q§(§=!i§(param1.col1,param2.col1),§=!i§(param1.col2,param2.col2));
      }
      
      public static function §?W§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§=q§(§?"1§(param1,param2.col1),§?"1§(param1,param2.col2));
      }
      
      public static function §=6§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§+'§(param1.col1,param2.col1),§+'§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§+'§(param1.col1,param2.col2),§+'§(param1.col2,param2.col2));
         return b2Mat22.§=q§(_loc3_,_loc4_);
      }
      
      public static function §"p§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > 0)
               {
                  addr40:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ || b2Math)
                     {
                     }
                     §§goto(addr79);
                  }
                  addr78:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1);
                  if(!(_loc2_ && b2Math))
                  {
                     addr70:
                     §§push(-§§pop());
                     if(_loc3_ || param1)
                     {
                        §§goto(addr78);
                     }
                  }
               }
               addr79:
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr40);
      }
      
      public static function §?!d§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§"p§(param1.x),§"p§(param1.y));
      }
      
      public static function §9Q§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§=q§(§?!d§(param1.col1),§?!d§(param1.col2));
      }
      
      public static function §]"=§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() < param2)
               {
                  addr50:
                  §§push(param1);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param1))
                  {
                     return Number(§§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public static function §8L§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§]"=§(param1.x,param2.x),§]"=§(param1.y,param2.y));
      }
      
      public static function §2Y§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() > param2)
               {
                  addr40:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr46:
                     }
                  }
                  §§goto(addr46);
               }
               else
               {
                  §§push(param2);
                  if(_loc4_ || param2)
                  {
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr40);
      }
      
      public static function §6";§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§2Y§(param1.x,param2.x),§2Y§(param1.y,param2.y));
      }
      
      public static function §<O§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc5_ && b2Math))
            {
               §§push(param2);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && b2Math))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(param2);
                           if(!(_loc5_ && b2Math))
                           {
                              addr68:
                              §§push(Number(§§pop()));
                              if(_loc4_ || param3)
                              {
                              }
                           }
                           else
                           {
                              addr106:
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                              }
                           }
                           §§goto(addr114);
                        }
                        else
                        {
                           §§goto(addr98);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc5_ && b2Math))
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr97);
               }
               addr97:
               if(§§pop() > param3)
               {
                  addr98:
                  §§push(param3);
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr106);
                  }
                  else
                  {
                     addr113:
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr114);
               }
               else
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§goto(addr113);
                  }
               }
               addr114:
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr98);
      }
      
      public static function §>C§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §6";§(param2,§8L§(param1,param3));
      }
      
      public static function §["6§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(!(_loc4_ && param1))
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
      
      public static function §5<§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(!(_loc1_ && b2Math))
         {
            return §§pop() - 1;
         }
      }
      
      public static function §-g§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(_loc4_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     addr56:
                     §§push(_loc3_);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr68);
               }
               addr68:
               §§push(§§pop() + param1);
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_ || param1)
                  {
                     addr79:
                     _loc3_ = §§pop();
                     return _loc3_;
                  }
               }
            }
            §§goto(addr56);
         }
         §§goto(addr79);
      }
      
      public static function §<!y§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                                       while(_loc3_ || _loc3_)
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
                                                while(!_loc2_)
                                                {
                                                   §§push(1073741823);
                                                   loop13:
                                                   for(; _loc3_; while(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr205);
                                                      §§push(§§pop() & §§pop());
                                                   })
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
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(param1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(4);
                                                                     addr193:
                                                                     while(!_loc2_)
                                                                     {
                                                                        §§push(§§pop() >> §§pop());
                                                                        while(true)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                     addr77:
                                                                     if(_loc2_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(16);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(§§pop() >> §§pop());
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(65535);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr175:
                                                                                    §§push(§§pop() & §§pop());
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() | §§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break;
                                                                                          addr116:
                                                                                       }
                                                                                       §§push(uint(§§pop()));
                                                                                       loop37:
                                                                                       while(!(_loc2_ && b2Math))
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr136:
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                if(_loc3_ || b2Math)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop37;
                                                                                                      }
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop36;
                                                                                                      }
                                                                                                      §§goto(addr65);
                                                                                                   }
                                                                                                   return §§pop() + §§pop();
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr226:
                                                                                             while(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!(_loc2_ && param1))
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   continue loop10;
                                                                                                }
                                                                                                addr183:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1 = §§pop();
                                                                                                   addr65:
                                                                                                   while(_loc3_ || param1)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§push(param1);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§goto(addr77);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr136);
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr65);
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    while(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr183);
                                                                                       §§push(uint(§§pop()));
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(uint(§§pop()));
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop15;
                                                                                       §§goto(addr175);
                                                                                    }
                                                                                    addr175:
                                                                                    continue loop6;
                                                                                    addr208:
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop3;
                                                                              if(!(_loc3_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    addr50:
                                                                                    if(_loc2_ && b2Math)
                                                                                    {
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§goto(addr208);
                                                                                          §§push(§§pop() | §§pop());
                                                                                          §§goto(addr50);
                                                                                       }
                                                                                       continue loop12;
                                                                                       addr205:
                                                                                    }
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§goto(addr59);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       break loop35;
                                                                                    }
                                                                                    §§goto(addr196);
                                                                                    addr170:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr175);
                                                                              }
                                                                              addr174:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr174);
                                                                           }
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr170);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       continue loop7;
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
         §§goto(addr150);
      }
      
      public static function § !l§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               §§push(§§pop() > 0);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        §§goto(addr67);
                     }
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr67);
         }
         addr67:
         §§push((param1 & param1 - 1) == 0);
         if(_loc4_)
         {
            addr74:
            return Boolean(§§pop());
         }
      }
   }
}
