package §2"=§
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
         }
         do
         {
            b2Mat22_identity = b2Mat22.§^" §(new b2Vec2(1,0),new b2Vec2(0,1));
            do
            {
               b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc1_));
         
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
      
      public static function §1H§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §@!y§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || _loc3_)
         {
            §§push(param2.x);
            if(_loc3_ || b2Math)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
               }
               §§goto(addr65);
            }
            §§goto(addr61);
         }
         addr65:
         §§push(param1.y);
         if(_loc3_)
         {
            addr61:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §`!@§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!_loc3_)
         {
            §§push(param2.y);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc3_)
               {
                  addr43:
                  §§push(param1.y);
                  if(_loc4_ || param2)
                  {
                     addr62:
                     §§push(§§pop() * param2.x);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      public static function §+Z§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc4_ || b2Math)
         {
            §§push(param1.y);
            if(!(_loc5_ && param1))
            {
               addr45:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(_loc4_)
               {
                  §§push(-§§pop());
                  if(_loc4_)
                  {
                     addr61:
                     §§push(§§pop() * param1.x);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
            §§goto(addr61);
         }
         §§goto(addr45);
      }
      
      public static function §4n§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(_loc4_)
            {
               §§push(param2.y);
               if(_loc4_)
               {
                  §§goto(addr38);
               }
               §§goto(addr51);
            }
         }
         addr38:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc4_)
         {
            addr51:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §0b§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2.x);
            if(_loc5_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  §§push(param1.col2.x);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || b2Math)
                        {
                           addr73:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(param2.x);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && param2))
                                 {
                                    addr95:
                                    §§push(param1.col2.y);
                                    if(_loc5_ || param2)
                                    {
                                    }
                                 }
                                 §§goto(addr119);
                              }
                              addr119:
                              return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                              §§push(§§pop() * param2.y);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr95);
         }
         §§goto(addr73);
      }
      
      public static function §%!C§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§@!y§(param2,param1.col1),§@!y§(param2,param1.col2));
      }
      
      public static function §>!C§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §0b§(param1.R,param2);
         if(!_loc5_)
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
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc4_ || b2Math));
            
         }
         return _loc3_;
      }
      
      public static function §+D§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §'!%§(param2,param1.position);
         if(!(_loc5_ && b2Math))
         {
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(param1.R.col1.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && b2Math))
                  {
                     addr131:
                     §§push(_loc3_.y);
                     if(_loc6_ || _loc3_)
                     {
                        addr155:
                        §§push(§§pop() + §§pop() * param1.R.col1.y);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr155);
                  }
                  _loc4_ = §§pop();
                  do
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§push(param1.R.col2.x);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc3_.y);
                           if(_loc6_ || _loc3_)
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
                  while(§§pop().y = §§pop(), do
                  {
                     _loc3_.x = _loc4_;
                  }
                  while(!(_loc6_ || param1));
                  , _loc5_ && _loc3_);
                  
                  return _loc3_;
                  addr60:
               }
               §§goto(addr155);
            }
            §§goto(addr131);
         }
         §§goto(addr60);
      }
      
      public static function §=0§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_ || _loc3_)
         {
            §§push(param2.x);
            if(!(_loc4_ && param1))
            {
               addr47:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      public static function §'!%§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc4_ && b2Math))
         {
            §§push(param2.x);
            if(_loc5_)
            {
               addr42:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(!_loc4_)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      public static function §]H§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc6_ && param2))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() - param2.y);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr30);
      }
      
      public static function §^^§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_ || _loc3_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc6_)
            {
               §§push(§§pop() - param2.y);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               §§push(_loc3_);
               if(!(_loc6_ && b2Math))
               {
                  §§goto(addr103);
               }
               §§push(§§pop() + §§pop());
            }
            addr103:
            §§push(§§pop() * §§pop());
            if(!(_loc6_ && b2Math))
            {
               §§push(_loc4_);
               if(!(_loc6_ && b2Math))
               {
                  return §§pop() * _loc4_;
               }
            }
         }
         §§goto(addr30);
      }
      
      public static function §@;§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_ || param2)
         {
            §§push(param2.x);
            if(!_loc5_)
            {
               §§goto(addr40);
            }
            §§goto(addr53);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc4_)
         {
            addr53:
            §§push(§§pop() * param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §&§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§^" §(§=0§(param1.col1,param2.col1),§=0§(param1.col2,param2.col2));
      }
      
      public static function §+!9§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§^" §(§0b§(param1,param2.col1),§0b§(param1,param2.col2));
      }
      
      public static function §"!W§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§@!y§(param1.col1,param2.col1),§@!y§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§@!y§(param1.col1,param2.col2),§@!y§(param1.col2,param2.col2));
         return b2Mat22.§^" §(_loc3_,_loc4_);
      }
      
      public static function §`U§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  addr24:
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr49:
                     §§push(-§§pop());
                     if(_loc3_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr68);
               }
               else
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§goto(addr49);
                  }
               }
               §§push(Number(§§pop()));
            }
            addr68:
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public static function §-!%§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§`U§(param1.x),§`U§(param1.y));
      }
      
      public static function §[!Q§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§^" §(§-!%§(param1.col1),§-!%§(param1.col2));
      }
      
      public static function §8L§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() < param2)
               {
                  addr34:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ || param2))
                     {
                        addr59:
                        return Number(§§pop());
                     }
                     else
                     {
                        addr55:
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§goto(addr59);
                  }
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr34);
      }
      
      public static function §!W§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§8L§(param1.x,param2.x),§8L§(param1.y,param2.y));
      }
      
      public static function §6§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ || param1)
                     {
                     }
                     §§goto(addr70);
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc3_ || b2Math)
                  {
                     §§goto(addr70);
                  }
               }
            }
            addr70:
            return Number(§§pop());
         }
         §§goto(addr39);
      }
      
      public static function §5!b§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§6§(param1.x,param2.x),§6§(param1.y,param2.y));
      }
      
      public static function §&>§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc5_ && param3))
            {
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || b2Math)
                        {
                           §§goto(addr45);
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr113);
         }
         addr45:
         §§push(param2);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
            if(!(_loc4_ || param1))
            {
               addr86:
               §§push(Number(§§pop()));
               if(_loc4_ || param2)
               {
                  addr94:
               }
            }
         }
         else
         {
            addr75:
            if(§§pop() > param3)
            {
               addr78:
               §§push(param3);
               if(_loc4_ || param1)
               {
                  §§goto(addr86);
               }
               §§goto(addr94);
            }
            else
            {
               §§push(param1);
               if(!(_loc5_ && param2))
               {
                  addr113:
                  return Number(§§pop());
               }
            }
         }
         return §§pop();
      }
      
      public static function §7k§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §5!b§(param2,§!W§(param1,param3));
      }
      
      public static function §`!R§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(!_loc5_)
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
      
      public static function §,'§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(!_loc1_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §>!Z§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               §§push(param1);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc5_ && b2Math))
                  {
                     §§push(_loc3_);
                     if(_loc4_)
                     {
                        addr59:
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || param1)
                        {
                           addr68:
                           §§push(§§pop() + param1);
                           if(_loc4_)
                           {
                              §§goto(addr71);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr71);
               }
               §§goto(addr59);
            }
            addr71:
            §§push(Number(§§pop()));
            if(_loc4_ || b2Math)
            {
               addr89:
               _loc3_ = §§pop();
               return _loc3_;
            }
         }
         §§goto(addr89);
      }
      
      public static function §"!u§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(param1);
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
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(2);
                                             loop11:
                                             while(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(1073741823);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      while(_loc3_ || param1)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            addr249:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr250:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr183:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr184:
                                                                     while(_loc3_)
                                                                     {
                                                                        §§push(4);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           addr188:
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(268435455);
                                                                              while(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop3;
                                                                           addr147:
                                                                           while(!(_loc2_ && param1))
                                                                           {
                                                                              if(!(_loc3_ || param1))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§push(§§pop() >> §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(16777215);
                                                                                 addr163:
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() & §§pop());
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§goto(addr191);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                          if(!(_loc2_ && _loc2_))
                                          {
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
            }
         }
         §§goto(addr180);
      }
      
      public static function §`k§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() > 0);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr50:
                        §§pop();
                        §§push((param1 & param1 - 1) == 0);
                        if(_loc4_)
                        {
                           addr69:
                           return Boolean(§§pop());
                        }
                     }
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr50);
      }
   }
}
