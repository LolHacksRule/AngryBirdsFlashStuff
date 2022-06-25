package §_-Yp§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Math)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            while(true)
            {
               b2Mat22_identity = b2Mat22.§_-qY§(new b2Vec2(1,0),new b2Vec2(0,1));
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §_-a8§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §_-r8§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(_loc3_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr42:
                  §§push(param1.y);
                  if(!_loc4_)
                  {
                     addr49:
                     §§push(§§pop() + §§pop() * param2.y);
                  }
                  §§goto(addr49);
               }
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr42);
      }
      
      public static function §_-rd§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!(_loc4_ && param1))
         {
            §§push(param2.y);
            if(_loc3_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  addr47:
                  §§push(param1.y);
                  if(_loc3_)
                  {
                     addr51:
                     §§push(§§pop() * param2.x);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr51);
         }
         §§goto(addr47);
      }
      
      public static function §_-bM§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc5_ && param1))
         {
            §§push(param1.y);
            if(!_loc5_)
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc4_)
               {
                  §§goto(addr43);
               }
               §§goto(addr51);
            }
            addr43:
            §§push(-§§pop());
            if(_loc4_ || param2)
            {
               addr51:
               §§push(§§pop() * param1.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §_-2t§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(!_loc5_)
            {
               §§push(param2.y);
               if(!_loc5_)
               {
                  §§goto(addr38);
               }
               §§goto(addr46);
            }
         }
         addr38:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc5_ && b2Math))
         {
            addr46:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §_-S4§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param1))
               {
                  §§push(param1.col2.x);
                  if(!_loc5_)
                  {
                     §§push(param2.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr66:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!_loc5_)
                           {
                              §§push(param2.x);
                              if(_loc4_)
                              {
                                 §§goto(addr88);
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                     addr88:
                     §§push(§§pop() * §§pop());
                     if(!_loc5_)
                     {
                        §§push(param1.col2.y);
                        if(!_loc5_)
                        {
                           §§push(§§pop() * param2.y);
                        }
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                     §§push(§§pop() + §§pop());
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr88);
         }
         §§goto(addr66);
      }
      
      public static function §_-bf§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-r8§(param2,param1.col1),§_-r8§(param2,param1.col2));
      }
      
      public static function §_-yP§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §_-S4§(param1.R,param2);
         if(_loc4_ || param2)
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
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc4_ || b2Math));
            
         }
         return _loc3_;
      }
      
      public static function §_-Yk§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §_-DO§(param2,param1.position);
         if(!_loc6_)
         {
            §§push(_loc3_.x);
            if(!(_loc6_ && param1))
            {
               §§push(param1.R.col1.x);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(_loc3_.y);
                     if(_loc5_)
                     {
                        addr134:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc5_)
                     {
                        addr142:
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
                           if(_loc5_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 addr78:
                                 §§push(_loc3_.y);
                                 if(!_loc6_)
                                 {
                                    addr82:
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().y = §§pop();
                              while(!_loc6_)
                              {
                                 _loc3_.x = _loc4_;
                                 if(!(_loc6_ && param2))
                                 {
                                    return _loc3_;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr78);
                     }
                     addr144:
                  }
                  §§goto(addr142);
               }
               §§goto(addr134);
            }
            §§goto(addr142);
         }
         §§goto(addr144);
      }
      
      public static function §_-1K§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               §§goto(addr36);
            }
            §§goto(addr45);
         }
         addr36:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!(_loc5_ && param1))
         {
            addr45:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §_-DO§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!_loc5_)
            {
               addr36:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(!_loc5_)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      public static function §_-Gt§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() - param2.y);
               if(_loc6_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr36);
      }
      
      public static function §_-LF§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || b2Math)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(!(_loc5_ && b2Math))
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(_loc6_ || param1)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc6_)
                     {
                        addr83:
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           addr88:
                           §§push(§§pop() + §§pop() * _loc4_);
                        }
                        §§goto(addr88);
                     }
                     return §§pop();
                  }
                  §§goto(addr88);
               }
               §§goto(addr83);
            }
            §§goto(addr67);
         }
         §§goto(addr41);
      }
      
      public static function §_-xN§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(!(_loc5_ && _loc3_))
            {
               §§goto(addr40);
            }
            §§goto(addr48);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc4_ || param2)
         {
            addr48:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §_-03Y§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§_-qY§(§_-1K§(param1.col1,param2.col1),§_-1K§(param1.col2,param2.col2));
      }
      
      public static function §_-nc§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§_-qY§(§_-S4§(param1,param2.col1),§_-S4§(param1,param2.col2));
      }
      
      public static function §_-Xi§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§_-r8§(param1.col1,param2.col1),§_-r8§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§_-r8§(param1.col1,param2.col2),§_-r8§(param1.col2,param2.col2));
         return b2Mat22.§_-qY§(_loc3_,_loc4_);
      }
      
      public static function §_-010§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || b2Math)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() > 0)
               {
                  §§goto(addr54);
               }
               else
               {
                  §§push(param1);
                  if(_loc2_ || b2Math)
                  {
                     §§goto(addr74);
                  }
               }
            }
            §§goto(addr77);
         }
         addr54:
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(Number(§§pop()));
            if(_loc3_)
            {
               addr77:
               return Number(§§pop());
            }
         }
         else
         {
            addr74:
            §§push(-§§pop());
            if(_loc2_)
            {
               §§goto(addr77);
            }
         }
         return §§pop();
      }
      
      public static function §_-02-§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-010§(param1.x),§_-010§(param1.y));
      }
      
      public static function §_-Eb§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§_-qY§(§_-02-§(param1.col1),§_-02-§(param1.col2));
      }
      
      public static function §_-fa§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() < param2)
               {
                  addr45:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        addr56:
                        return §§pop();
                        addr51:
                     }
                     §§goto(addr56);
                  }
                  addr55:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr51);
         }
         §§goto(addr45);
      }
      
      public static function §_-hv§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-fa§(param1.x,param2.x),§_-fa§(param1.y,param2.y));
      }
      
      public static function §_-yL§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc4_ || param1)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                     if(_loc3_ && b2Math)
                     {
                     }
                     §§goto(addr56);
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§goto(addr56);
                  }
               }
               addr56:
               return Number(§§pop());
            }
            §§goto(addr43);
         }
         §§goto(addr35);
      }
      
      public static function §_-Qg§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-yL§(param1.x,param2.x),§_-yL§(param1.y,param2.y));
      }
      
      public static function §_-ZK§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || b2Math)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              addr53:
                              §§push(Number(§§pop()));
                              if(_loc5_ && param3)
                              {
                                 addr86:
                                 §§push(Number(§§pop()));
                                 if(!_loc4_)
                                 {
                                    addr93:
                                    return Number(§§pop());
                                 }
                                 else
                                 {
                                    addr89:
                                 }
                              }
                           }
                           else
                           {
                              addr80:
                              if(§§pop() > param3)
                              {
                                 addr83:
                                 §§push(param3);
                                 if(_loc4_)
                                 {
                                    §§goto(addr86);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr93);
                                 }
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc5_ && param2))
                        {
                           §§goto(addr80);
                        }
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr53);
         }
         §§goto(addr83);
      }
      
      public static function §_-jp§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §_-Qg§(param2,§_-hv§(param1,param3));
      }
      
      public static function §_-d9§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(!(_loc5_ && param1))
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
      
      public static function §_-c1§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(_loc1_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §_-0BR§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!(_loc4_ && param2))
         {
            §§push(param2);
            if(!(_loc4_ && param1))
            {
               §§push(param1);
               if(!(_loc4_ && b2Math))
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc4_)
                  {
                     addr67:
                     §§push(_loc3_);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && b2Math))
                        {
                           addr84:
                           addr83:
                           §§push(§§pop() + param1);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                              }
                              §§goto(addr92);
                           }
                           _loc3_ = §§pop();
                           §§push(_loc3_);
                        }
                        addr92:
                        return §§pop();
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr83);
               }
               §§goto(addr84);
            }
            §§goto(addr67);
         }
         §§goto(addr84);
      }
      
      public static function §_-89§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(param1);
               while(true)
               {
                  §§push(1);
                  addr252:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     if(!_loc2_)
                     {
                        addr256:
                        §§push(2147483647);
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                        }
                        addr256:
                     }
                     addr257:
                     while(true)
                     {
                        §§push(§§pop() | §§pop());
                        addr258:
                        while(true)
                        {
                           §§push(uint(§§pop()));
                        }
                     }
                  }
               }
               addr251:
            }
            loop5:
            while(true)
            {
               param1 = §§pop();
               loop6:
               while(true)
               {
                  §§push(param1);
                  loop7:
                  while(_loc3_)
                  {
                     §§push(param1);
                     loop8:
                     while(true)
                     {
                        §§push(2);
                        loop9:
                        while(true)
                        {
                           §§push(§§pop() >> §§pop());
                           loop10:
                           while(true)
                           {
                              §§push(1073741823);
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 loop12:
                                 while(!_loc2_)
                                 {
                                    §§push(§§pop() | §§pop());
                                    loop13:
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       loop14:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             §§push(param1);
                                             while(!_loc2_)
                                             {
                                                §§push(param1);
                                                continue loop8;
                                                loop30:
                                                for(; _loc3_ || _loc3_; if(_loc2_ && b2Math)
                                                {
                                                   continue;
                                                },if(_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(param1);
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr61);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr145);
                                                },§§goto(addr220))
                                                {
                                                   param1 = §§pop();
                                                   loop31:
                                                   for(; _loc3_; loop34:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(1);
                                                      if(_loc3_)
                                                      {
                                                         return §§pop() + §§pop();
                                                      }
                                                      addr94:
                                                      loop33:
                                                      while(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() | §§pop());
                                                            if(_loc2_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(uint(§§pop()));
                                                                  continue loop34;
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(uint(§§pop()));
                                                                  addr220:
                                                                  while(true)
                                                                  {
                                                                     param1 = §§pop();
                                                                     break loop31;
                                                                  }
                                                               }
                                                               addr219:
                                                            }
                                                         }
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            §§push(16777215);
                                                            while(_loc3_)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               break loop33;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         continue loop13;
                                                      }
                                                      addr94:
                                                   })
                                                   {
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            continue loop30;
                                                         }
                                                         continue loop31;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc2_ && b2Math))
                                                      {
                                                         §§push(param1);
                                                         while(_loc3_)
                                                         {
                                                            §§push(8);
                                                            while(true)
                                                            {
                                                               §§goto(addr149);
                                                               addr61:
                                                               §§push(§§pop() >> §§pop());
                                                               §§push(16);
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr69:
                                                               if(_loc2_ && b2Math)
                                                               {
                                                                  while(_loc3_)
                                                                  {
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() >> §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr217);
                                                                           §§push(268435455);
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr252);
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                                  addr202:
                                                               }
                                                               §§push(§§pop() >> §§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_ || b2Math)
                                                                  {
                                                                     §§push(65535);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§goto(addr94);
                                                                              §§push(§§pop() & §§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr256);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              addr218:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr217:
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr94);
                                                               §§goto(addr256);
                                                            }
                                                         }
                                                         continue loop8;
                                                         addr145:
                                                      }
                                                      continue loop30;
                                                   }
                                                }
                                             }
                                             continue loop14;
                                          }
                                       }
                                       while(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr169);
                                          §§push(uint(§§pop()));
                                       }
                                    }
                                 }
                                 §§goto(addr257);
                              }
                           }
                        }
                     }
                  }
                  continue loop5;
               }
            }
         }
         §§goto(addr188);
      }
      
      public static function §_-Yc§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() > 0);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        addr42:
                        addr41:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr50);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr50:
               return §§pop();
            }
            §§goto(addr42);
         }
         §§goto(addr41);
      }
   }
}
