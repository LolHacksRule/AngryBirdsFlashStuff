package §9t§
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
               b2Mat22_identity = b2Mat22.§ "<§(new b2Vec2(1,0),new b2Vec2(0,1));
               do
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && b2Math);
            
         }
      }
      
      public function b2Math()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §,8§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §<"E§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!_loc3_)
         {
            §§push(param2.x);
            if(!(_loc3_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr43:
                  §§push(param1.y);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr65:
                     §§push(§§pop() + §§pop() * param2.y);
                  }
                  §§goto(addr65);
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr43);
      }
      
      public static function §"!V§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.x);
         if(!_loc3_)
         {
            §§push(param2.y);
            if(_loc4_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr53:
                  §§push(param1.y);
                  if(_loc4_)
                  {
                     addr60:
                     §§push(§§pop() - §§pop() * param2.x);
                  }
                  §§goto(addr60);
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr53);
      }
      
      public static function §^!;§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1.y);
            if(_loc5_ || _loc3_)
            {
               addr46:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(!(_loc4_ && param1))
               {
                  §§goto(addr54);
               }
               §§goto(addr67);
            }
            addr54:
            §§push(-§§pop());
            if(_loc5_)
            {
               addr67:
               §§push(§§pop() * param1.x);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      public static function §@N§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(-§§pop());
            if(_loc4_)
            {
               §§push(param2.y);
               if(_loc4_)
               {
                  §§goto(addr43);
               }
               §§goto(addr61);
            }
         }
         addr43:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc5_ && b2Math))
         {
            addr61:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §,!s§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc4_)
         {
            §§push(param2.x);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr34:
                  §§push(param1.col2.x);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(param2.y);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc3_)
                        {
                           addr72:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!_loc5_)
                           {
                              §§push(param2.x);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr113);
                              }
                              addr112:
                              addr113:
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr113);
                        }
                        §§push(param1.col2.y);
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() * param2.y);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr113);
               }
               §§goto(addr72);
            }
            §§goto(addr113);
         }
         §§goto(addr34);
      }
      
      public static function §7!`§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§<"E§(param2,param1.col1),§<"E§(param2,param1.col2));
      }
      
      public static function §=&§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §,!s§(param1.R,param2);
         if(!(_loc5_ && param2))
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
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc5_ && param2);
            
         }
         return _loc3_;
      }
      
      public static function §4!t§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = §,!`§(param2,param1.position);
         if(!_loc5_)
         {
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(param1.R.col1.x);
               if(!(_loc5_ && b2Math))
               {
                  addr148:
                  addr149:
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && param2))
                  {
                     §§push(_loc3_.y);
                     if(_loc6_ || b2Math)
                     {
                        §§push(§§pop() * param1.R.col1.y);
                     }
                  }
                  _loc4_ = §§pop();
                  do
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(!_loc5_)
                     {
                        §§push(param1.R.col2.x);
                        if(_loc6_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                              continue;
                           }
                           addr66:
                           §§push(_loc3_.y);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() * param1.R.col2.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr66);
                  }
                  while(§§pop().y = §§pop(), do
                  {
                     _loc3_.x = _loc4_;
                  }
                  while(_loc5_ && _loc3_);
                  , _loc5_);
                  
                  return _loc3_;
                  addr50:
               }
               §§push(§§pop() + §§pop());
               if(!_loc5_)
               {
                  §§goto(addr148);
               }
               §§goto(addr149);
            }
            §§goto(addr148);
         }
         §§goto(addr50);
      }
      
      public static function §6o§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §,!`§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
            §§goto(addr50);
         }
         addr36:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(!_loc5_)
         {
            addr50:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §!!z§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!(_loc5_ && b2Math))
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!(_loc5_ && b2Math))
            {
               §§push(§§pop() - param2.y);
               if(_loc6_ || param1)
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            }
            §§goto(addr62);
         }
         §§goto(addr31);
      }
      
      public static function §0"7§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.x);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(_loc5_ || b2Math)
         {
            §§push(§§pop() - param2.y);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  addr62:
                  §§push(_loc4_);
                  if(_loc5_ || param1)
                  {
                     addr82:
                     §§push(§§pop() + §§pop() * _loc4_);
                  }
                  §§goto(addr82);
               }
               return §§pop();
            }
            §§goto(addr82);
         }
         §§goto(addr62);
      }
      
      public static function §5!1§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(param2.x);
            if(_loc5_ || param2)
            {
               addr46:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      public static function §?6§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§ "<§(§6o§(param1.col1,param2.col1),§6o§(param1.col2,param2.col2));
      }
      
      public static function §8=§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§ "<§(§,!s§(param1,param2.col1),§,!s§(param1,param2.col2));
      }
      
      public static function §#!@§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§<"E§(param1.col1,param2.col1),§<"E§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§<"E§(param1.col1,param2.col2),§<"E§(param1.col2,param2.col2));
         return b2Mat22.§ "<§(_loc3_,_loc4_);
      }
      
      public static function §<D§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  addr44:
                  §§push(param1);
                  if(_loc2_ || b2Math)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc2_ || b2Math))
                     {
                        addr79:
                        §§push(-§§pop());
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr83);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1);
                  if(_loc2_ || b2Math)
                  {
                     §§goto(addr79);
                  }
               }
            }
            addr83:
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public static function §4!A§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§<D§(param1.x),§<D§(param1.y));
      }
      
      public static function §=!e§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§ "<§(§4!A§(param1.col1),§4!A§(param1.col2));
      }
      
      public static function §+!G§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() < param2)
               {
                  addr39:
                  §§push(param1);
                  if(!(_loc4_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc4_ && b2Math))
                  {
                     addr69:
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr39);
      }
      
      public static function §[!g§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§+!G§(param1.x,param2.x),§+!G§(param1.y,param2.y));
      }
      
      public static function §'!i§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || b2Math)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(!(_loc4_ && b2Math))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ && param1)
                     {
                        addr69:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr69);
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
            §§goto(addr69);
         }
         §§goto(addr39);
      }
      
      public static function §&";§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§'!i§(param1.x,param2.x),§'!i§(param1.y,param2.y));
      }
      
      public static function §`J§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && b2Math))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_ || param1)
                              {
                                 addr61:
                              }
                              else
                              {
                                 addr89:
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr61);
                        }
                        else
                        {
                           addr68:
                           §§push(param3);
                           if(_loc4_)
                           {
                              addr71:
                              §§push(Number(§§pop()));
                              if(_loc4_ || param1)
                              {
                                 §§goto(addr89);
                              }
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr89);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§goto(addr67);
                        }
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr67);
            }
            addr67:
            if(§§pop() > param3)
            {
               §§goto(addr68);
            }
            else
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr94:
            return §§pop();
         }
         §§goto(addr68);
      }
      
      public static function §'!5§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §&";§(param2,§[!g§(param1,param3));
      }
      
      public static function §="?§(param1:Array, param2:Array) : void
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
               addr62:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
         }
      }
      
      public static function §,m§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §!!N§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(Math.random());
         if(!_loc4_)
         {
            §§push(param2);
            if(!(_loc4_ && param1))
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc5_)
                  {
                     addr47:
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        §§goto(addr50);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr53);
               }
               addr50:
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr54:
                  addr53:
                  §§push(§§pop() + param1);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_ || param1)
                     {
                     }
                     §§goto(addr77);
                  }
                  _loc3_ = §§pop();
                  §§push(_loc3_);
               }
               addr77:
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr54);
      }
      
      public static function §;!&§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || b2Math)
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
                                             loop11:
                                             while(true)
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
                                                      loop14:
                                                      while(_loc3_)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() | §§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            loop16:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop19:
                                                                     while(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(4);
                                                                        loop20:
                                                                        for(; _loc3_ || param1; if(_loc2_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        },if(!_loc3_)
                                                                        {
                                                                           continue loop2;
                                                                        },§§push(§§pop() >> §§pop()),if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(65535);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr91);
                                                                                    §§push(§§pop() & §§pop());
                                                                                 }
                                                                                 §§goto(addr217);
                                                                              }
                                                                              §§goto(addr179);
                                                                           }
                                                                           §§goto(addr232);
                                                                        },§§goto(addr91))
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(268435455);
                                                                              addr217:
                                                                              while(_loc3_ || b2Math)
                                                                              {
                                                                                 if(_loc2_ && _loc2_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(§§pop() & §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    addr233:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       addr234:
                                                                                       while(true)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                              loop30:
                                                                              while(_loc3_ || param1)
                                                                              {
                                                                                 §§push(16777215);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() & §§pop());
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() | §§pop());
                                                                                       loop33:
                                                                                       while(_loc3_ || b2Math)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             loop34:
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         addr63:
                                                                                                         §§push(16);
                                                                                                         if(!(_loc2_ && param1))
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr170:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                            §§goto(addr63);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(!(_loc2_ && b2Math))
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop35;
                                                                                                            }
                                                                                                            §§push(param1);
                                                                                                            continue loop16;
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            addr31:
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && _loc3_))
                                                                                                                     {
                                                                                                                        return §§pop() + §§pop();
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr91:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() | §§pop());
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            while(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc3_ || param1)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                               §§goto(addr31);
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                            addr150:
                                                                                                         }
                                                                                                         §§goto(addr234);
                                                                                                         addr111:
                                                                                                      }
                                                                                                   }
                                                                                                   addr235:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr150);
                                                                                                   }
                                                                                                }
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr170);
                                                                                                   §§push(8);
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
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
         }
         §§goto(addr235);
      }
      
      public static function §3!z§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() > 0);
               if(_loc4_ || b2Math)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop();
                        addr57:
                        addr56:
                        §§push((param1 & param1 - 1) == 0);
                        if(!_loc4_)
                        {
                        }
                     }
                     §§goto(addr75);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr75:
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr56);
      }
   }
}
