package §_-Ja§
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
            if(!(_loc1_ && b2Math))
            {
               b2Mat22_identity = b2Mat22.§_-HJ§(new b2Vec2(1,0),new b2Vec2(0,1));
               addr41:
               if(!_loc1_)
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §_-yU§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §_-Ly§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_ || _loc3_)
         {
            §§push(param2.x);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param2)
               {
                  addr49:
                  §§push(param1.y);
                  if(_loc4_)
                  {
                     addr56:
                     §§push(§§pop() + §§pop() * param2.y);
                  }
                  §§goto(addr56);
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr49);
      }
      
      public static function §_-iK§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || b2Math)
         {
            §§push(param2.y);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  addr36:
                  §§push(param1.y);
                  if(_loc3_ || b2Math)
                  {
                     addr55:
                     §§push(§§pop() - §§pop() * param2.x);
                  }
                  §§goto(addr55);
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr36);
      }
      
      public static function §_-a4§(param1:b2Vec2, param2:Number) : b2Vec2
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
               addr30:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc5_)
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && param2))
                  {
                     addr48:
                     §§push(§§pop() * param1.x);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
            §§goto(addr48);
         }
         §§goto(addr30);
      }
      
      public static function §_-dj§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc4_)
         {
            §§push(-§§pop());
            if(_loc5_ || param1)
            {
               §§goto(addr33);
            }
            §§goto(addr43);
         }
         addr33:
         §§push(param2.y);
         if(_loc5_ || _loc3_)
         {
            addr43:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * param2.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §_-FP§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc5_ || param1)
         {
            §§push(param2.x);
            if(_loc5_ || b2Math)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param2))
               {
                  §§push(param1.col2.x);
                  if(!_loc4_)
                  {
                     §§push(param2.y);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc5_ || param2)
                           {
                           }
                           §§goto(addr100);
                        }
                        §§push(param2.x);
                        if(_loc5_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              §§push(param1.col2.y);
                              if(!_loc4_)
                              {
                                 addr96:
                                 §§push(§§pop() * param2.y);
                              }
                              addr100:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr96);
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §_-P4§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-Ly§(param2,param1.col1),§_-Ly§(param2,param1.col2));
      }
      
      public static function §_-Y9§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §_-FP§(param1.R,param2);
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            if(_loc4_)
            {
               addr44:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!_loc5_)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr44);
      }
      
      public static function §_-CS§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §_-TD§(param2,param1.position);
         if(_loc5_ || param1)
         {
            §§push(_loc3_.x);
            if(!(_loc6_ && _loc3_))
            {
               §§push(param1.R.col1.x);
               if(_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param2))
                  {
                     §§push(_loc3_.y);
                     if(_loc5_ || _loc3_)
                     {
                        addr64:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc5_ || param2)
                     {
                        addr84:
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr88);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr84);
               }
               §§goto(addr64);
            }
            §§goto(addr84);
         }
         addr88:
         §§push(_loc3_);
         §§push(_loc3_.x);
         if(!(_loc6_ && b2Math))
         {
            §§push(param1.R.col2.x);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param1)
               {
               }
               §§goto(addr139);
            }
            §§goto(addr126);
         }
         addr139:
         §§push(_loc3_.y);
         if(!(_loc6_ && param1))
         {
            addr126:
            §§push(§§pop() * param1.R.col2.y);
         }
         §§pop().y = §§pop() + §§pop();
         if(!_loc6_)
         {
            addr142:
            _loc3_.x = _loc4_;
         }
         return _loc3_;
      }
      
      public static function §_-Qv§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc5_ && _loc3_))
         {
            §§push(param2.x);
            if(!(_loc5_ && b2Math))
            {
               §§goto(addr40);
            }
            §§goto(addr56);
         }
         addr40:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!(_loc5_ && b2Math))
         {
            addr56:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §_-TD§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(!_loc5_)
            {
               §§goto(addr30);
            }
            §§goto(addr41);
         }
         addr30:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc4_)
         {
            addr41:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §_-PT§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc5_ && _loc3_))
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc6_ || param2)
            {
               §§push(§§pop() - param2.y);
               if(!(_loc5_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr28);
      }
      
      public static function §_-z5§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || _loc3_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(!_loc5_)
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(_loc3_);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc6_)
                     {
                        addr62:
                        §§push(_loc4_);
                        if(_loc6_ || _loc3_)
                        {
                           addr77:
                           §§push(§§pop() * _loc4_);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     return §§pop();
                  }
                  §§goto(addr77);
               }
               §§goto(addr62);
            }
            §§goto(addr46);
         }
         §§goto(addr28);
      }
      
      public static function §_-cR§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || b2Math)
         {
            §§push(param2.x);
            if(!(_loc5_ && _loc3_))
            {
               addr39:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr39);
      }
      
      public static function §_-Kq§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§_-HJ§(§_-Qv§(param1.col1,param2.col1),§_-Qv§(param1.col2,param2.col2));
      }
      
      public static function §_-S2§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§_-HJ§(§_-FP§(param1,param2.col1),§_-FP§(param1,param2.col2));
      }
      
      public static function §_-qv§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§_-Ly§(param1.col1,param2.col1),§_-Ly§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§_-Ly§(param1.col1,param2.col2),§_-Ly§(param1.col2,param2.col2));
         return b2Mat22.§_-HJ§(_loc3_,_loc4_);
      }
      
      public static function §_-xY§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  addr34:
                  §§push(param1);
                  if(_loc3_ || b2Math)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ || param1))
                     {
                        addr61:
                        §§push(-§§pop());
                        if(!_loc3_)
                        {
                        }
                     }
                     §§goto(addr65);
                  }
               }
               else
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§goto(addr61);
                  }
               }
            }
            addr65:
            return Number(§§pop());
         }
         §§goto(addr34);
      }
      
      public static function §_-zM§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-xY§(param1.x),§_-xY§(param1.y));
      }
      
      public static function §_-4r§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§_-HJ§(§_-zM§(param1.col1),§_-zM§(param1.col2));
      }
      
      public static function §_-cD§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() < param2)
               {
                  addr39:
                  §§push(param1);
                  if(_loc4_)
                  {
                     addr42:
                     §§push(Number(§§pop()));
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr67);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr67:
               return §§pop();
            }
            §§goto(addr42);
         }
         §§goto(addr39);
      }
      
      public static function §_-2j§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-cD§(param1.x,param2.x),§_-cD§(param1.y,param2.y));
      }
      
      public static function §_-YD§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || param2)
            {
               if(§§pop() > param2)
               {
                  addr33:
                  §§push(param1);
                  if(!(_loc4_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ || param1)
                     {
                     }
                     §§goto(addr61);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr61);
                  }
               }
            }
            addr61:
            return Number(§§pop());
         }
         §§goto(addr33);
      }
      
      public static function §_-d§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§_-YD§(param1.x,param2.x),§_-YD§(param1.y,param2.y));
      }
      
      public static function §_-Gj§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            §§push(param2);
            if(!_loc5_)
            {
               §§push(§§pop() < §§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr37:
                        §§push(Number(param2));
                     }
                     else
                     {
                        addr53:
                        §§push(Number(param3));
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        addr52:
                        if(§§pop() > param3)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           §§push(Number(param1));
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr52);
         }
         §§goto(addr37);
      }
      
      public static function §_-oB§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §_-d§(param2,§_-2j§(param1,param3));
      }
      
      public static function §_-wn§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc4_ || b2Math)
               {
                  §§pop()[§§pop()] = param2[0];
                  if(!_loc5_)
                  {
                     addr53:
                     param2[0] = _loc3_;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public static function §_-a3§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() - 1);
         }
         return §§pop();
      }
      
      public static function §_-Ue§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(_loc4_ || b2Math)
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc5_)
                  {
                     addr45:
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§goto(addr59);
                        }
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr59);
               }
               addr59:
               §§push(§§pop() + param1);
               if(_loc4_)
               {
                  addr62:
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     _loc3_ = §§pop();
                     addr66:
                     §§push(_loc3_);
                  }
               }
               return §§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr66);
      }
      
      public static function §_-mx§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(_loc2_ || b2Math)
            {
               §§push(param1);
               if(_loc2_ || param1)
               {
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(§§pop() >> §§pop());
                     if(_loc2_)
                     {
                        §§push(2147483647);
                        if(!_loc3_)
                        {
                           §§push(§§pop() | §§pop() & §§pop());
                           if(_loc2_)
                           {
                              §§push(uint(§§pop()));
                              if(_loc2_ || param1)
                              {
                                 param1 = §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(param1);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(2);
                                          if(!_loc3_)
                                          {
                                             addr74:
                                             §§push(§§pop() >> §§pop());
                                             if(_loc2_)
                                             {
                                                §§push(1073741823);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr86:
                                                   §§push(§§pop() | §§pop() & §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      param1 = uint(§§pop());
                                                      if(!(_loc3_ && b2Math))
                                                      {
                                                         §§push(param1);
                                                         if(_loc2_ || b2Math)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§push(4);
                                                               if(!_loc3_)
                                                               {
                                                                  addr124:
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(_loc2_ || b2Math)
                                                                  {
                                                                     §§push(268435455);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr135:
                                                                        §§push(§§pop() | §§pop() & §§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           if(_loc2_)
                                                                           {
                                                                              addr142:
                                                                              param1 = §§pop();
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       addr161:
                                                                                       §§push(8);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() >> §§pop());
                                                                                          §§push(16777215);
                                                                                          if(!(_loc3_ && b2Math))
                                                                                          {
                                                                                             addr173:
                                                                                             §§push(§§pop() & §§pop());
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr176:
                                                                                                §§push(§§pop() | §§pop());
                                                                                                if(!(_loc3_ && b2Math))
                                                                                                {
                                                                                                   addr185:
                                                                                                   param1 = uint(§§pop());
                                                                                                   addr184:
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§goto(addr191);
                                                                                                   }
                                                                                                   §§goto(addr218);
                                                                                                }
                                                                                                §§goto(addr216);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr199);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr191);
                                                                              }
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                        §§goto(addr184);
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr161);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr86);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr74);
               }
               §§goto(addr191);
            }
            §§goto(addr217);
         }
         addr191:
         §§push(param1);
         §§push(param1 >> 16);
         if(!(_loc3_ && param1))
         {
            addr199:
            §§push(§§pop() & 65535);
            if(_loc2_ || b2Math)
            {
               addr217:
               param1 = uint(§§pop() | §§pop());
               addr218:
               §§push(param1);
               §§push(1);
               addr216:
               addr215:
            }
         }
         return §§pop() + §§pop();
      }
      
      public static function §_-ZK§(param1:uint) : Boolean
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
                  if(§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§goto(addr38);
                     }
                  }
                  §§goto(addr59);
               }
            }
            §§goto(addr38);
         }
         addr38:
         §§pop();
         §§push((param1 & param1 - 1) == 0);
         if(_loc3_ || b2Math)
         {
            addr59:
            §§push(Boolean(§§pop()));
         }
         return §§pop();
      }
   }
}
