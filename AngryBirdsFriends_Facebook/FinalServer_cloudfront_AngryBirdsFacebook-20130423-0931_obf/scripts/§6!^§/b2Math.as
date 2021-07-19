package §6!^§
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
            do
            {
               b2Mat22_identity = b2Mat22.§`6§(new b2Vec2(1,0),new b2Vec2(0,1));
               do
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §4!d§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §[!3§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_ || param2)
         {
            §§push(param2.x);
            if(_loc4_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
               }
               §§goto(addr56);
            }
            §§goto(addr52);
         }
         addr56:
         §§push(param1.y);
         if(!_loc3_)
         {
            addr52:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §]c§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || _loc3_)
         {
            §§push(param2.y);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
               {
                  addr57:
                  §§push(param1.y);
                  if(!(_loc4_ && param1))
                  {
                     addr66:
                     §§push(§§pop() * param2.x);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr66);
         }
         §§goto(addr57);
      }
      
      public static function §@!§(param1:b2Vec2, param2:Number) : b2Vec2
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
               if(!(_loc5_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc5_)
                  {
                  }
                  §§goto(addr54);
               }
               §§push(§§pop() * param1.x);
            }
            addr54:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §6!?§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(!(_loc5_ && b2Math))
            {
               §§push(param2.y);
               if(!_loc5_)
               {
                  §§goto(addr43);
               }
               §§goto(addr46);
            }
         }
         addr43:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc5_)
         {
            addr46:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §5!w§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc4_ || param2)
         {
            §§push(param2.x);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param2)
               {
                  addr44:
                  §§push(param1.col2.x);
                  if(!(_loc5_ && param2))
                  {
                     §§push(param2.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && param1))
                        {
                           addr77:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc5_ && b2Math))
                           {
                              §§push(param2.x);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr118);
                              }
                              addr117:
                              addr118:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§push(param1.col2.y);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() * param2.y);
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr118);
               }
               §§goto(addr77);
            }
            §§goto(addr118);
         }
         §§goto(addr44);
      }
      
      public static function §60§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§[!3§(param2,param1.col1),§[!3§(param2,param1.col2));
      }
      
      public static function §^T§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §5!w§(param1.R,param2);
         if(_loc4_ || b2Math)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc5_ && param1))
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
         while(!_loc4_);
         
         return _loc3_;
      }
      
      public static function §&"O§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = §9N§(param2,param1.position);
         if(_loc6_)
         {
            §§push(_loc3_.x);
            if(_loc6_)
            {
               §§push(param1.R.col1.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§push(_loc3_.y);
                     if(_loc6_)
                     {
                        addr125:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && b2Math))
                     {
                        addr139:
                        _loc4_ = §§pop();
                        do
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc6_)
                           {
                              §§push(param1.R.col2.x);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc6_ || b2Math))
                                 {
                                    continue;
                                 }
                                 addr86:
                                 §§push(_loc3_.y);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              continue;
                           }
                           §§goto(addr86);
                        }
                        while(§§pop().y = §§pop(), do
                        {
                           _loc3_.x = _loc4_;
                        }
                        while(_loc5_ && param2);
                        , !_loc6_);
                        
                        return _loc3_;
                        addr50:
                     }
                  }
                  §§goto(addr139);
               }
               §§goto(addr125);
            }
            §§goto(addr139);
         }
         §§goto(addr50);
      }
      
      public static function §^_§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      public static function §9N§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
               §§goto(addr36);
            }
            §§goto(addr40);
         }
         addr36:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc4_)
         {
            addr40:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §4"H§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || param2)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc6_ || _loc3_)
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
         §§goto(addr41);
      }
      
      public static function §0U§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(!(_loc5_ && _loc3_))
            {
               addr46:
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
            if(_loc6_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     addr83:
                     §§push(_loc4_);
                     if(_loc6_ || param1)
                     {
                        addr93:
                        §§push(§§pop() + §§pop() * _loc4_);
                     }
                     §§goto(addr93);
                  }
                  return §§pop();
               }
               §§goto(addr93);
            }
            §§goto(addr83);
         }
         §§goto(addr46);
      }
      
      public static function §7d§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc5_ && b2Math))
         {
            §§push(param2.x);
            if(_loc4_)
            {
               §§goto(addr40);
            }
            §§goto(addr48);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            addr48:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §6c§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§`6§(§^_§(param1.col1,param2.col1),§^_§(param1.col2,param2.col2));
      }
      
      public static function §?"K§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§`6§(§5!w§(param1,param2.col1),§5!w§(param1,param2.col2));
      }
      
      public static function §;B§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§[!3§(param1.col1,param2.col1),§[!3§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§[!3§(param1.col1,param2.col2),§[!3§(param1.col2,param2.col2));
         return b2Mat22.§`6§(_loc3_,_loc4_);
      }
      
      public static function §#X§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && b2Math))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > 0)
               {
                  addr39:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc2_ || param1))
                     {
                        addr54:
                        §§push(-§§pop());
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§goto(addr54);
               }
               else
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§goto(addr54);
                  }
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr39);
      }
      
      public static function §@"B§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§#X§(param1.x),§#X§(param1.y));
      }
      
      public static function §9!T§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§`6§(§@"B§(param1.col1),§@"B§(param1.col2));
      }
      
      public static function §@U§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || b2Math)
            {
               if(§§pop() < param2)
               {
                  addr49:
                  §§push(param1);
                  if(!(_loc4_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ && param2)
                     {
                        addr74:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     §§goto(addr74);
                  }
               }
               return §§pop();
            }
            §§goto(addr74);
         }
         §§goto(addr49);
      }
      
      public static function §+!5§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§@U§(param1.x,param2.x),§@U§(param1.y,param2.y));
      }
      
      public static function §["2§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr50:
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ && param2)
                     {
                        addr75:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr75);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public static function §0M§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§["2§(param1.x,param2.x),§["2§(param1.y,param2.y));
      }
      
      public static function §1"T§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(param2);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param3))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || b2Math)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              addr58:
                              §§push(Number(§§pop()));
                              if(!(_loc4_ || param1))
                              {
                                 addr94:
                              }
                           }
                           else
                           {
                              addr98:
                              return Number(§§pop());
                           }
                        }
                        else
                        {
                           addr83:
                           §§push(param3);
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc5_ && param3))
                              {
                                 §§goto(addr94);
                              }
                              else
                              {
                                 §§goto(addr98);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           addr82:
                           if(§§pop() > param3)
                           {
                              §§goto(addr83);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 §§goto(addr98);
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr58);
         }
         §§goto(addr83);
      }
      
      public static function §=!b§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §0M§(param2,§+!5§(param1,param3));
      }
      
      public static function §;R§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(_loc5_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr78:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
            addr77:
         }
         while(true)
         {
            §§push(param2);
            if(_loc5_ || param2)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§pop()[§§pop()] = _loc3_;
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr77);
            }
            §§goto(addr78);
         }
      }
      
      public static function §9!f§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §-o§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(_loc5_ || _loc3_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_ || b2Math)
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || param1)
                        {
                           §§goto(addr79);
                        }
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr82);
               }
               addr79:
               §§push(§§pop() + param1);
               if(_loc5_)
               {
                  addr82:
                  §§push(Number(§§pop()));
                  if(_loc5_ || param1)
                  {
                     addr90:
                     _loc3_ = §§pop();
                     return _loc3_;
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr90);
      }
      
      public static function §#!e§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            while(true)
            {
               §§push(param1);
               addr273:
               while(true)
               {
                  §§push(1);
                  addr274:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     addr275:
                     while(true)
                     {
                        §§push(2147483647);
                        addr276:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           addr277:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              addr278:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr279:
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
            addr272:
         }
         loop8:
         while(true)
         {
            §§push(param1);
            if(_loc3_ || b2Math)
            {
               §§push(param1);
               loop9:
               while(true)
               {
                  §§push(2);
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     while(!_loc2_)
                     {
                        §§push(1073741823);
                        loop12:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           addr258:
                           while(!_loc2_)
                           {
                              §§push(§§pop() | §§pop());
                              loop14:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr262:
                                 loop15:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr263:
                                    while(!(_loc2_ && _loc3_))
                                    {
                                       §§push(param1);
                                       while(!_loc2_)
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(4);
                                             addr211:
                                             while(true)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(268435455);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      addr184:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop20;
                                                      }
                                                      continue loop12;
                                                   }
                                                   addr220:
                                                }
                                                addr221:
                                                while(true)
                                                {
                                                   §§push(§§pop() | §§pop());
                                                   continue loop14;
                                                }
                                             }
                                          }
                                       }
                                       continue loop15;
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           §§goto(addr277);
                        }
                     }
                     §§goto(addr275);
                  }
                  while(true)
                  {
                     if(_loc2_ && param1)
                     {
                        continue loop9;
                     }
                     §§goto(addr178);
                     §§push(8);
                  }
               }
            }
            §§goto(addr262);
         }
      }
      
      public static function §%"U§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || b2Math)
         {
            §§push(param1);
            if(!(_loc4_ && b2Math))
            {
               §§push(§§pop() > 0);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || b2Math)
                     {
                        §§pop();
                        addr71:
                        addr70:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr79);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr79:
               return §§pop();
            }
            §§goto(addr71);
         }
         §§goto(addr70);
      }
   }
}
