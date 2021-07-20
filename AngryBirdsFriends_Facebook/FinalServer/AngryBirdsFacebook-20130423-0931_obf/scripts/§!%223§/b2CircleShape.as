package §!"3§
{
   import §'"-§.b2AABB;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §2"9§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§2"9§ = new b2Vec2();
            while(true)
            {
               super();
            }
            addr77:
         }
         while(true)
         {
            §<"@§ = b2internal:: "&;
            for(; !_loc3_; §0!_§ = param1,if(!(_loc3_ && _loc3_))
            {
               return;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!_loc3_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         if(!(_loc3_ && _loc2_))
         {
            super.Set(param1);
            if(!(_loc3_ && this))
            {
               if(param1 is b2CircleShape)
               {
                  addr61:
                  _loc2_ = param1 as b2CircleShape;
                  if(_loc4_)
                  {
                     this.§2"9§.SetV(_loc2_.§2"9§);
                  }
               }
               return;
            }
         }
         §§goto(addr61);
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
            if(!_loc7_)
            {
               §§push(this.§2"9§.x);
               if(_loc6_)
               {
                  addr58:
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() * this.§2"9§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc7_ && param1))
                  {
                     addr67:
                     var _loc4_:* = Number(§§pop());
                     §§push(param1.position.y);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc6_ || param2)
                        {
                           §§push(this.§2"9§.x);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_ || param2)
                              {
                                 addr116:
                                 §§push(_loc3_.col2.y);
                                 if(_loc6_)
                                 {
                                    addr125:
                                    §§push(§§pop() + §§pop() * this.§2"9§.y);
                                 }
                                 §§goto(addr125);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr134:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr238:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr239:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr240:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                                 addr237:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(param2.y);
                                 loop5:
                                 do
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(_loc5_);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          while(!(_loc7_ && param1))
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc7_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc4_);
                                             if(_loc7_)
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc6_ || param2))
                                             {
                                                continue;
                                             }
                                             §§push(_loc4_);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr182:
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               continue loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr238);
                                                      }
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr237);
                                                §§goto(addr238);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr239);
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                                 while(!(_loc6_ || param2));
                                 
                                 addr195:
                                 return §§pop() <= §§pop();
                              }
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr67);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr58);
         }
         §§goto(addr67);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc4_.col1.x);
            if(_loc17_ || param2)
            {
               §§push(this.§2"9§.x);
               if(_loc17_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_ || param3)
                  {
                     addr56:
                     §§push(_loc4_.col2.x);
                     if(!(_loc16_ && param1))
                     {
                        addr70:
                        §§push(§§pop() + §§pop() * this.§2"9§.y);
                     }
                     §§goto(addr70);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_)
                  {
                     addr75:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc16_ && param1))
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(this.§2"9§.x);
                           if(_loc17_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || param1)
                              {
                                 addr119:
                                 §§push(_loc4_.col2.y);
                                 if(_loc17_)
                                 {
                                    addr114:
                                    §§push(§§pop() * this.§2"9§.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(!_loc16_)
                                 {
                                    addr122:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(param2.p1.x);
                                 if(_loc17_ || param3)
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(_loc17_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc16_)
                                 {
                                    §§push(param2.p1.y);
                                    if(!_loc16_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc16_ && param3))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc17_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc17_ || this)
                                             {
                                                _loc8_ = §§pop();
                                                addr177:
                                                §§push(_loc7_);
                                                if(!_loc17_)
                                                {
                                                }
                                                addr213:
                                                var _loc9_:* = §§pop();
                                                §§push(param2.p2.x);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop() - param2.p1.x);
                                                   if(_loc17_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(param2.p2.y);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop() - param2.p1.y);
                                                   if(!(_loc16_ && param2))
                                                   {
                                                      addr243:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc7_);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(_loc10_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            §§push(_loc8_);
                                                            if(!(_loc16_ && this))
                                                            {
                                                               addr267:
                                                               §§push(§§pop() * _loc11_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc17_ || param3)
                                                            {
                                                            }
                                                            addr278:
                                                            var _loc12_:* = §§pop();
                                                            §§push(_loc10_);
                                                            if(_loc17_ || param2)
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc17_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc16_ && param2))
                                                                  {
                                                                     addr313:
                                                                     §§push(_loc11_);
                                                                     if(_loc17_ || param2)
                                                                     {
                                                                        addr321:
                                                                        §§push(§§pop() * _loc11_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc16_ && this))
                                                                        {
                                                                           §§push(_loc13_);
                                                                           if(_loc17_ || param2)
                                                                           {
                                                                              §§push(§§pop() * _loc9_);
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 addr369:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr373:
                                                                                    §§push(Number(§§pop()));
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr373);
                                                                              }
                                                                              var _loc14_:* = §§pop();
                                                                              if(!(_loc16_ && this))
                                                                              {
                                                                                 §§push(§§pop() < 0);
                                                                                 if(!(_loc16_ && param3))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc17_ || param1)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() < Number.MIN_VALUE);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr411:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§goto(addr415);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr415);
                                                                                             }
                                                                                             addr437:
                                                                                             var _loc15_:* = §§pop();
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc15_);
                                                                                                   addr636:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           while(!_loc16_)
                                                                                                                           {
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                           addr613:
                                                                                                                        }
                                                                                                                        if(_loc17_ || param1)
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        addr639:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           loop4:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(_loc17_ || this)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              loop17:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 addr626:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       addr629:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       param1.fraction = _loc15_;
                                                                                                                                       loop9:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.normal);
                                                                                                                                          loop10:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(_loc17_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr525:
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      if(_loc17_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr535:
                                                                                                                                                         §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                         addr534:
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                loop13:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop14:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      §§push(param1.normal);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc17_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc17_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr525);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr534);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr535);
                                                                                                                                                         addr543:
                                                                                                                                                         §§push(param1.normal);
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§pop().Normalize();
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue loop9;
                                                                                                                                                         }
                                                                                                                                                         if(_loc17_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(true);
                                                                                                                                                            break loop20;
                                                                                                                                                         }
                                                                                                                                                         addr617:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(_loc17_ || param3)
                                                                                                                                                            {
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr629);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  return §§pop();
                                                                                                                  addr441:
                                                                                                               }
                                                                                                               §§goto(addr617);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr639);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          §§push(_loc12_);
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                §§goto(addr437);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr437);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 addr415:
                                                                                 return false;
                                                                              }
                                                                              §§goto(addr437);
                                                                           }
                                                                        }
                                                                        §§goto(addr373);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr278);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§push(_loc7_);
                                             if(!(_loc16_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * _loc8_);
                                                      if(!_loc16_)
                                                      {
                                                         addr198:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc16_ && this))
                                                         {
                                                            §§push(b2internal::0!_ * b2internal::0!_);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc17_)
                                                      {
                                                         §§goto(addr213);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                                §§goto(addr213);
                                             }
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr75);
               }
               §§goto(addr70);
            }
            §§goto(addr56);
         }
         §§goto(addr75);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc6_)
         {
            §§push(_loc3_.col1.x);
            if(_loc6_ || _loc3_)
            {
               §§push(this.§2"9§.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && param1))
                  {
                     addr63:
                     §§push(_loc3_.col2.x);
                     if(_loc6_ || param2)
                     {
                        addr58:
                        §§push(§§pop() * this.§2"9§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc6_ || this)
                     {
                        addr71:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param2.position.y);
                     if(!_loc7_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(this.§2"9§.x);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc7_ && param2))
                              {
                                 addr116:
                                 §§push(_loc3_.col2.y);
                                 if(_loc6_)
                                 {
                                    addr125:
                                    §§push(§§pop() + §§pop() * this.§2"9§.y);
                                 }
                                 §§goto(addr125);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr134:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(param1.§8"S§);
                                 §§push(_loc4_);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() - b2internal::0!_);
                                 }
                                 §§push(_loc5_);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(§§pop() - b2internal::0!_);
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 do
                                 {
                                    param1.§4B§.Set(_loc4_ + b2internal::0!_,_loc5_ + b2internal::0!_);
                                 }
                                 while(_loc7_);
                                 
                              }
                              return;
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr63);
               }
               §§goto(addr58);
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc3_ || param2)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_)
               {
                  §§push(§§pop() * b2internal::0!_);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr148:
                     §§push(§§pop() * b2internal::0!_);
                  }
               }
               §§pop().§'"N§ = §§pop();
               while(true)
               {
                  param1.center.SetV(this.§2"9§);
                  §§goto(addr124);
               }
            }
            §§goto(addr148);
         }
         addr124:
         while(true)
         {
            §§push(param1);
            §§push(param1.§'"N§);
            if(!_loc3_)
            {
               continue;
            }
            §§push(0.5);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * b2internal::0!_);
               if(_loc3_)
               {
                  addr46:
                  §§push(§§pop() * b2internal::0!_);
                  if(!_loc4_)
                  {
                     §§push(this.§2"9§.x);
                     if(_loc3_ || this)
                     {
                        §§push(this.§2"9§);
                        if(_loc3_)
                        {
                           §§push(§§pop().x);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 addr82:
                                 §§push(this.§2"9§.y);
                                 if(!(_loc4_ && this))
                                 {
                                    addr94:
                                    §§push(§§pop() + §§pop() * this.§2"9§.y);
                                 }
                                 §§goto(addr94);
                              }
                              addr96:
                              §§push(§§pop() * (§§pop() + §§pop()));
                              continue;
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr46);
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§^T§(param3,this.§2"9§);
         §§push(b2Math.§[!3§(param1,_loc5_));
         if(!(_loc12_ && this))
         {
            §§push(param2);
            if(_loc11_ || param2)
            {
               §§push(§§pop() - §§pop());
               if(!_loc12_)
               {
                  addr57:
                  §§push(-§§pop());
                  if(!(_loc12_ && param1))
                  {
                     addr55:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:*;
                  §§push(_loc6_ = §§pop());
                  if(!(_loc12_ && param1))
                  {
                     if(§§pop() < -b2internal::0!_ + Number.MIN_VALUE)
                     {
                        if(!_loc12_)
                        {
                           return 0;
                        }
                        addr104:
                        §§push(Math.PI * b2internal::0!_);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * b2internal::0!_);
                           if(!(_loc12_ && this))
                           {
                              §§goto(addr119);
                           }
                        }
                        else
                        {
                           addr130:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc6_);
                        if(_loc11_ || param2)
                        {
                           §§push(§§pop() * _loc6_);
                           if(_loc11_ || this)
                           {
                              addr159:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           if(!(_loc12_ && param3))
                           {
                              §§push(_loc7_);
                              if(_loc11_ || this)
                              {
                                 §§push(§§pop() * (Math.asin(_loc6_ / b2internal::0!_) + Math.PI / 2));
                                 if(!_loc12_)
                                 {
                                    addr189:
                                    §§push(_loc6_);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                       if(_loc11_ || param3)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc11_)
                                             {
                                                _loc9_ = §§pop();
                                                §§goto(addr217);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr189);
                           }
                           addr217:
                           §§push(-2 / 3);
                           if(_loc11_)
                           {
                              addr222:
                              §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                              if(_loc11_ || param1)
                              {
                                 addr236:
                                 §§push(§§pop() / _loc9_);
                                 if(!(_loc12_ && param3))
                                 {
                                    addr245:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr245);
                           }
                           var _loc10_:* = §§pop();
                           if(_loc11_ || param1)
                           {
                              §§push(param4);
                              §§push(_loc5_.x);
                              if(_loc11_ || param2)
                              {
                                 §§push(param1.x);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() * _loc10_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().x = §§pop();
                           }
                           do
                           {
                              §§push(param4);
                              §§push(_loc5_.y);
                              if(_loc11_)
                              {
                                 §§push(param1.y);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() * _loc10_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().y = §§pop();
                           }
                           while(_loc12_ && param2);
                           
                           return _loc9_;
                        }
                        §§goto(addr159);
                     }
                     else
                     {
                        §§push(_loc6_);
                        if(_loc11_ || this)
                        {
                           addr90:
                           if(§§pop() > b2internal::0!_)
                           {
                              if(_loc11_)
                              {
                                 param4.SetV(_loc5_);
                                 if(!(_loc12_ && param3))
                                 {
                                    §§goto(addr104);
                                 }
                                 else
                                 {
                                    addr120:
                                    §§push(b2internal::0!_ * b2internal::0!_);
                                    if(!(_loc12_ && this))
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr120);
                        }
                     }
                     addr119:
                     return §§pop();
                  }
                  §§goto(addr90);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr57);
      }
      
      public function §]k§() : b2Vec2
      {
         return this.§2"9§;
      }
      
      public function §&"Z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2"9§.SetV(param1);
         }
      }
      
      public function §;"9§() : Number
      {
         return b2internal::0!_;
      }
      
      public function §;#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §0!_§ = param1;
         }
      }
   }
}
