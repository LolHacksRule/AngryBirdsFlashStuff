package §6Z§
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
               b2Mat22_identity = b2Mat22.§]!X§(new b2Vec2(1,0),new b2Vec2(0,1));
               while(!(_loc1_ && b2Math))
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
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
      
      public static function §<?§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §7!c§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_)
         {
            §§push(param2.x);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ && param2)
               {
               }
               §§goto(addr60);
            }
            §§goto(addr56);
         }
         addr60:
         §§push(param1.y);
         if(_loc3_)
         {
            addr56:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §9""§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!(_loc4_ && param1))
         {
            §§push(param2.y);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && _loc3_))
               {
                  addr57:
                  §§push(param1.y);
                  if(!_loc4_)
                  {
                     addr64:
                     §§push(§§pop() - §§pop() * param2.x);
                  }
                  §§goto(addr64);
               }
               return §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr57);
      }
      
      public static function §+2§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!_loc5_)
         {
            §§push(param1.y);
            if(!(_loc5_ && b2Math))
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(-§§pop());
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop() * param1.x);
                  }
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §6"%§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc4_ && b2Math))
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               addr39:
               §§push(param2.y);
               if(!_loc4_)
               {
                  §§goto(addr44);
               }
               §§goto(addr62);
            }
            addr44:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc4_ && b2Math))
            {
               addr62:
               §§push(§§pop() * param2.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr39);
      }
      
      public static function §"]§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!(_loc4_ && b2Math))
         {
            §§push(param2.x);
            if(!(_loc4_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr40:
                  §§push(param1.col2.x);
                  if(_loc5_)
                  {
                     §§push(param2.y);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc4_ && param1))
                           {
                              addr78:
                              §§push(param2.x);
                              if(_loc5_)
                              {
                                 §§goto(addr109);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr78);
                     }
                     addr109:
                     §§push(§§pop() * §§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        addr90:
                        §§push(param1.col2.y);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * param2.y);
                        }
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
                  §§goto(addr78);
               }
               §§goto(addr68);
            }
            §§goto(addr90);
         }
         §§goto(addr40);
      }
      
      public static function §3r§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§7!c§(param2,param1.col1),§7!c§(param2,param1.col2));
      }
      
      public static function §!v§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §"]§(param1.R,param2);
         if(!(_loc5_ && b2Math))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc4_)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc4_);
            
         }
         return _loc3_;
      }
      
      public static function §5F§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §";§(param2,param1.position);
         if(_loc6_)
         {
            §§push(_loc3_.x);
            if(_loc6_ || _loc3_)
            {
               §§push(param1.R.col1.x);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        addr125:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc5_ && param2)
                     {
                     }
                     addr149:
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(_loc6_ || param2)
                        {
                           §§push(param1.R.col2.x);
                           if(_loc6_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_ || b2Math)
                              {
                                 addr99:
                                 §§push(_loc3_.y);
                                 if(!_loc5_)
                                 {
                                    addr93:
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                                 §§pop().y = §§pop() + §§pop();
                                 while(_loc6_)
                                 {
                                    _loc3_.x = _loc4_;
                                    if(_loc6_ || _loc3_)
                                    {
                                       return _loc3_;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr99);
                     }
                     addr150:
                  }
                  §§goto(addr149);
                  §§push(Number(§§pop()));
               }
               §§goto(addr125);
            }
            §§goto(addr149);
         }
         §§goto(addr150);
      }
      
      public static function §&!Z§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!_loc5_)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      public static function §";§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_ || param2)
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
      
      public static function §'T§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() - param2.y);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr41);
      }
      
      public static function §3!O§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() - param2.y);
            if(!_loc5_)
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
               if(_loc5_)
               {
               }
               §§goto(addr89);
            }
            §§goto(addr86);
         }
         addr89:
         §§push(_loc4_);
         if(!(_loc5_ && param1))
         {
            addr86:
            §§push(§§pop() * _loc4_);
         }
         return §§pop() + §§pop();
      }
      
      public static function §0!o§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §,!_§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§]!X§(§&!Z§(param1.col1,param2.col1),§&!Z§(param1.col2,param2.col2));
      }
      
      public static function §8!4§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§]!X§(§"]§(param1,param2.col1),§"]§(param1,param2.col2));
      }
      
      public static function §&!T§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§7!c§(param1.col1,param2.col1),§7!c§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§7!c§(param1.col1,param2.col2),§7!c§(param1.col2,param2.col2));
         return b2Mat22.§]!X§(_loc3_,_loc4_);
      }
      
      public static function §"!2§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  addr40:
                  §§push(param1);
                  if(_loc3_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr65:
                        §§push(-§§pop());
                        if(!_loc2_)
                        {
                           addr68:
                           return Number(§§pop());
                        }
                     }
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§goto(addr65);
                  }
               }
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr40);
      }
      
      public static function §8!&§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§"!2§(param1.x),§"!2§(param1.y));
      }
      
      public static function §?]§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§]!X§(§8!&§(param1.col1),§8!&§(param1.col2));
      }
      
      public static function §=t§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || b2Math)
            {
               if(§§pop() < param2)
               {
                  addr40:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || b2Math)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param1))
                  {
                     addr70:
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr40);
      }
      
      public static function §%!6§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§=t§(param1.x,param2.x),§=t§(param1.y,param2.y));
      }
      
      public static function §"!8§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               if(§§pop() > param2)
               {
                  addr45:
                  §§push(param1);
                  if(_loc4_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr71);
                  }
                  addr70:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§goto(addr70);
                  }
               }
            }
            addr71:
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public static function §9![§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§"!8§(param1.x,param2.x),§"!8§(param1.y,param2.y));
      }
      
      public static function §&a§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                              }
                           }
                           else
                           {
                              addr83:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           addr63:
                           §§push(param3);
                           if(!_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                                 addr79:
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr62);
               }
               addr62:
               if(§§pop() > param3)
               {
                  §§goto(addr63);
               }
               else
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§goto(addr83);
                  }
               }
               addr84:
               return §§pop();
            }
            §§goto(addr79);
         }
         §§goto(addr63);
      }
      
      public static function §9`§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §9![§(param2,§%!6§(param1,param3));
      }
      
      public static function §`Q§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(!(_loc4_ && _loc3_))
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
         }
      }
      
      public static function §,c§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §"i§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || param1)
                        {
                           §§goto(addr58);
                        }
                        _loc3_ = §§pop();
                        addr85:
                        §§push(_loc3_);
                     }
                     addr58:
                     §§push(§§pop() + param1);
                     if(_loc4_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ && param1)
                        {
                        }
                     }
                     §§goto(addr86);
                  }
                  addr86:
                  return §§pop();
               }
            }
            §§goto(addr58);
         }
         §§goto(addr85);
      }
      
      public static function §1'§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
                                       if(!(_loc3_ && b2Math))
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(2);
                                             addr259:
                                             while(true)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                addr260:
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   addr261:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      addr262:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         addr263:
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr258:
                                       }
                                       loop15:
                                       while(!_loc3_)
                                       {
                                          param1 = §§pop();
                                          loop16:
                                          for(; _loc2_ || param1; while(_loc2_ || b2Math)
                                          {
                                             §§goto(addr166);
                                             §§push(param1);
                                          })
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
                                                   while(_loc2_ || _loc3_)
                                                   {
                                                      §§push(§§pop() >> §§pop());
                                                      loop20:
                                                      while(_loc2_ || b2Math)
                                                      {
                                                         §§push(268435455);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            addr230:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() | §§pop());
                                                               addr231:
                                                               while(true)
                                                               {
                                                                  §§push(uint(§§pop()));
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr102:
                                                            if(!(_loc2_ || b2Math))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  loop36:
                                                                  while(!_loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop() | §§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!(_loc3_ && b2Math))
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                                 loop37:
                                                                                 for(; !(_loc3_ && _loc3_); §§push(param1),if(_loc3_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 },if(!_loc3_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop36;
                                                                                    }
                                                                                    §§goto(addr33);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr167);
                                                                                    }
                                                                                    addr166:
                                                                                 },§§goto(addr260))
                                                                                 {
                                                                                    addr153:
                                                                                    param1 = §§pop();
                                                                                    if(_loc3_ && b2Math)
                                                                                    {
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             continue loop37;
                                                                                          }
                                                                                          if(!(_loc2_ || b2Math))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(!(_loc2_ || _loc2_))
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§push(param1);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                §§push(8);
                                                                                             }
                                                                                             continue loop18;
                                                                                             addr167:
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             addr81:
                                                                                             §§push(16);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc2_ || param1))
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§push(§§pop() >> §§pop());
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   §§push(65535);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§goto(addr102);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() & §§pop());
                                                                                                         break loop36;
                                                                                                      }
                                                                                                      addr181:
                                                                                                   }
                                                                                                   if(!(_loc2_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr40:
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      break loop34;
                                                                                                   }
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      §§goto(addr181);
                                                                                                      §§push(16777215);
                                                                                                      §§goto(addr40);
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                   addr178:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr178);
                                                                                                   §§push(§§pop() >> §§pop());
                                                                                                   §§goto(addr81);
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                                addr170:
                                                                                             }
                                                                                             §§goto(addr260);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr258);
                                                                                          }
                                                                                          §§goto(addr153);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr208:
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue;
                                                                                    return §§pop() + §§pop();
                                                                                 }
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    §§goto(addr208);
                                                                                    §§goto(addr136);
                                                                                 }
                                                                                 addr136:
                                                                                 continue loop17;
                                                                                 addr205:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr231);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc2_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr205);
                                                                                 §§push(uint(§§pop()));
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           continue loop6;
                                                                           addr190:
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr230);
                                                                     }
                                                                  }
                                                                  while(_loc2_ || b2Math)
                                                                  {
                                                                     §§goto(addr190);
                                                                     §§push(§§pop() | §§pop());
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop4;
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          continue loop8;
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
         §§goto(addr208);
      }
      
      public static function §7!u§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() > 0);
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        addr54:
                        §§pop();
                        §§push((param1 & param1 - 1) == 0);
                        if(!_loc4_)
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
         §§goto(addr54);
      }
   }
}
