package §@!E§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2;
      
      public static const b2Mat22_identity:b2Mat22;
      
      public static const b2Transform_identity:b2Transform;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            b2Vec2_zero = new b2Vec2(0,0);
            do
            {
               b2Mat22_identity = b2Mat22.§-!4§(new b2Vec2(1,0),new b2Vec2(0,1));
               do
               {
                  b2Transform_identity = new b2Transform(b2Vec2_zero,b2Mat22_identity);
               }
               while(_loc1_ && b2Math);
               
            }
            while(_loc1_);
            
         }
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
      
      public static function §'!]§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §,w§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!(_loc4_ && b2Math))
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               §§goto(addr65);
            }
            §§push(§§pop() + §§pop());
         }
         addr65:
         §§push(§§pop() * §§pop());
         if(_loc3_)
         {
            §§push(param1.y);
            if(!(_loc4_ && b2Math))
            {
               return §§pop() * param2.y;
            }
         }
      }
      
      public static function §@!I§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.x);
         if(!_loc4_)
         {
            §§push(param2.y);
            if(!_loc4_)
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
         if(_loc3_)
         {
            addr51:
            §§push(§§pop() * param2.x);
         }
         return §§pop() - §§pop();
      }
      
      public static function §'f§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param2);
         if(!(_loc4_ && param1))
         {
            §§push(param1.y);
            if(!(_loc4_ && b2Math))
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param2);
         if(!_loc4_)
         {
            addr49:
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(§§pop() * param1.x);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function §0!p§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(!(_loc4_ && param1))
            {
               §§push(param2.y);
               if(!(_loc4_ && _loc3_))
               {
                  addr49:
                  §§push(§§pop() * §§pop());
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(§§pop() * param2.x);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
         }
         §§goto(addr49);
      }
      
      public static function §-!u§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.col1.x);
         if(_loc5_ || b2Math)
         {
            §§push(param2.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr35:
                  §§push(param1.col2.x);
                  if(!_loc4_)
                  {
                     addr40:
                     §§push(param2.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr58:
                           §§push(§§pop() + §§pop());
                           §§push(param1.col1.y);
                           if(!_loc4_)
                           {
                              §§push(param2.x);
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr99);
                              }
                              addr99:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && param2))
                              {
                                 addr80:
                                 §§push(param1.col2.y);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() * param2.y);
                                 }
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr80);
                        }
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr58);
            }
            §§goto(addr40);
         }
         §§goto(addr35);
      }
      
      public static function §`!C§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§,w§(param2,param1.col1),§,w§(param2,param1.col2));
      }
      
      public static function §#@§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         _loc3_ = §-!u§(param1.R,param2);
         if(!_loc5_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() + param1.position.x);
            }
            §§pop().x = §§pop();
         }
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
         
         return _loc3_;
      }
      
      public static function §for §(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = NaN;
         _loc3_ = §1"5§(param2,param1.position);
         if(_loc6_)
         {
            §§push(_loc3_.x);
            if(_loc6_ || b2Math)
            {
               §§push(param1.R.col1.x);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     addr121:
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        addr125:
                        §§push(§§pop() * param1.R.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        addr143:
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(_loc6_ || param2)
                        {
                           §§push(param1.R.col2.x);
                           if(!(_loc5_ && b2Math))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc5_)
                              {
                                 addr81:
                                 §§push(_loc3_.y);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr90:
                                    §§push(§§pop() * param1.R.col2.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().y = §§pop();
                              continue;
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr125);
            }
            §§goto(addr121);
         }
         §§goto(addr97);
      }
      
      public static function §%!5§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2.x);
            if(!(_loc4_ && _loc3_))
            {
               addr47:
               §§push(§§pop() + §§pop());
               §§push(param1.y);
               if(!(_loc4_ && b2Math))
               {
                  §§push(§§pop() + param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      public static function §1"5§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc5_ && _loc3_))
         {
            §§push(param2.x);
            if(_loc4_)
            {
               §§goto(addr41);
            }
            §§goto(addr60);
         }
         addr41:
         §§push(§§pop() - §§pop());
         §§push(param1.y);
         if(_loc4_ || param2)
         {
            addr60:
            §§push(§§pop() - param2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public static function § "4§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.x);
         if(_loc6_ || param1)
         {
            §§push(§§pop() - param2.x);
            if(_loc6_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.y);
            if(_loc6_)
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
         §§goto(addr41);
      }
      
      public static function §++§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.x);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc6_)
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
                  addr61:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        addr92:
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           addr95:
                           §§push(§§pop() * _loc4_);
                        }
                        return §§pop() + §§pop();
                     }
                  }
                  §§goto(addr95);
               }
               §§goto(addr92);
            }
            §§goto(addr61);
         }
         §§goto(addr30);
      }
      
      public static function §6!H§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc5_ || b2Math)
         {
            §§push(param2.x);
            if(!_loc4_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() * param2.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function §5q§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§-!4§(§%!5§(param1.col1,param2.col1),§%!5§(param1.col2,param2.col2));
      }
      
      public static function §^"+§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§-!4§(§-!u§(param1,param2.col1),§-!u§(param1,param2.col2));
      }
      
      public static function §9m§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§,w§(param1.col1,param2.col1),§,w§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§,w§(param1.col1,param2.col2),§,w§(param1.col2,param2.col2));
         return b2Mat22.§-!4§(_loc3_,_loc4_);
      }
      
      public static function §71§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > 0)
               {
                  addr39:
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ && _loc3_))
                     {
                        addr73:
                        return §§pop();
                        addr50:
                     }
                     else
                     {
                        addr69:
                        §§push(-§§pop());
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr73);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1);
                  if(!(_loc3_ && b2Math))
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr50);
         }
         §§goto(addr39);
      }
      
      public static function §[q§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§71§(param1.x),§71§(param1.y));
      }
      
      public static function §'!h§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§-!4§(§[q§(param1.col1),§[q§(param1.col2));
      }
      
      public static function §5!!§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() < param2)
               {
                  addr40:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc4_ || param1))
                     {
                        addr70:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr70);
                  }
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr40);
      }
      
      public static function §`!y§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§5!!§(param1.x,param2.x),§5!!§(param1.y,param2.y));
      }
      
      public static function §1r§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ && b2Math)
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
                  if(_loc3_ || param1)
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
      
      public static function §<p§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§1r§(param1.x,param2.x),§1r§(param1.y,param2.y));
      }
      
      public static function § !X§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr30:
                           §§push(param2);
                           if(!(_loc5_ && param2))
                           {
                              §§push(Number(§§pop()));
                              if(_loc5_ && b2Math)
                              {
                                 addr99:
                                 return §§pop();
                                 addr79:
                              }
                           }
                        }
                        else
                        {
                           addr68:
                           §§push(param3);
                           if(!_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc5_ && param2))
                              {
                                 §§goto(addr79);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_ || param1)
                        {
                           addr66:
                           §§push(§§pop() > param3);
                        }
                     }
                     §§goto(addr99);
                  }
                  if(§§pop())
                  {
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || param2)
                     {
                        §§goto(addr99);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr99);
         }
         §§goto(addr30);
      }
      
      public static function §9'§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §<p§(param2,§`!y§(param1,param3));
      }
      
      public static function §6F§(param1:Array, param2:Array) : void
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
               addr62:
               while(true)
               {
                  §§pop()[§§pop()] = param2[0];
                  continue loop0;
               }
            }
         }
      }
      
      public static function §]>§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() - 1;
         }
      }
      
      public static function §]!S§(param1:Number, param2:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(Math.random());
         if(_loc4_ || _loc3_)
         {
            §§push(param2);
            if(_loc4_ || _loc3_)
            {
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     addr56:
                     §§push(_loc3_);
                     if(!(_loc5_ && b2Math))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && param1))
                        {
                           addr73:
                           §§push(§§pop() + param1);
                           if(!(_loc5_ && param1))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                                 addr94:
                                 _loc3_ = §§pop();
                                 return _loc3_;
                              }
                           }
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr94);
               }
               §§goto(addr73);
            }
            §§goto(addr56);
         }
         §§goto(addr94);
      }
      
      public static function §,!!§(param1:uint) : uint
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || b2Math)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(param1);
               addr260:
               while(true)
               {
                  §§push(1);
                  addr261:
                  while(true)
                  {
                     §§push(§§pop() >> §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(2147483647);
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                        }
                        addr280:
                     }
                     addr281:
                     while(true)
                     {
                        §§push(§§pop() | §§pop());
                        addr282:
                        while(true)
                        {
                           §§push(uint(§§pop()));
                           addr283:
                           while(true)
                           {
                              param1 = §§pop();
                              addr284:
                              while(true)
                              {
                                 §§push(param1);
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      public static function §2!=§(param1:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc3_ && b2Math))
            {
               §§push(§§pop() > 0);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
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
