package §&U§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2AABB;
   import §9"§.b2RayCastInput;
   import §9"§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §[I§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[I§ = new b2Vec2();
            while(true)
            {
               super();
               while(true)
               {
                  §8!J§ = b2internal::&!L;
                  §§goto(addr64);
               }
            }
         }
         addr64:
         while(true)
         {
            §@s§ = param1;
            if(!(_loc2_ && this))
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!_loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         if(_loc3_ || param1)
         {
            super.Set(param1);
            if(_loc3_)
            {
               §§goto(addr41);
            }
            §§goto(addr45);
         }
         addr41:
         if(param1 is b2CircleShape)
         {
            addr45:
            _loc2_ = param1 as b2CircleShape;
            if(!(_loc4_ && param1))
            {
               this.§[I§.SetV(_loc2_.§[I§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc3_.col1.x);
            if(_loc6_)
            {
               §§push(this.§[I§.x);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     addr53:
                     §§push(_loc3_.col2.x);
                     if(!(_loc7_ && param2))
                     {
                        addr63:
                        §§push(§§pop() * this.§[I§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_ || param2)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(!(_loc7_ && param2))
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc7_)
                     {
                        §§push(this.§[I§.x);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              addr116:
                              §§push(_loc3_.col2.y);
                              if(_loc6_)
                              {
                                 addr125:
                                 §§push(§§pop() + §§pop() * this.§[I§.y);
                              }
                              §§goto(addr125);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr129:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(param2.x);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    addr174:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr189);
                                 }
                              }
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr230:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                 }
                              }
                              addr229:
                           }
                           loop3:
                           while(true)
                           {
                              §§push(param2.y);
                              loop4:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 addr197:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       addr164:
                                       if(_loc6_ || this)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             §§goto(addr174);
                                          }
                                          addr189:
                                          §§push(§§pop() * _loc5_);
                                          if(!_loc7_)
                                          {
                                             addr186:
                                             §§push(§§pop() + §§pop());
                                             §§push(b2internal::@s * b2internal::@s);
                                          }
                                          return §§pop() <= §§pop();
                                       }
                                       §§goto(addr229);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr129);
               }
               §§goto(addr63);
            }
            §§goto(addr53);
         }
         §§goto(addr76);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc16_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(_loc16_)
            {
               §§push(this.§[I§.x);
               if(!_loc17_)
               {
                  addr60:
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc16_ || param2)
                     {
                        §§push(§§pop() * this.§[I§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_)
                  {
                     addr63:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc16_ || param3)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc17_)
                     {
                        §§push(this.§[I§.x);
                        if(!_loc17_)
                        {
                           addr98:
                           §§push(§§pop() * §§pop());
                           if(_loc16_)
                           {
                              §§push(_loc4_.col2.y);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * this.§[I§.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc16_ || param1)
                           {
                              addr106:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param2.p1.x);
                           if(_loc16_ || param2)
                           {
                              §§push(§§pop() - _loc5_);
                              if(!(_loc17_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           if(!_loc17_)
                           {
                              §§push(param2.p1.y);
                              if(_loc16_ || this)
                              {
                                 §§push(_loc6_);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_ || param2)
                                       {
                                          _loc8_ = §§pop();
                                          addr161:
                                          §§push(_loc7_);
                                          if(_loc16_)
                                          {
                                             addr164:
                                             §§push(_loc7_);
                                             if(!(_loc17_ && param3))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc17_ && param2))
                                                   {
                                                      §§push(§§pop() * _loc8_);
                                                      if(!_loc17_)
                                                      {
                                                         addr187:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                         }
                                                         addr202:
                                                         var _loc9_:* = §§pop();
                                                         §§push(param2.p2.x);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() - param2.p1.x);
                                                            if(!_loc17_)
                                                            {
                                                               addr214:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param2.p2.y);
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(§§pop() - param2.p1.y);
                                                               if(_loc16_ || param2)
                                                               {
                                                                  addr237:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc7_);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr266:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(§§pop() * _loc11_);
                                                                        }
                                                                     }
                                                                     var _loc12_:Number = §§pop();
                                                                     §§push(_loc10_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              addr297:
                                                                              §§push(_loc11_);
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 addr305:
                                                                                 §§push(§§pop() * _loc11_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 addr310:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(_loc16_ || param3)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc16_ || param2)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(!(_loc17_ && param2))
                                                                                       {
                                                                                          addr339:
                                                                                          §§push(§§pop() * _loc9_);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc16_ || param3)
                                                                                             {
                                                                                                addr352:
                                                                                                §§push(Number(§§pop()));
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() < 0);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop() < Number.MIN_VALUE);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr375:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc16_ || param2)
                                                                                                               {
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr385:
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                     if(_loc17_ && param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr401:
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        loop0:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc15_);
                                                                                                                           loop1:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                              loop2:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop3:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc16_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(param2.§7!A§);
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc13_);
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                loop4:
                                                                                                                                                while(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(!(_loc17_ && param2))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr419:
                                                                                                                                                         while(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(_loc17_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         return _loc13_;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(!(_loc17_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             if(!(_loc17_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                             §§goto(addr542);
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr532);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr465);
                                                                                                                  }
                                                                                                                  §§goto(addr401);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr385);
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr375);
                                                                                          }
                                                                                          addr384:
                                                                                          return false;
                                                                                       }
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc17_ && param3)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      addr193:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc17_ && this))
                                                      {
                                                         addr201:
                                                         §§goto(addr202);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§push(b2internal::@s * b2internal::@s);
                                             }
                                             §§goto(addr193);
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr161);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr106);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr60);
         }
         §§goto(addr63);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc7_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc6_ && param2))
            {
               §§push(this.§[I§.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     addr49:
                     §§push(_loc3_.col2.x);
                     if(_loc7_)
                     {
                        addr54:
                        §§push(§§pop() * this.§[I§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr62:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(!_loc6_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc7_ || param2)
                     {
                        §§push(this.§[I§.x);
                        if(!_loc6_)
                        {
                           §§goto(addr112);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     addr112:
                     §§push(§§pop() * §§pop());
                     if(_loc7_)
                     {
                        §§push(_loc3_.col2.y);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() * this.§[I§.y);
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_ && param1)
                     {
                     }
                     §§goto(addr121);
                  }
                  addr121:
                  var _loc5_:Number = §§pop();
                  if(_loc7_ || this)
                  {
                     §§push(param1.§!!C§);
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        §§push(§§pop() - b2internal::@s);
                     }
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        §§push(§§pop() - b2internal::@s);
                     }
                     §§pop().Set(§§pop(),§§pop());
                     do
                     {
                        param1.§<0§.Set(_loc4_ + b2internal::@s,_loc5_ + b2internal::@s);
                     }
                     while(_loc6_);
                     
                  }
                  return;
               }
               §§goto(addr54);
            }
            §§goto(addr49);
         }
         §§goto(addr62);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            §§push(param2);
            if(_loc3_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_)
               {
                  addr119:
                  §§push(§§pop() * b2internal::@s);
                  if(_loc3_ || param2)
                  {
                     §§push(§§pop() * b2internal::@s);
                  }
               }
               §§pop().§6O§ = §§pop();
               do
               {
                  param1.center.SetV(this.§[I§);
                  do
                  {
                     §§push(param1);
                     §§push(param1.§6O§);
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§push(0.5);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() * b2internal::@s);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() * b2internal::@s);
                           if(_loc4_)
                           {
                           }
                           addr96:
                           §§push(§§pop() * §§pop());
                           continue;
                        }
                        §§push(this.§[I§.x);
                        if(_loc3_)
                        {
                           §§push(this.§[I§);
                           if(!_loc4_)
                           {
                              §§push(§§pop().x);
                              if(!_loc4_)
                              {
                                 addr95:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    addr87:
                                    §§push(this.§[I§.y);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * this.§[I§.y);
                                    }
                                 }
                                 §§goto(addr96);
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr95);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr96);
                  }
                  while(§§pop().§`$§ = §§pop(), _loc4_);
                  
               }
               while(!_loc3_);
               
               return;
               addr102:
            }
            §§goto(addr119);
         }
         §§goto(addr102);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§@E§(param3,this.§[I§);
         §§push(b2Math.static(param1,_loc5_));
         if(_loc11_)
         {
            §§push(param2);
            if(_loc11_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc12_)
               {
                  §§push(-§§pop());
                  if(_loc11_ || param3)
                  {
                     addr45:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               §§goto(addr45);
            }
            var _loc6_:* = §§pop();
            if(!(_loc12_ && param2))
            {
               if(§§pop() < -b2internal::@s + Number.MIN_VALUE)
               {
                  if(!_loc12_)
                  {
                     return 0;
                  }
                  addr110:
                  §§push(b2internal::@s * b2internal::@s);
                  if(!_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     addr70:
                     if(§§pop() > b2internal::@s)
                     {
                        if(!(_loc12_ && this))
                        {
                           param4.SetV(_loc5_);
                           if(_loc12_ && param3)
                           {
                              §§goto(addr110);
                           }
                           addr116:
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() * _loc6_);
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           if(_loc11_)
                           {
                              §§push(_loc7_);
                              if(!(_loc12_ && param3))
                              {
                                 §§push(§§pop() * (Math.asin(_loc6_ / b2internal::@s) + Math.PI / 2));
                                 if(!(_loc12_ && param3))
                                 {
                                    addr164:
                                    §§push(_loc6_);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc12_)
                                             {
                                                _loc9_ = §§pop();
                                                addr182:
                                                §§push(-2 / 3);
                                                if(!(_loc12_ && param3))
                                                {
                                                   addr192:
                                                   §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                   if(!(_loc12_ && param3))
                                                   {
                                                      addr207:
                                                      addr206:
                                                      §§push(§§pop() / _loc9_);
                                                      if(_loc12_)
                                                      {
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             addr211:
                                             var _loc10_:* = §§pop();
                                             if(!(_loc12_ && param1))
                                             {
                                                §§push(param4);
                                                §§push(_loc5_.x);
                                                if(_loc11_ || param2)
                                                {
                                                   §§push(param1.x);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() * _loc10_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                do
                                                {
                                                   §§push(param4);
                                                   §§push(_loc5_.y);
                                                   if(_loc11_ || this)
                                                   {
                                                      §§push(param1.y);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() * _loc10_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                while(_loc12_);
                                                
                                             }
                                             return _loc9_;
                                          }
                                          §§goto(addr192);
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr182);
                        }
                        §§push(Math.PI * b2internal::@s);
                        if(_loc11_ || param3)
                        {
                           addr100:
                           §§push(§§pop() * b2internal::@s);
                           if(!(_loc12_ && param1))
                           {
                              return §§pop();
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr100);
               }
               §§goto(addr116);
            }
            §§goto(addr70);
         }
         §§goto(addr45);
      }
      
      public function §#!4§() : b2Vec2
      {
         return this.§[I§;
      }
      
      public function §&!D§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§[I§.SetV(param1);
         }
      }
      
      public function §=I§() : Number
      {
         return b2internal::@s;
      }
      
      public function §%!4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §@s§ = param1;
         }
      }
   }
}
