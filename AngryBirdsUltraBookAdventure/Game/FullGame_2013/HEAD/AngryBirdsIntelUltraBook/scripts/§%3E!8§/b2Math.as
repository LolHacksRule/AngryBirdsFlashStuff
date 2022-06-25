package §>!8§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            b2Vec2_zero = new b2Vec2(0,0);
         }
         do
         {
            b2Mat22_identity = b2Mat22.§?!5§(new b2Vec2(1,0),new b2Vec2(0,1));
            do
            {
               b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            }
            while(_loc2_ && b2Math);
            
         }
         while(!_loc1_);
         
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §<`§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §extends§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && param2))
         {
            §§push(param2.x);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr58:
                  §§push(param1.y);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr70:
                     §§push(§§pop() + §§pop() * param2.y);
                  }
                  §§goto(addr70);
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr58);
      }
      
      public static function §?d§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && param2))
         {
            §§push(param2.y);
            if(!_loc3_)
            {
               §§goto(addr56);
            }
            §§push(§§pop() - §§pop());
         }
         addr56:
         §§push(§§pop() * §§pop());
         if(!(_loc3_ && param2))
         {
            §§push(param1.y);
            if(!_loc3_)
            {
               return §§pop() * param2.x;
            }
         }
      }
      
      public static function §`e§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1.y);
            if(_loc5_ || param2)
            {
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         addr56:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(!(_loc4_ && b2Math))
         {
            addr64:
            §§push(-§§pop());
            if(!_loc4_)
            {
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §2!Q§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_ || b2Math)
            {
               §§push(param2.y);
               if(_loc5_)
               {
                  §§goto(addr44);
               }
               §§goto(addr47);
            }
         }
         addr44:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc4_)
         {
            addr47:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §]!§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc5_)
         {
            §§push(param2.x);
            if(_loc5_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(param1.col2.x);
                  if(!_loc4_)
                  {
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr58:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc5_ || b2Math)
                           {
                           }
                           §§goto(addr90);
                        }
                        §§push(param2.x);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_ || param2)
                           {
                              §§goto(addr90);
                           }
                           addr90:
                           §§push(param1.col2.y);
                           if(_loc5_ || b2Math)
                           {
                              addr100:
                              §§push(§§pop() * param2.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                        }
                     }
                     §§goto(addr100);
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public static function §[p§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§extends§(param2,param1.col1),§extends§(param2,param1.col2));
      }
      
      public static function §&!M§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §]!§(param1.R,param2);
         if(!(_loc4_ && param1))
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
            if(_loc5_)
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(_loc4_ && param1);
         
         return _loc3_;
      }
      
      public static function §4![§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §2!C§(param2,param1.position);
         if(!_loc6_)
         {
            §§push(_loc3_.x);
            if(_loc5_)
            {
               §§push(param1.R.col1.x);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr125:
                     §§push(_loc3_.y);
                     if(!_loc6_)
                     {
                        addr134:
                        §§push(§§pop() + §§pop() * param1.R.col1.y);
                        if(_loc5_)
                        {
                           addr137:
                           §§push(Number(§§pop()));
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(!_loc6_)
                           {
                              §§push(param1.R.col2.x);
                              if(_loc5_ || b2Math)
                              {
                                 addr95:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc6_ && b2Math))
                                 {
                                    §§push(_loc3_.y);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() * param1.R.col2.y);
                                    }
                                 }
                                 §§pop().y = §§pop();
                                 continue;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr137);
               }
               §§goto(addr134);
            }
            §§goto(addr125);
         }
         §§goto(addr96);
      }
      
      public static function §5v§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc5_ && b2Math))
         {
            §§push(param2.x);
            if(_loc4_ || param2)
            {
               §§goto(addr56);
            }
            §§goto(addr65);
         }
         addr56:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(_loc4_ || param2)
         {
            addr65:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §2!C§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               addr37:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(_loc5_ || b2Math)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      public static function §^!g§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
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
            if(!_loc6_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr46);
      }
      
      public static function §;m§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!(_loc6_ && param2))
         {
            §§push(§§pop() - param2.x);
            if(!_loc6_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc6_)
            {
               §§push(§§pop() - param2.y);
               if(!(_loc6_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || b2Math)
                  {
                     addr92:
                     §§push(_loc4_);
                     if(!(_loc6_ && param1))
                     {
                        addr100:
                        §§push(§§pop() * _loc4_);
                     }
                     return §§pop() + §§pop();
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr92);
         }
         §§goto(addr30);
      }
      
      public static function §@Q§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || b2Math)
         {
            §§push(param2.x);
            if(!(_loc5_ && param2))
            {
               addr55:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr55);
      }
      
      public static function §3!2§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§?!5§(§5v§(param1.col1,param2.col1),§5v§(param1.col2,param2.col2));
      }
      
      public static function §5B§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§?!5§(§]!§(param1,param2.col1),§]!§(param1,param2.col2));
      }
      
      public static function §9;§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§extends§(param1.col1,param2.col1),§extends§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§extends§(param1.col1,param2.col2),§extends§(param1.col2,param2.col2));
         return b2Mat22.§?!5§(_loc3_,_loc4_);
      }
      
      public static function §&!]§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > 0)
               {
                  addr35:
                  §§push(param1);
                  if(!_loc2_)
                  {
                     addr38:
                     §§push(Number(§§pop()));
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(-§§pop());
                     if(_loc3_ || _loc2_)
                     {
                     }
                     §§goto(addr54);
                  }
                  §§push(Number(§§pop()));
               }
               addr54:
               return §§pop();
            }
            §§goto(addr38);
         }
         §§goto(addr35);
      }
      
      public static function §`!M§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§&!]§(param1.x),§&!]§(param1.y));
      }
      
      public static function § w§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§?!5§(§`!M§(param1.col1),§`!M§(param1.col2));
      }
      
      public static function §]!#§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() < param2)
               {
                  addr35:
                  §§push(param1);
                  if(!(_loc3_ && b2Math))
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ && param1)
                     {
                     }
                  }
                  else
                  {
                     addr55:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr35);
      }
      
      public static function §=3§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§]!#§(param1.x,param2.x),§]!#§(param1.y,param2.y));
      }
      
      public static function §-!V§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr34:
                  §§push(param1);
                  if(!(_loc4_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr49:
                        return Number(§§pop());
                     }
                     else
                     {
                        addr45:
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§goto(addr49);
                  }
               }
               return §§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr34);
      }
      
      public static function §[3§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§-!V§(param1.x,param2.x),§-!V§(param1.y,param2.y));
      }
      
      public static function §3X§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && b2Math))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr50:
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc4_ || param2))
                              {
                                 addr86:
                                 §§push(Number(§§pop()));
                                 if(_loc5_ && b2Math)
                                 {
                                 }
                              }
                              §§goto(addr99);
                           }
                        }
                        else
                        {
                           addr78:
                           §§push(param3);
                           if(!(_loc5_ && param3))
                           {
                              §§goto(addr86);
                           }
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           addr77:
                           if(§§pop() > param3)
                           {
                              §§goto(addr78);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                     }
                     addr99:
                     return §§pop();
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr86);
         }
         §§goto(addr50);
      }
      
      public static function §`@§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §[3§(param2,§=3§(param1,param3));
      }
      
      public static function §!p§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(_loc4_ || param2)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr77:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
            addr76:
         }
         while(true)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || _loc3_)
               {
                  §§pop()[§§pop()] = _loc3_;
                  if(_loc4_ || param1)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr76);
            }
            §§goto(addr77);
         }
      }
      
      public static function §+y§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §<!`§(param1:Number, param2:Number) : Number
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
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || _loc3_)
                     {
                        addr70:
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr74:
                           §§push(§§pop() + param1);
                           if(_loc4_ || b2Math)
                           {
                              addr82:
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr87);
                           }
                           _loc3_ = §§pop();
                           addr87:
                           return §§pop();
                           §§push(_loc3_);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr82);
               }
               §§goto(addr70);
            }
            §§goto(addr82);
         }
         §§goto(addr74);
      }
      
      public static function §[!O§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            while(true)
            {
               §§push(param1);
               addr272:
               while(true)
               {
                  §§push(1);
                  addr273:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     addr274:
                     while(true)
                     {
                        §§push(2147483647);
                        addr275:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           addr276:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              addr277:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr278:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr271:
         }
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
                     while(_loc2_ || param1)
                     {
                        §§push(1073741823);
                        loop13:
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
                                    while(!(_loc3_ && b2Math))
                                    {
                                       §§push(param1);
                                       loop18:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop19:
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue loop10;
                                             }
                                             if(_loc3_ && b2Math)
                                             {
                                                break;
                                             }
                                             §§push(4);
                                             loop20:
                                             while(_loc2_ || param1)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                while(_loc2_)
                                                {
                                                   §§push(268435455);
                                                   loop22:
                                                   while(_loc2_ || b2Math)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         while(!_loc3_)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            loop25:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr234:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        §§push(8);
                                                                        addr170:
                                                                        addr48:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           addr171:
                                                                           while(_loc2_)
                                                                           {
                                                                              §§push(16777215);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 addr175:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    addr176:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 addr92:
                                                                                 §§push(65535);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§push(param1);
                                                                        if(!(_loc2_ || b2Math))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        §§push(16);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(!(_loc2_ || b2Math))
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           §§push(§§pop() >> §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr110);
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc2_ || b2Math)
                                                                              {
                                                                                 §§goto(addr92);
                                                                              }
                                                                              §§goto(addr171);
                                                                           }
                                                                           §§goto(addr175);
                                                                           continue loop20;
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                  }
                                                                  addr177:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  param1 = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  addr189:
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || b2Math)
                                                                        {
                                                                           §§goto(addr48);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   §§goto(addr275);
                                                   if(_loc2_ || param1)
                                                   {
                                                      return §§pop() + §§pop();
                                                   }
                                                }
                                                continue loop14;
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr272);
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr274);
                  }
               }
            }
         }
      }
      
      public static function §>`§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() > 0);
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr55);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr55);
         }
         addr55:
         §§pop();
         §§push((param1 & param1 - 1) == 0);
         if(_loc3_)
         {
            addr65:
            §§push(Boolean(§§pop()));
            if(!(_loc4_ && _loc3_))
            {
               addr73:
               return Boolean(§§pop());
            }
         }
      }
   }
}
