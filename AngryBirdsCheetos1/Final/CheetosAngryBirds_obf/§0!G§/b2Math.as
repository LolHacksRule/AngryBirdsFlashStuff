package §0!G§
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
            do
            {
               b2Mat22_identity = b2Mat22.§9B§(new b2Vec2(1,0),new b2Vec2(0,1));
               do
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §6m§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function static(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!(_loc4_ && param1))
            {
               §§goto(addr65);
            }
            §§push(§§pop() + §§pop());
         }
         addr65:
         §§push(§§pop() * §§pop());
         if(_loc3_ || param1)
         {
            §§push(param1.y);
            if(!_loc4_)
            {
               return §§pop() * param2.y;
            }
         }
      }
      
      public static function §0!Z§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && b2Math))
         {
            §§push(param2.y);
            if(_loc4_ || b2Math)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
               }
               §§goto(addr66);
            }
            §§goto(addr62);
         }
         addr66:
         §§push(param1.y);
         if(!_loc3_)
         {
            addr62:
            §§push(§§pop() * param2.x);
         }
         return §§pop() - §§pop();
      }
      
      public static function §8!;§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc5_ || param1)
         {
            §§push(param1.y);
            if(_loc5_ || param2)
            {
               addr46:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc5_)
               {
                  §§goto(addr49);
               }
               §§goto(addr62);
            }
            addr49:
            §§push(-§§pop());
            if(_loc5_)
            {
               addr62:
               §§push(§§pop() * param1.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      public static function §28§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc5_ && b2Math))
         {
            §§push(-§§pop());
            if(!(_loc5_ && param1))
            {
               addr43:
               §§push(param2.y);
               if(!_loc5_)
               {
                  §§goto(addr48);
               }
               §§goto(addr61);
            }
            addr48:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!_loc5_)
            {
               addr61:
               §§push(§§pop() * param2.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr43);
      }
      
      public static function §2!3§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc5_ || b2Math)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr35:
                  §§push(param1.col2.x);
                  if(_loc5_)
                  {
                     addr40:
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr58:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc4_ && b2Math))
                           {
                              §§push(param2.x);
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr104);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr80);
                        }
                        addr104:
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr80:
                           §§push(param1.col2.y);
                           if(_loc5_ || b2Math)
                           {
                              addr100:
                              §§push(§§pop() * param2.y);
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr80);
               }
               §§goto(addr58);
            }
            §§goto(addr40);
         }
         §§goto(addr35);
      }
      
      public static function §6Y§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(static(param2,param1.col1),static(param2,param1.col2));
      }
      
      public static function §@E§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §2!3§(param1.R,param2);
         if(_loc5_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc5_ || b2Math)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc4_ && _loc3_);
            
         }
         return _loc3_;
      }
      
      public static function §;!B§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = §4_§(param2,param1.position);
         if(_loc5_)
         {
            §§push(_loc3_.x);
            if(_loc5_ || _loc3_)
            {
               §§push(param1.R.col1.x);
               if(!(_loc6_ && _loc3_))
               {
                  addr142:
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§push(_loc3_.y);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * param1.R.col1.y);
                     }
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc5_)
                     {
                        §§push(param1.R.col2.x);
                        if(!(_loc6_ && param1))
                        {
                           addr95:
                           §§push(§§pop() * §§pop());
                           if(!_loc6_)
                           {
                              §§push(_loc3_.y);
                              if(!(_loc6_ && param2))
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
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
               }
            }
            §§goto(addr142);
         }
         §§goto(addr96);
      }
      
      public static function §do §(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(_loc4_ || param1)
            {
               §§goto(addr41);
            }
            §§goto(addr55);
         }
         addr41:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(_loc4_)
         {
            addr55:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §4_§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!(_loc4_ && b2Math))
            {
               §§goto(addr42);
            }
            §§goto(addr56);
         }
         addr42:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc5_)
         {
            addr56:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §]!H§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(!(_loc6_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.y);
            if(_loc5_ || b2Math)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function §<"§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_ || param1)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc6_)
            {
               §§push(§§pop() - param2.y);
               if(_loc5_ || b2Math)
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(_loc5_ || b2Math)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc5_ || b2Math)
                     {
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr95);
               }
               addr98:
               §§push(_loc4_);
               if(_loc5_)
               {
                  addr95:
                  §§push(§§pop() * _loc4_);
               }
               return §§pop() + §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr30);
      }
      
      public static function § X§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §9!,§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§9B§(§do §(param1.col1,param2.col1),§do §(param1.col2,param2.col2));
      }
      
      public static function §extends§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§9B§(§2!3§(param1,param2.col1),§2!3§(param1,param2.col2));
      }
      
      public static function §4!T§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(static(param1.col1,param2.col1),static(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(static(param1.col1,param2.col2),static(param1.col2,param2.col2));
         return b2Mat22.§9B§(_loc3_,_loc4_);
      }
      
      public static function §8M§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() > 0)
               {
                  addr40:
                  §§push(param1);
                  if(_loc3_ || b2Math)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ || param1))
                     {
                        addr70:
                        §§push(-§§pop());
                        if(!_loc2_)
                        {
                           addr73:
                           return Number(§§pop());
                        }
                     }
                     else
                     {
                        addr66:
                     }
                     return §§pop();
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr66);
         }
         §§goto(addr40);
      }
      
      public static function §@%§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§8M§(param1.x),§8M§(param1.y));
      }
      
      public static function §;!$§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§9B§(§@%§(param1.col1),§@%§(param1.col2));
      }
      
      public static function §[S§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() < param2)
               {
                  addr40:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr61);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§goto(addr61);
                  }
               }
            }
            addr61:
            return Number(§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §>!;§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§[S§(param1.x,param2.x),§[S§(param1.y,param2.y));
      }
      
      public static function §>e§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr34:
                  §§push(param1);
                  if(_loc3_)
                  {
                     addr47:
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        addr54:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr54);
                  }
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr34);
      }
      
      public static function §,M§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§>e§(param1.x,param2.x),§>e§(param1.y,param2.y));
      }
      
      public static function §-!1§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(param2);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || b2Math)
                        {
                           addr56:
                           §§push(param2);
                           if(_loc5_ || param2)
                           {
                              addr64:
                              §§push(Number(§§pop()));
                              if(_loc5_ || param2)
                              {
                              }
                           }
                           else
                           {
                              addr105:
                           }
                        }
                        else
                        {
                           addr84:
                           §§push(param3);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr105);
                              }
                              §§goto(addr110);
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc4_ && param3))
                        {
                           addr83:
                           if(§§pop() > param3)
                           {
                              §§goto(addr84);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§goto(addr84);
                              }
                           }
                        }
                     }
                     addr110:
                     return §§pop();
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr64);
         }
         §§goto(addr56);
      }
      
      public static function §2J§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §,M§(param2,§>!;§(param1,param3));
      }
      
      public static function §36§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1[0];
         if(_loc5_)
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
            if(!(_loc4_ && param2))
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§pop()[§§pop()] = _loc3_;
                  if(_loc5_ || param1)
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
      
      public static function §4<§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(_loc1_ || b2Math)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §6S§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.random();
         if(_loc5_ || param1)
         {
            §§push(param2);
            if(!(_loc4_ && param2))
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || b2Math)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && b2Math))
                        {
                           §§goto(addr69);
                        }
                     }
                     addr69:
                     §§push(§§pop() + param1);
                     if(_loc4_)
                     {
                     }
                     §§goto(addr90);
                  }
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && _loc3_))
                  {
                     addr90:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public static function §0P§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
                                          while(true)
                                          {
                                             §§push(2);
                                             addr273:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop() >> §§pop());
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   addr282:
                                                   addr185:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      addr283:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         addr284:
                                                         while(!_loc2_)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            while(!_loc2_)
                                                            {
                                                               param1 = §§pop();
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   while(_loc3_ || b2Math)
                                                   {
                                                      if(!(_loc2_ && b2Math))
                                                      {
                                                         §§push(16777215);
                                                         loop31:
                                                         while(!_loc2_)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            loop32:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || b2Math)
                                                               {
                                                                  if(!(_loc2_ && b2Math))
                                                                  {
                                                                     §§push(§§pop() | §§pop());
                                                                     while(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        loop34:
                                                                        while(true)
                                                                        {
                                                                           param1 = §§pop();
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr229:
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc3_ || b2Math)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          addr268:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                          }
                                                                                       }
                                                                                       addr267:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ || param1)
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                if(!(_loc3_ || param1))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop35;
                                                                                          }
                                                                                       }
                                                                                       continue loop8;
                                                                                       addr127:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr239:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          break loop35;
                                                                                       }
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr239);
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 addr290:
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           addr240:
                                                                           while(!(_loc2_ && _loc3_))
                                                                           {
                                                                              if(!(_loc3_ || param1))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(4);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() >> §§pop());
                                                                                 addr256:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(268435455);
                                                                                    addr257:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() & §§pop());
                                                                                       break loop32;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               break;
                                                               addr96:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && param1))
                                                                  {
                                                                     §§push(65535);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              §§goto(addr121);
                                                                              §§push(§§pop() & §§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop31;
                                                                  }
                                                                  continue loop32;
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            while(_loc3_ || param1)
                                                            {
                                                               §§goto(addr266);
                                                               §§push(§§pop() | §§pop());
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop3;
                                                      if(_loc3_ || b2Math)
                                                      {
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            return §§pop() + §§pop();
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop2;
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
         §§goto(addr290);
      }
      
      public static function §,!N§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() > 0);
               if(!(_loc3_ && b2Math))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        addr52:
                        addr51:
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc4_ || _loc3_)
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
            §§goto(addr52);
         }
         §§goto(addr51);
      }
   }
}
