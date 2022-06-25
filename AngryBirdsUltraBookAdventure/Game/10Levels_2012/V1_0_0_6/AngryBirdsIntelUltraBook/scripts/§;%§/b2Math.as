package §;%§
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
         }
         while(true)
         {
            b2Mat22_identity = b2Mat22.§+f§(new b2Vec2(1,0),new b2Vec2(0,1));
            while(!_loc2_)
            {
               b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
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
      
      public static function §,b§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §+!1§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!(_loc3_ && _loc3_))
         {
            §§push(param2.x);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || param1)
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
      
      public static function §#R§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.y);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
               }
               §§goto(addr51);
            }
            §§goto(addr47);
         }
         addr51:
         §§push(param1.y);
         if(_loc4_ || param1)
         {
            addr47:
            §§push(§§pop() * param2.x);
         }
         return §§pop() - §§pop();
      }
      
      public static function §+?§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc5_ && param2))
         {
            §§push(param1.y);
            if(_loc4_)
            {
               §§goto(addr40);
            }
            §§goto(addr46);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(_loc4_)
         {
            §§push(-§§pop());
            if(!_loc5_)
            {
               addr46:
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §8!Z§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(-§§pop());
            if(!_loc4_)
            {
               §§goto(addr39);
            }
            §§goto(addr44);
         }
         addr39:
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
      
      public static function §&!Q§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  addr34:
                  §§push(param1.col2.x);
                  if(_loc4_)
                  {
                     §§push(param2.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr57:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc4_)
                           {
                              addr62:
                              §§push(param2.x);
                              if(_loc4_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr98);
                              }
                              addr97:
                              addr98:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§push(param1.col2.y);
                           if(_loc4_ || param2)
                           {
                              §§goto(addr97);
                              §§push(§§pop() * param2.y);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr34);
      }
      
      public static function §[Z§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§+!1§(param2,param1.col1),§+!1§(param2,param1.col2));
      }
      
      public static function §#!<§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §&!Q§(param1.R,param2);
         if(_loc5_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!(_loc4_ && b2Math))
            {
               §§push(§§pop() + param1.position.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc5_ || param1));
         
         return _loc3_;
      }
      
      public static function §6L§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §9!<§(param2,param1.position);
         if(_loc6_ || param2)
         {
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(param1.R.col1.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || param1)
                  {
                     §§push(_loc3_.y);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr145:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        addr153:
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(!(_loc5_ && b2Math))
                     {
                        §§push(param1.R.col2.x);
                        if(!_loc5_)
                        {
                           addr99:
                           §§push(§§pop() * §§pop());
                           if(!(_loc5_ && b2Math))
                           {
                              §§push(_loc3_.y);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * param1.R.col2.y);
                              }
                           }
                           §§pop().y = §§pop();
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr153);
         }
         §§goto(addr53);
      }
      
      public static function §5I§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.x);
            if(!(_loc4_ && param2))
            {
               §§goto(addr42);
            }
            §§goto(addr46);
         }
         addr42:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!_loc4_)
         {
            addr46:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §9!<§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               addr41:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(_loc4_)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §3H§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc6_)
         {
            §§push(§§pop() - param2.y);
            if(_loc6_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function §=^§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - param2.y);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr83:
                  §§push(_loc4_);
                  if(!(_loc5_ && param1))
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
      
      public static function §4%§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc4_ && param2))
         {
            §§push(param2.x);
            if(_loc5_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §;=§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§+f§(§5I§(param1.col1,param2.col1),§5I§(param1.col2,param2.col2));
      }
      
      public static function §'g§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§+f§(§&!Q§(param1,param2.col1),§&!Q§(param1,param2.col2));
      }
      
      public static function §]!c§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§+!1§(param1.col1,param2.col1),§+!1§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§+!1§(param1.col1,param2.col2),§+!1§(param1.col2,param2.col2));
         return b2Mat22.§+f§(_loc3_,_loc4_);
      }
      
      public static function §`c§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() > 0)
               {
                  addr39:
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(_loc2_ || param1)
                     {
                     }
                     §§goto(addr78);
                  }
               }
               else
               {
                  §§push(param1);
                  if(!(_loc3_ && b2Math))
                  {
                     §§push(-§§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            addr78:
            return §§pop();
         }
         §§goto(addr39);
      }
      
      public static function §;!t§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§`c§(param1.x),§`c§(param1.y));
      }
      
      public static function §5"§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§+f§(§;!t§(param1.col1),§;!t§(param1.col2));
      }
      
      public static function §=!@§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || b2Math)
         {
            §§push(param1);
            if(!(_loc4_ && param2))
            {
               if(§§pop() < param2)
               {
                  addr54:
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ && b2Math)
                     {
                        addr69:
                        return Number(§§pop());
                     }
                     else
                     {
                        addr65:
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr69);
                  }
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr54);
      }
      
      public static function § !§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§=!@§(param1.x,param2.x),§=!@§(param1.y,param2.y));
      }
      
      public static function §!!X§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() > param2)
               {
                  addr45:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     addr48:
                     §§push(Number(§§pop()));
                     if(_loc3_)
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
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr45);
      }
      
      public static function §4P§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§!!X§(param1.x,param2.x),§!!X§(param1.y,param2.y));
      }
      
      public static function §]!M§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(param2);
               if(_loc5_ || b2Math)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(param2);
                           if(_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc5_ || param2))
                              {
                                 addr89:
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 addr67:
                              }
                           }
                           else
                           {
                              addr71:
                              if(§§pop() > param3)
                              {
                                 addr74:
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc5_ || param3)
                                 {
                                    §§goto(addr89);
                                 }
                              }
                           }
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§goto(addr71);
                        }
                     }
                     return §§pop();
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr67);
         }
         §§goto(addr74);
      }
      
      public static function §+!$§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §4P§(param2,§ !§(param1,param3));
      }
      
      public static function §3?§(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param1[0];
         if(_loc4_ || b2Math)
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
      
      public static function §8^§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §"=§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_ || param1)
                  {
                     addr62:
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr69:
                           §§push(§§pop() + param1);
                           if(_loc5_ || _loc3_)
                           {
                              addr77:
                              §§push(Number(§§pop()));
                              if(_loc4_ && param2)
                              {
                              }
                              §§goto(addr87);
                           }
                           _loc3_ = §§pop();
                           addr87:
                           return §§pop();
                           §§push(_loc3_);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr77);
               }
               §§goto(addr69);
            }
            §§goto(addr62);
         }
         §§goto(addr69);
      }
      
      public static function §2u§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
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
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(2147483647);
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                        }
                        addr311:
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
                                                   while(!(_loc2_ && param1))
                                                   {
                                                      §§push(uint(§§pop()));
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         addr296:
                                                         while(!_loc2_)
                                                         {
                                                         }
                                                         continue loop7;
                                                         addr34:
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr41:
                                                            §§push(1);
                                                            if(!(_loc2_ && b2Math))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  return §§pop() + §§pop();
                                                               }
                                                               continue loop13;
                                                            }
                                                            loop36:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr142:
                                                                  §§push(§§pop() | §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_ && b2Math)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(uint(§§pop()));
                                                                     continue loop8;
                                                                  }
                                                                  loop33:
                                                                  while(true)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     addr222:
                                                                     addr235:
                                                                     loop34:
                                                                     while(!(_loc2_ && _loc3_))
                                                                     {
                                                                        param1 = §§pop();
                                                                        loop35:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc2_ && b2Math)
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr68:
                                                                                 if(!(_loc2_ && b2Math))
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§push(param1);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc2_ && param1)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§push(16);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr95:
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() >> §§pop());
                                                                                             if(!(_loc2_ && b2Math))
                                                                                             {
                                                                                                addr117:
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr124:
                                                                                                   §§push(65535);
                                                                                                   if(!(_loc3_ || b2Math))
                                                                                                   {
                                                                                                      while(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() & §§pop());
                                                                                                         §§goto(addr124);
                                                                                                      }
                                                                                                      loop22:
                                                                                                      for(; !(_loc2_ && _loc2_); §§goto(addr205))
                                                                                                      {
                                                                                                         §§push(§§pop() & §§pop());
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() | §§pop());
                                                                                                            break loop36;
                                                                                                            addr195:
                                                                                                            addr247:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_ || b2Math)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            while(!_loc2_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                      addr205:
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   §§goto(addr311);
                                                                                                }
                                                                                                while(_loc3_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() | §§pop());
                                                                                                   continue loop33;
                                                                                                   §§goto(addr117);
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop36;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr195);
                                                                                       }
                                                                                       addr194:
                                                                                    }
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr194);
                                                                                       §§push(8);
                                                                                    }
                                                                                    while(_loc3_ || _loc3_)
                                                                                    {
                                                                                       break loop35;
                                                                                    }
                                                                                    continue loop1;
                                                                                    addr191:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    addr268:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                    }
                                                                                    §§goto(addr68);
                                                                                 }
                                                                                 addr267:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr191);
                                                                              }
                                                                           }
                                                                           §§goto(addr268);
                                                                           addr172:
                                                                           param1 = §§pop();
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr34);
                                                                              addr187:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr296);
                                                                           }
                                                                        }
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§goto(addr247);
                                                                           §§push(§§pop() >> §§pop());
                                                                           §§goto(addr95);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr236);
                                                                        §§goto(addr222);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            while(!(_loc2_ && _loc3_))
                                                            {
                                                               §§goto(addr267);
                                                               §§push(uint(§§pop()));
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
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
            §§goto(addr235);
         }
      }
      
      public static function §;!F§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(param1);
            if(_loc4_ || b2Math)
            {
               §§push(§§pop() > 0);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr60:
                        §§pop();
                        §§push((param1 & param1 - 1) == 0);
                        if(!_loc3_)
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
         §§goto(addr60);
      }
   }
}
