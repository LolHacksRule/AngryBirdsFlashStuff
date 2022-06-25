package §8>§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            while(true)
            {
               b2Mat22_identity = b2Mat22.§-]§(new b2Vec2(1,0),new b2Vec2(0,1));
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
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
      
      public static function §]d§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §1!P§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && param1))
         {
            §§push(param2.x);
            if(!_loc3_)
            {
               §§goto(addr51);
            }
            §§push(§§pop() + §§pop());
         }
         addr51:
         §§push(§§pop() * §§pop());
         if(!_loc3_)
         {
            §§push(param1.y);
            if(!_loc3_)
            {
               return §§pop() * param2.y;
            }
         }
      }
      
      public static function §#!9§(param1:b2Vec2, param2:b2Vec2) : Number
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
               if(!(_loc4_ && _loc3_))
               {
                  addr42:
                  §§push(param1.y);
                  if(_loc3_ || param1)
                  {
                     addr51:
                     §§push(§§pop() * param2.x);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr51);
         }
         §§goto(addr42);
      }
      
      public static function §=!,§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!_loc4_)
         {
            §§push(param1.y);
            if(!_loc4_)
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(!_loc4_)
               {
                  §§goto(addr39);
               }
               §§goto(addr42);
            }
            addr39:
            §§push(-§§pop());
            if(_loc5_)
            {
               addr42:
               §§push(§§pop() * param1.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      public static function §#J§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(_loc4_ || _loc3_)
            {
               §§push(param2.y);
               if(_loc4_ || _loc3_)
               {
                  addr48:
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
         §§goto(addr48);
      }
      
      public static function §"!+§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(param1.col2.x);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param2.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(param2.x);
                              if(_loc5_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    addr100:
                                    §§push(param1.col2.y);
                                    if(!_loc4_)
                                    {
                                       addr105:
                                       §§push(§§pop() * param2.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 return new §§pop().b2Vec2(§§pop(),§§pop());
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr100);
         }
         §§goto(addr67);
      }
      
      public static function §`m§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§1!P§(param2,param1.col1),§1!P§(param2,param1.col2));
      }
      
      public static function §,^§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §"!+§(param1.R,param2);
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!_loc5_)
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc4_ || b2Math));
         
         return _loc3_;
      }
      
      public static function § I§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §>G§(param2,param1.position);
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(param1.R.col1.x);
               if(_loc6_ || b2Math)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || b2Math)
                  {
                     §§push(_loc3_.y);
                     if(_loc6_ || param2)
                     {
                        addr160:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        addr168:
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc4_ = §§pop();
                  do
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc6_ || param1)
                     {
                        §§push(param1.R.col2.x);
                        if(_loc6_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc5_ && param1))
                           {
                              addr96:
                              §§push(_loc3_.y);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr105:
                                 §§push(§§pop() * param1.R.col2.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           continue;
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr96);
                  }
                  while(§§pop().y = §§pop(), do
                  {
                     _loc3_.x = _loc4_;
                  }
                  while(_loc5_ && param1);
                  , !(_loc6_ || param1));
                  
                  return _loc3_;
                  addr170:
               }
               §§goto(addr160);
            }
            §§goto(addr168);
         }
         §§goto(addr170);
      }
      
      public static function §-!>§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
               §§goto(addr37);
            }
            §§goto(addr41);
         }
         addr37:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(_loc5_)
         {
            addr41:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §>G§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(_loc5_)
            {
               §§goto(addr37);
            }
            §§goto(addr41);
         }
         addr37:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(!_loc4_)
         {
            addr41:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §7U§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc5_ || _loc3_)
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
      
      public static function §>s§(param1:b2Vec2, param2:b2Vec2) : Number
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
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() - param2.y);
               if(_loc5_ || param1)
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        addr87:
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           addr92:
                           §§push(§§pop() + §§pop() * _loc4_);
                        }
                        §§goto(addr92);
                     }
                     return §§pop();
                  }
                  §§goto(addr92);
               }
               §§goto(addr87);
            }
            §§goto(addr66);
         }
         §§goto(addr25);
      }
      
      public static function §<!G§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || b2Math)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               §§goto(addr55);
            }
            §§goto(addr63);
         }
         addr55:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc4_ || param1)
         {
            addr63:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §;!s§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§-]§(§-!>§(param1.col1,param2.col1),§-!>§(param1.col2,param2.col2));
      }
      
      public static function §0i§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§-]§(§"!+§(param1,param2.col1),§"!+§(param1,param2.col2));
      }
      
      public static function §<!e§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§1!P§(param1.col1,param2.col1),§1!P§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§1!P§(param1.col1,param2.col2),§1!P§(param1.col2,param2.col2));
         return b2Mat22.§-]§(_loc3_,_loc4_);
      }
      
      public static function §>!Y§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > 0)
               {
                  addr34:
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr57:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc2_ || b2Math)
                  {
                     §§push(-§§pop());
                     if(!(_loc3_ && b2Math))
                     {
                        §§goto(addr57);
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr34);
      }
      
      public static function §&!l§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§>!Y§(param1.x),§>!Y§(param1.y));
      }
      
      public static function §;!n§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§-]§(§&!l§(param1.col1),§&!l§(param1.col2));
      }
      
      public static function §^!n§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && b2Math))
         {
            §§push(param1);
            if(!(_loc4_ && param2))
            {
               if(§§pop() < param2)
               {
                  addr54:
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ && b2Math)
                     {
                     }
                     §§goto(addr75);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     addr74:
                     §§push(Number(§§pop()));
                  }
               }
               addr75:
               return §§pop();
            }
            §§goto(addr74);
         }
         §§goto(addr54);
      }
      
      public static function §`!e§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§^!n§(param1.x,param2.x),§^!n§(param1.y,param2.y));
      }
      
      public static function § 9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
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
                     if(_loc3_)
                     {
                        addr45:
                     }
                  }
                  else
                  {
                     addr49:
                     return Number(§§pop());
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
         §§goto(addr39);
      }
      
      public static function §@!>§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§ 9§(param1.x,param2.x),§ 9§(param1.y,param2.y));
      }
      
      public static function §5L§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc4_ && param3))
            {
               §§push(param2);
               if(!(_loc4_ && b2Math))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param3)
                        {
                           addr56:
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc5_ || param1))
                              {
                                 addr95:
                              }
                           }
                           else
                           {
                              addr99:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           addr84:
                           §§push(param3);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr95);
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr95);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           addr83:
                           if(§§pop() > param3)
                           {
                              §§goto(addr84);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 §§goto(addr99);
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr95);
         }
         §§goto(addr56);
      }
      
      public static function §5!-§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §@!>§(param2,§`!e§(param1,param3));
      }
      
      public static function §"!N§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr67:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
         }
      }
      
      public static function §-!3§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(!_loc1_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §8N§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.random();
         if(_loc5_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(param1);
               if(_loc5_ || b2Math)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || param1)
                     {
                        §§goto(addr85);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc4_ && param2))
                     {
                        addr82:
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                        }
                        §§goto(addr85);
                     }
                  }
                  addr85:
                  §§goto(addr65);
               }
               addr65:
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param1))
               {
                  return param1;
               }
            }
            §§goto(addr82);
         }
         §§goto(addr85);
      }
      
      public static function §'!a§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
                                       for(; !_loc2_; if(_loc2_ && param1)
                                       {
                                          continue;
                                       },§§push(param1),if(_loc3_ || b2Math)
                                       {
                                          §§goto(addr94);
                                       },§§goto(addr186))
                                       {
                                          §§push(param1);
                                          while(_loc3_ || _loc3_)
                                          {
                                             §§push(2);
                                             while(true)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                loop12:
                                                while(_loc3_ || param1)
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
                                                         while(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(uint(§§pop()));
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr298:
                                                               while(!_loc2_)
                                                               {
                                                               }
                                                               addr38:
                                                               continue loop8;
                                                               if(_loc2_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr47:
                                                               §§push(1);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     while(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(65535);
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr127:
                                                                        if(!(_loc2_ && b2Math))
                                                                        {
                                                                           §§push(§§pop() & §§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(_loc2_ && param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr154:
                                                                                 §§push(§§pop() | §§pop());
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§push(uint(§§pop()));
                                                                                    loop40:
                                                                                    for(; _loc3_ || _loc2_; §§push(param1),if(!_loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    },if(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc2_ && param1))
                                                                                       {
                                                                                          §§goto(addr38);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr70);
                                                                                    },§§goto(addr253))
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop36:
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && b2Math))
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   addr237:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      addr238:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(4);
                                                                                                         addr239:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >> §§pop());
                                                                                                            loop22:
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§push(268435455);
                                                                                                               while(!(_loc2_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() & §§pop());
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() | §§pop());
                                                                                                                     addr252:
                                                                                                                     addr208:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        addr253:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param1 = §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ || b2Math))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop() | §§pop());
                                                                                                                        while(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1 = §§pop();
                                                                                                                              continue loop36;
                                                                                                                           }
                                                                                                                           §§goto(addr154);
                                                                                                                        }
                                                                                                                        §§goto(addr252);
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §§goto(addr127);
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr231);
                                                                                                }
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          break loop40;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       addr186:
                                                                                       while(!(_loc2_ && param1))
                                                                                       {
                                                                                          §§push(8);
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(§§pop() >> §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop13;
                                                                                                addr57:
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                   return §§pop() + §§pop();
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr239);
                                                                                       }
                                                                                       §§goto(addr238);
                                                                                       §§goto(addr165);
                                                                                    }
                                                                                    addr165:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr252);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr47);
                                                                           }
                                                                           continue loop12;
                                                                           addr135:
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     continue loop14;
                                                                     addr112:
                                                                  }
                                                                  §§goto(addr57);
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                                addr104:
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr112);
                                                §§push(§§pop() >> §§pop());
                                             }
                                             if(!(_loc3_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(16);
                                             if(!_loc2_)
                                             {
                                                §§goto(addr104);
                                             }
                                             §§goto(addr194);
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
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
            §§goto(addr237);
         }
      }
      
      public static function §4u§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || b2Math)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() > 0);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr59:
                        §§pop();
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc3_ || param1)
                        {
                           addr73:
                           return Boolean(§§pop());
                        }
                     }
                  }
                  §§goto(addr73);
               }
            }
         }
         §§goto(addr59);
      }
   }
}
