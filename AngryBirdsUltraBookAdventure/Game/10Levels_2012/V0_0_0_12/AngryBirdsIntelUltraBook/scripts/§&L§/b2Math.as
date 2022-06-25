package §&L§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            while(true)
            {
               b2Mat22_identity = b2Mat22.§]!W§(new b2Vec2(1,0),new b2Vec2(0,1));
               §§goto(addr86);
            }
         }
         addr86:
         while(true)
         {
            b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
            if(_loc1_ || b2Math)
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
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
      
      public static function §9M§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §2&§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!(_loc3_ && param2))
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
         if(!_loc3_)
         {
            addr52:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §!!I§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.y);
            if(!(_loc4_ && b2Math))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
               }
               §§goto(addr55);
            }
            §§goto(addr51);
         }
         addr55:
         §§push(param1.y);
         if(_loc3_ || b2Math)
         {
            addr51:
            §§push(§§pop() * param2.x);
         }
         return §§pop() - §§pop();
      }
      
      public static function §#!%§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!_loc4_)
         {
            §§push(param1.y);
            if(_loc5_ || _loc3_)
            {
               §§goto(addr41);
            }
            §§goto(addr47);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(!_loc4_)
         {
            §§push(-§§pop());
            if(!_loc4_)
            {
               addr47:
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §2E§(param1:Number, param2:b2Vec2) : b2Vec2
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
               §§goto(addr33);
            }
            §§goto(addr43);
         }
         addr33:
         §§push(param2.y);
         if(_loc4_ || param1)
         {
            addr43:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() * param2.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §2!b§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
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
               if(_loc4_ || param1)
               {
                  addr34:
                  §§push(param1.col2.x);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(param2.y);
                     if(_loc4_ || param2)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr67:
                           addr66:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(_loc5_ && param1)
                           {
                           }
                           §§goto(addr108);
                        }
                        §§push(param2.x);
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              §§push(param1.col2.y);
                              if(!_loc4_)
                              {
                              }
                              addr107:
                              addr108:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr108);
                        }
                        §§push(§§pop() * param2.y);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr108);
               }
               §§goto(addr67);
            }
            §§goto(addr66);
         }
         §§goto(addr34);
      }
      
      public static function §?a§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§2&§(param2,param1.col1),§2&§(param2,param1.col2));
      }
      
      public static function §?!L§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §2!b§(param1.R,param2);
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc4_ && param2))
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc4_ && param1);
            
         }
         return _loc3_;
      }
      
      public static function §2!'§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §;v§(param2,param1.position);
         if(!(_loc5_ && _loc3_))
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
                     addr136:
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        addr140:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || b2Math)
                     {
                        addr153:
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     do
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(!(_loc5_ && param1))
                        {
                           §§push(param1.R.col2.x);
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                                 addr96:
                                 §§push(_loc3_.y);
                                 if(!_loc5_)
                                 {
                                    addr100:
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              continue;
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr96);
                     }
                     while(§§pop().y = §§pop(), do
                     {
                        _loc3_.x = _loc4_;
                     }
                     while(_loc5_ && b2Math);
                     , !(_loc6_ || param2));
                     
                     return _loc3_;
                     addr60:
                  }
                  §§goto(addr153);
               }
               §§goto(addr140);
            }
            §§goto(addr136);
         }
         §§goto(addr60);
      }
      
      public static function §4-§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc5_)
         {
            §§push(param2.x);
            if(_loc5_)
            {
               addr37:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      public static function §;v§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc4_ || param1)
         {
            §§push(param2.x);
            if(!(_loc5_ && param2))
            {
               §§goto(addr56);
            }
            §§goto(addr65);
         }
         addr56:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(!(_loc5_ && param1))
         {
            addr65:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §;!U§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc6_)
         {
            §§push(§§pop() - param2.y);
            if(_loc6_)
            {
               addr62:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         }
         §§goto(addr62);
      }
      
      public static function §7!A§(param1:b2Vec2, param2:b2Vec2) : Number
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
         if(_loc5_)
         {
            §§push(§§pop() - param2.y);
            if(!_loc6_)
            {
               addr66:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     addr82:
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        addr85:
                        §§push(§§pop() * _loc4_);
                     }
                     return §§pop() + §§pop();
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr82);
         }
         §§goto(addr66);
      }
      
      public static function §@'§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(_loc4_ || b2Math)
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
      
      public static function §8p§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§]!W§(§4-§(param1.col1,param2.col1),§4-§(param1.col2,param2.col2));
      }
      
      public static function § [§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§]!W§(§2!b§(param1,param2.col1),§2!b§(param1,param2.col2));
      }
      
      public static function §?!@§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§2&§(param1.col1,param2.col1),§2&§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§2&§(param1.col1,param2.col2),§2&§(param1.col2,param2.col2));
         return b2Mat22.§]!W§(_loc3_,_loc4_);
      }
      
      public static function §"b§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && b2Math))
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  addr44:
                  §§push(param1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr83);
                  }
                  addr74:
                  §§push(-§§pop());
                  if(!(_loc3_ && b2Math))
                  {
                     addr82:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(param1);
                  if(!(_loc3_ && b2Math))
                  {
                     §§goto(addr74);
                  }
               }
               addr83:
               return §§pop();
            }
            §§goto(addr82);
         }
         §§goto(addr44);
      }
      
      public static function §+!#§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§"b§(param1.x),§"b§(param1.y));
      }
      
      public static function §,A§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§]!W§(§+!#§(param1.col1),§+!#§(param1.col2));
      }
      
      public static function § if§(param1:Number, param2:Number) : Number
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
                     if(_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr44:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr44);
                  }
               }
               return §§pop();
            }
            §§goto(addr44);
         }
         §§goto(addr34);
      }
      
      public static function §!!G§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§ if§(param1.x,param2.x),§ if§(param1.y,param2.y));
      }
      
      public static function §<p§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               if(§§pop() > param2)
               {
                  addr50:
                  §§push(param1);
                  if(_loc4_ || param2)
                  {
                     addr58:
                     §§push(Number(§§pop()));
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr76);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && b2Math))
                  {
                     §§goto(addr76);
                  }
               }
               addr76:
               return Number(§§pop());
            }
            §§goto(addr58);
         }
         §§goto(addr50);
      }
      
      public static function §,_§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§<p§(param1.x,param2.x),§<p§(param1.y,param2.y));
      }
      
      public static function §[$§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc4_ && b2Math))
            {
               §§push(param2);
               if(_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§goto(addr110);
                        }
                        else
                        {
                           addr89:
                           §§push(param3);
                           if(_loc4_ && b2Math)
                           {
                           }
                           §§goto(addr109);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_ || b2Math)
                        {
                           addr88:
                           if(§§pop() > param3)
                           {
                              §§goto(addr89);
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc4_ && param2))
                              {
                                 §§goto(addr109);
                              }
                           }
                           §§goto(addr110);
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        §§goto(addr100);
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     if(!(_loc4_ && b2Math))
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_ && param2)
                        {
                           addr109:
                           return Number(§§pop());
                        }
                     }
                     else
                     {
                        addr100:
                     }
                     return §§pop();
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr109);
         }
         §§goto(addr89);
      }
      
      public static function §#r§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §,_§(param2,§!!G§(param1,param3));
      }
      
      public static function §@,§(param1:Array, param2:Array) : void
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
         }
      }
      
      public static function §?!T§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §?y§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!(_loc4_ && b2Math))
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr69:
                           §§push(§§pop() + param1);
                           if(_loc5_)
                           {
                              §§goto(addr73);
                           }
                           §§goto(addr81);
                        }
                        addr73:
                        §§push(Number(§§pop()));
                        if(_loc5_ || param1)
                        {
                           addr81:
                           _loc3_ = §§pop();
                           return _loc3_;
                        }
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         §§goto(addr81);
      }
      
      public static function §0!-§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               loop0:
               while(true)
               {
                  §§push(1);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     if(!_loc2_)
                     {
                        §§push(2147483647);
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           addr240:
                           if(!(_loc3_ || b2Math))
                           {
                              continue;
                           }
                           §§push(§§pop() & §§pop());
                           loop21:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              addr249:
                              addr298:
                              loop22:
                              while(!(_loc2_ && param1))
                              {
                                 §§push(uint(§§pop()));
                                 loop23:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop24:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop25:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(param1);
                                                loop26:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         §§push(8);
                                                         loop27:
                                                         for(; !_loc2_; §§push(16),if(!(_loc3_ || param1))
                                                         {
                                                            continue;
                                                         },if(!(_loc2_ && b2Math))
                                                         {
                                                            §§goto(addr82);
                                                            §§push(§§pop() >> §§pop());
                                                         },§§goto(addr231))
                                                         {
                                                            §§push(§§pop() >> §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(16777215);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  addr96:
                                                                  §§push(65535);
                                                                  if(_loc2_ && b2Math)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     continue loop21;
                                                                  }
                                                                  while(!(_loc2_ && _loc3_))
                                                                  {
                                                                     §§goto(addr240);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     addr278:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() | §§pop());
                                                                        addr279:
                                                                        while(true)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           break loop25;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr233:
                                                                  addr277:
                                                               }
                                                            }
                                                            loop29:
                                                            while(_loc3_)
                                                            {
                                                               addr207:
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() | §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        addr217:
                                                                        addr281:
                                                                        while(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(param1);
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ && b2Math)
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                                 addr29:
                                                                                 if(!(_loc3_ || b2Math))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          return §§pop() + §§pop();
                                                                                       }
                                                                                       addr82:
                                                                                       while(!(_loc2_ && b2Math))
                                                                                       {
                                                                                          if(_loc2_ && b2Math)
                                                                                          {
                                                                                             break loop33;
                                                                                          }
                                                                                          §§goto(addr96);
                                                                                       }
                                                                                       continue loop29;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    addr300:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       addr261:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          break loop26;
                                                                                          §§goto(addr56);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() | §§pop());
                                                                                 break loop22;
                                                                              }
                                                                              addr297:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              addr230:
                                                                              while(true)
                                                                              {
                                                                                 §§push(4);
                                                                                 addr231:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() >> §§pop());
                                                                                    addr232:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr151:
                                                                              if(_loc2_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              param1 = §§pop();
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!(_loc3_ || b2Math))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 addr168:
                                                                                 §§push(param1);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       §§goto(addr151);
                                                                                       §§goto(addr168);
                                                                                    }
                                                                                    continue;
                                                                                    addr149:
                                                                                 }
                                                                                 §§goto(addr29);
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr215:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr277);
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         while(_loc3_)
                                                         {
                                                            §§goto(addr276);
                                                            §§push(§§pop() >> §§pop());
                                                         }
                                                         continue loop1;
                                                         addr273:
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr230);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr273);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop23;
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          §§goto(addr281);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr299);
                              }
                           }
                        }
                     }
                     §§goto(addr297);
                  }
               }
            }
            §§goto(addr299);
         }
         §§goto(addr300);
      }
      
      public static function §5k§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() > 0);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc4_ || b2Math)
                        {
                           §§pop();
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr86);
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr73);
         }
         addr73:
         §§push((param1 & param1 - 1) == 0);
         if(_loc4_ || _loc3_)
         {
            addr86:
            §§push(Boolean(§§pop()));
            if(!_loc4_)
            {
            }
            §§goto(addr90);
         }
         addr90:
         return §§pop();
      }
   }
}
