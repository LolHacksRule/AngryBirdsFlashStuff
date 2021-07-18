package §6A§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            b2Vec2_zero = new b2Vec2(0,0);
            while(true)
            {
               b2Mat22_identity = b2Mat22.§0$§(new b2Vec2(1,0),new b2Vec2(0,1));
               while(_loc1_)
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function § if§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §[!N§(param1:b2Vec2, param2:b2Vec2) : Number
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
               if(_loc3_)
               {
               }
               §§goto(addr56);
            }
            §§goto(addr52);
         }
         addr56:
         §§push(param1.y);
         if(_loc4_)
         {
            addr52:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §8!f§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || _loc3_)
         {
            §§push(param2.y);
            if(!_loc4_)
            {
               §§goto(addr65);
            }
            §§push(§§pop() - §§pop());
         }
         addr65:
         §§push(§§pop() * §§pop());
         if(!(_loc4_ && param2))
         {
            §§push(param1.y);
            if(_loc3_)
            {
               return §§pop() * param2.x;
            }
         }
      }
      
      public static function §!!3§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc5_)
         {
            §§push(param1.y);
            if(!_loc4_)
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc5_)
               {
                  §§push(-§§pop());
                  if(_loc5_)
                  {
                     addr52:
                     §§push(§§pop() * param1.x);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
            §§goto(addr52);
         }
         §§goto(addr36);
      }
      
      public static function §8V§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(!_loc4_)
            {
               §§push(param2.y);
               if(_loc5_)
               {
                  §§goto(addr39);
               }
               §§goto(addr52);
            }
         }
         addr39:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc4_)
         {
            addr52:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function § !$§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
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
                  addr34:
                  §§push(param1.col2.x);
                  if(!_loc5_)
                  {
                     §§push(param2.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!_loc5_)
                           {
                              §§push(param2.x);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr103);
                              }
                              addr102:
                              addr103:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§push(param1.col2.y);
                        if(_loc4_ || b2Math)
                        {
                           §§push(§§pop() * param2.y);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr103);
               }
               §§goto(addr62);
            }
            §§goto(addr103);
         }
         §§goto(addr34);
      }
      
      public static function §`q§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§[!N§(param2,param1.col1),§[!N§(param2,param1.col2));
      }
      
      public static function §,p§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = § !$§(param1.R,param2);
         if(_loc4_)
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
               if(!_loc5_)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      public static function § U§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §8!Y§(param2,param1.position);
         if(!(_loc6_ && b2Math))
         {
            §§push(_loc3_.x);
            if(_loc5_ || param2)
            {
               §§push(param1.R.col1.x);
               if(_loc5_ || b2Math)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param2))
                  {
                     §§push(_loc3_.y);
                     if(!(_loc6_ && b2Math))
                     {
                        addr159:
                        §§push(§§pop() + §§pop() * param1.R.col1.y);
                        if(!_loc5_)
                        {
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc5_ || b2Math)
                           {
                              §§push(param1.R.col2.x);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr103:
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || b2Math)
                                 {
                                    §§push(_loc3_.y);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() * param1.R.col2.y);
                                    }
                                 }
                                 §§pop().y = §§pop();
                                 while(_loc5_)
                                 {
                                    _loc3_.x = _loc4_;
                                    if(!_loc6_)
                                    {
                                       return _loc3_;
                                    }
                                 }
                                 continue;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr103);
                        }
                        addr164:
                     }
                  }
                  §§goto(addr159);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr159);
         }
         §§goto(addr164);
      }
      
      public static function §>>§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_)
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               addr42:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!_loc4_)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      public static function §8!Y§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc4_ && param2))
         {
            §§push(param2.x);
            if(!(_loc4_ && param2))
            {
               §§goto(addr47);
            }
            §§goto(addr61);
         }
         addr47:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(!_loc4_)
         {
            addr61:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §<t§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.y);
            if(_loc6_ || b2Math)
            {
               addr57:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr57);
      }
      
      public static function § try§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc5_)
            {
               addr26:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc6_)
            {
               §§push(§§pop() - param2.y);
               if(_loc6_ || b2Math)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     addr63:
                     §§push(_loc4_);
                     if(!(_loc5_ && param2))
                     {
                        addr83:
                        §§push(§§pop() + §§pop() * _loc4_);
                     }
                     §§goto(addr83);
                  }
                  return §§pop();
               }
               §§goto(addr83);
            }
            §§goto(addr63);
         }
         §§goto(addr26);
      }
      
      public static function §'!J§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || b2Math)
         {
            §§push(param2.x);
            if(_loc4_)
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §^3§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§0$§(§>>§(param1.col1,param2.col1),§>>§(param1.col2,param2.col2));
      }
      
      public static function §@]§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§0$§(§ !$§(param1,param2.col1),§ !$§(param1,param2.col2));
      }
      
      public static function §%1§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§[!N§(param1.col1,param2.col1),§[!N§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§[!N§(param1.col1,param2.col2),§[!N§(param1.col2,param2.col2));
         return b2Mat22.§0$§(_loc3_,_loc4_);
      }
      
      public static function §!V§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               if(§§pop() > 0)
               {
                  addr40:
                  §§push(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr55:
                        §§push(-§§pop());
                        if(!(_loc2_ && _loc3_))
                        {
                           addr73:
                           return Number(§§pop());
                        }
                     }
                     else
                     {
                        addr51:
                     }
                     return §§pop();
                  }
               }
               else
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr51);
         }
         §§goto(addr40);
      }
      
      public static function §,!I§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§!V§(param1.x),§!V§(param1.y));
      }
      
      public static function §^!]§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§0$§(§,!I§(param1.col1),§,!I§(param1.col2));
      }
      
      public static function § d§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() < param2)
               {
                  addr34:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        addr59:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_ || param2)
                  {
                     §§goto(addr59);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr34);
      }
      
      public static function §&!]§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§ d§(param1.x,param2.x),§ d§(param1.y,param2.y));
      }
      
      public static function §9![§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr34:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr55);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            addr55:
            return Number(§§pop());
         }
         §§goto(addr34);
      }
      
      public static function §7!Q§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§9![§(param1.x,param2.x),§9![§(param1.y,param2.y));
      }
      
      public static function §>I§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr50:
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§goto(addr53);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr63);
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           §§goto(addr60);
                        }
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr60);
            }
            addr53:
            §§push(Number(§§pop()));
            if(_loc5_)
            {
               addr60:
               if(§§pop() > param3)
               {
                  addr63:
                  §§push(param3);
                  if(_loc4_)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                     }
                     §§goto(addr84);
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§goto(addr84);
                  }
               }
            }
            addr84:
            return Number(§§pop());
         }
         §§goto(addr50);
      }
      
      public static function §%b§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §7!Q§(param2,§&!]§(param1,param3));
      }
      
      public static function §]!L§(param1:Array, param2:Array) : void
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
               addr78:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
         }
      }
      
      public static function §+6§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(_loc1_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §^]§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(!(_loc5_ && param2))
         {
            §§push(param2);
            if(!(_loc5_ && _loc3_))
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_ || param1)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr78:
                           §§push(§§pop() + param1);
                           if(!_loc5_)
                           {
                              §§goto(addr81);
                           }
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr84);
               }
               §§goto(addr78);
            }
            addr81:
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               addr84:
               _loc3_ = §§pop();
               return _loc3_;
            }
         }
         §§goto(addr84);
      }
      
      public static function §8!K§(param1:uint) : uint
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
                     if(_loc3_)
                     {
                        §§push(2147483647);
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                        }
                        addr256:
                     }
                     loop4:
                     while(true)
                     {
                        §§push(§§pop() | §§pop());
                        loop5:
                        while(true)
                        {
                           §§push(uint(§§pop()));
                           loop6:
                           while(true)
                           {
                              param1 = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(param1);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(2);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop() >> §§pop());
                                          loop11:
                                          while(true)
                                          {
                                             §§push(1073741823);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop() | §§pop());
                                                   loop14:
                                                   while(true)
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
                                                            while(!_loc2_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(param1);
                                                                  loop18:
                                                                  while(_loc3_)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(4);
                                                                        loop19:
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(268435455);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    loop23:
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          addr223:
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                          }
                                                                                          continue loop16;
                                                                                          loop38:
                                                                                          while(_loc3_ || param1)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             continue loop0;
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc3_ || param1))
                                                                                             {
                                                                                                while(!(_loc2_ && param1))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                   §§goto(addr24);
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr31:
                                                                                             §§push(1);
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr41:
                                                                                                   if(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            return §§pop() + §§pop();
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      while(_loc3_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(16777215);
                                                                                                               while(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr256);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                               addr178:
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                      addr171:
                                                                                                   }
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() | §§pop());
                                                                                                      loop33:
                                                                                                      while(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(uint(§§pop()));
                                                                                                         loop34:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1 = §§pop();
                                                                                                            addr195:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               if(!(_loc2_ && b2Math))
                                                                                                               {
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                            addr167:
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§push(8);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr171);
                                                                                                               }
                                                                                                               §§push(param1);
                                                                                                               if(_loc2_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(16);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() >> §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(65535);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc2_ && b2Math)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                                 addr109:
                                                                                                                              }
                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() | §§pop());
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                                 continue loop33;
                                                                                                                                 §§goto(addr31);
                                                                                                                              }
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                        addr98:
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               §§goto(addr170);
                                                                                                               §§goto(addr178);
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                      §§goto(addr41);
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§goto(addr98);
                                                                                             }
                                                                                             §§goto(addr109);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop15;
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
            }
         }
         while(true)
         {
            §§goto(addr152);
         }
      }
      
      public static function §9!T§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() > 0);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        addr51:
                        §§push((param1 & param1 - 1) == 0);
                        if(!(_loc4_ && param1))
                        {
                           addr73:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr51);
      }
   }
}
