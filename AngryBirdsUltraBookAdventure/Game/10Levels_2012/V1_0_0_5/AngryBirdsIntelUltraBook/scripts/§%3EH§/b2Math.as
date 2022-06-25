package §>H§
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
            while(true)
            {
               b2Mat22_identity = b2Mat22.§;!N§(new b2Vec2(1,0),new b2Vec2(0,1));
               while(!_loc2_)
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
                  if(_loc1_)
                  {
                     return;
                     addr52:
                  }
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
      
      public static function §3!W§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §'l§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_ || param2)
         {
            §§push(param2.x);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
               }
               §§goto(addr55);
            }
            §§goto(addr51);
         }
         addr55:
         §§push(param1.y);
         if(!(_loc4_ && _loc3_))
         {
            addr51:
            §§push(§§pop() * param2.y);
         }
         return §§pop() + §§pop();
      }
      
      public static function §0M§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(_loc3_)
         {
            §§push(param2.y);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ && param2)
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
      
      public static function §^!P§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(_loc5_ || _loc3_)
         {
            §§push(param1.y);
            if(_loc5_ || param2)
            {
               addr56:
               §§push(§§pop() * §§pop());
               §§push(param2);
               if(!(_loc4_ && b2Math))
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && param2))
                  {
                     §§push(§§pop() * param1.x);
                  }
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr56);
      }
      
      public static function §;C§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(param2.y);
               if(!(_loc4_ && b2Math))
               {
                  §§goto(addr54);
               }
               §§goto(addr62);
            }
         }
         addr54:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc5_ || param1)
         {
            addr62:
            §§push(§§pop() * param2.x);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §'q§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  §§push(param1.col2.x);
                  if(_loc4_ || param1)
                  {
                     §§push(param2.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || param2)
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!(_loc5_ && param1))
                           {
                              addr77:
                              §§push(param2.x);
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr113);
                              }
                              addr113:
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 addr99:
                                 §§push(param1.col2.y);
                                 if(_loc4_ || param1)
                                 {
                                    addr109:
                                    §§push(§§pop() * param2.y);
                                 }
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §;%§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§'l§(param2,param1.col1),§'l§(param2,param1.col2));
      }
      
      public static function §'!6§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §'q§(param1.R,param2);
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
               if(_loc5_ || param2)
               {
                  §§push(§§pop() + param1.position.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc5_);
            
         }
         return _loc3_;
      }
      
      public static function §0r§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §54§(param2,param1.position);
         if(_loc5_)
         {
            §§push(_loc3_.x);
            if(!(_loc6_ && _loc3_))
            {
               §§push(param1.R.col1.x);
               if(_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || param1)
                  {
                     §§push(_loc3_.y);
                     if(!_loc6_)
                     {
                        addr134:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc6_ && param1))
                     {
                        addr147:
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(!(_loc6_ && param2))
                        {
                           §§push(param1.R.col2.x);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_)
                              {
                                 addr78:
                                 §§push(_loc3_.y);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr92:
                                    §§push(§§pop() + §§pop() * param1.R.col2.y);
                                 }
                                 §§goto(addr92);
                              }
                              §§pop().y = §§pop();
                              loop1:
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc3_.x = _loc4_;
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 return _loc3_;
                              }
                              continue;
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr147);
               }
               §§goto(addr134);
            }
            §§goto(addr147);
         }
         §§goto(addr96);
      }
      
      public static function §,x§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
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
            §§goto(addr40);
         }
         addr36:
         §§push(§§pop() + §§pop());
         §§push(param1.y);
         if(!_loc5_)
         {
            addr40:
            §§push(§§pop() + param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §54§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(param2.x);
            if(_loc4_ || _loc3_)
            {
               addr41:
               §§push(§§pop() - §§pop());
               §§push(param1.y);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() - param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §&7§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc5_ && b2Math))
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.y);
               if(!(_loc5_ && b2Math))
               {
                  addr72:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            }
            §§goto(addr72);
         }
         §§goto(addr56);
      }
      
      public static function §!!3§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc5_)
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
         if(_loc6_)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param1))
               {
                  addr83:
                  §§push(_loc4_);
                  if(_loc6_ || param2)
                  {
                     addr91:
                     §§push(§§pop() * _loc4_);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr91);
         }
         §§goto(addr83);
      }
      
      public static function §3!O§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2.x);
            if(!(_loc5_ && param1))
            {
               addr40:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §`!m§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§;!N§(§,x§(param1.col1,param2.col1),§,x§(param1.col2,param2.col2));
      }
      
      public static function §;^§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§;!N§(§'q§(param1,param2.col1),§'q§(param1,param2.col2));
      }
      
      public static function §8!@§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§'l§(param1.col1,param2.col1),§'l§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§'l§(param1.col1,param2.col2),§'l§(param1.col2,param2.col2));
         return b2Mat22.§;!N§(_loc3_,_loc4_);
      }
      
      public static function §-n§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  addr35:
                  §§push(param1);
                  if(!(_loc2_ && param1))
                  {
                     addr53:
                     §§push(Number(§§pop()));
                     if(_loc2_ && _loc3_)
                     {
                     }
                     §§goto(addr74);
                  }
                  addr73:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1);
                  if(_loc3_ || b2Math)
                  {
                     §§push(-§§pop());
                     if(!_loc2_)
                     {
                        §§goto(addr73);
                     }
                  }
               }
               addr74:
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr35);
      }
      
      public static function §-!<§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§-n§(param1.x),§-n§(param1.y));
      }
      
      public static function §+X§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§;!N§(§-!<§(param1.col1),§-!<§(param1.col2));
      }
      
      public static function §>M§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && param2))
            {
               if(§§pop() < param2)
               {
                  addr49:
                  §§push(param1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ || param1)
                     {
                        addr65:
                     }
                  }
                  §§goto(addr65);
               }
               else
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr49);
      }
      
      public static function §3!]§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§>M§(param1.x,param2.x),§>M§(param1.y,param2.y));
      }
      
      public static function §0!_§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr40:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr40);
      }
      
      public static function §'!"§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§0!_§(param1.x,param2.x),§0!_§(param1.y,param2.y));
      }
      
      public static function §]#§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr45);
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr88);
         }
         addr45:
         §§push(param2);
         if(!(_loc5_ && param3))
         {
            §§push(Number(§§pop()));
            if(!_loc4_)
            {
               addr88:
               return Number(§§pop());
            }
         }
         else
         {
            addr70:
            if(§§pop() > param3)
            {
               addr73:
               §§push(param3);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && param2))
                  {
                     addr84:
                  }
               }
            }
            else
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§goto(addr88);
               }
            }
         }
         return §§pop();
      }
      
      public static function §,E§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §'!"§(param2,§3!]§(param1,param3));
      }
      
      public static function §<!q§(param1:Array, param2:Array) : void
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
      
      public static function §0D§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Math.random() * 2);
         if(_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      public static function §`[§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(_loc4_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc4_)
                     {
                        §§goto(addr54);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr74);
               }
               addr54:
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr58:
                  §§push(§§pop() + param1);
                  if(_loc4_ || b2Math)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && b2Math))
                     {
                        addr74:
                        _loc3_ = §§pop();
                        return _loc3_;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public static function §;_§(param1:uint) : uint
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(_loc3_)
                                       {
                                          §§push(param1);
                                          loop10:
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             §§push(2);
                                             loop11:
                                             while(_loc3_ || _loc2_)
                                             {
                                                §§push(§§pop() >> §§pop());
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(1073741823);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      loop21:
                                                      while(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         while(!(_loc2_ && param1))
                                                         {
                                                            §§push(§§pop() | §§pop());
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr149:
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param1);
                                                                           loop26:
                                                                           for(; !(_loc2_ && param1); while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc2_ && b2Math)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr61);
                                                                           })
                                                                           {
                                                                              §§push(8);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() >> §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(16777215);
                                                                                       addr171:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() & §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() | §§pop());
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   while(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         param1 = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               addr47:
                                                                                                               return §§pop() + §§pop();
                                                                                                               addr197:
                                                                                                            }
                                                                                                            break;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1 = §§pop();
                                                                                                               if(!(_loc3_ || _loc2_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1 = §§pop();
                                                                                                         }
                                                                                                         addr269:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         addr200:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            break loop26;
                                                                                                            §§goto(addr149);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                   addr185:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr268:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                       }
                                                                                       continue loop4;
                                                                                       if(!(_loc3_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          if(_loc2_ && b2Math)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§push(65535);
                                                                                          if(_loc3_ || param1)
                                                                                          {
                                                                                             if(_loc2_ && b2Math)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§goto(addr111);
                                                                                             §§push(§§pop() & §§pop());
                                                                                          }
                                                                                          §§goto(addr171);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§push(16);
                                                                                 addr61:
                                                                                 break;
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr72);
                                                                                 §§push(§§pop() >> §§pop());
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr205);
                                                                              }
                                                                           }
                                                                           while(!_loc2_)
                                                                           {
                                                                              §§goto(addr204);
                                                                              §§push(4);
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr268);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr267);
                                             }
                                             continue loop2;
                                          }
                                          continue loop1;
                                       }
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
         §§goto(addr197);
      }
      
      public static function §,4§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() > 0);
               if(_loc3_ || b2Math)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        addr66:
                        addr65:
                        §§push((param1 & param1 - 1) == 0);
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr74);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               addr74:
               return §§pop();
            }
            §§goto(addr66);
         }
         §§goto(addr65);
      }
   }
}
