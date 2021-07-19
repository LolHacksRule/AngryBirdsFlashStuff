package §-!C§
{
   import § G§.b2AABB;
   import § G§.b2RayCastInput;
   import § G§.b2RayCastOutput;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §?8§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?8§ = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  §3c§ = b2internal::9!T;
                  while(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        §=!W§ = param1;
                        if(!_loc2_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_ || _loc1_)
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
         if(!(_loc4_ && _loc2_))
         {
            super.Set(param1);
            if(!(_loc4_ && this))
            {
               §§goto(addr46);
            }
            §§goto(addr50);
         }
         addr46:
         if(param1 is b2CircleShape)
         {
            addr50:
            _loc2_ = param1 as b2CircleShape;
            if(!(_loc4_ && this))
            {
               this.§?8§.SetV(_loc2_.§?8§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!_loc6_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§?8§.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr49:
                     §§push(_loc3_.col2.x);
                     if(_loc7_)
                     {
                        addr44:
                        §§push(§§pop() * this.§?8§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc6_ && param1))
                     {
                        addr57:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param1.position.y);
                     if(!_loc6_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc7_)
                        {
                           §§push(this.§?8§.x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 addr77:
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr91:
                                    §§push(§§pop() + §§pop() * this.§?8§.y);
                                 }
                                 §§goto(addr91);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && param2))
                              {
                                 addr111:
                                 var _loc5_:* = Number(§§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(param2.x);
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr219:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr220:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr221:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                             }
                                          }
                                       }
                                    }
                                    addr218:
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param2.y);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(_loc5_);
                                          loop5:
                                          do
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                addr196:
                                             }
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc7_ || param2))
                                                {
                                                   break;
                                                }
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(!(_loc7_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc5_);
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * _loc5_);
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr219);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr173:
                                                               §§push(b2internal::=!W * b2internal::=!W);
                                                            }
                                                            return §§pop() <= §§pop();
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr173);
                                             }
                                             continue loop4;
                                          }
                                          while(_loc6_ && param2);
                                          
                                          §§goto(addr173);
                                          §§push(§§pop() + §§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr218);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr49);
               }
               §§goto(addr44);
            }
            §§goto(addr49);
         }
         §§goto(addr57);
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
            if(_loc17_ || param3)
            {
               §§push(this.§?8§.x);
               if(!_loc16_)
               {
                  addr66:
                  §§push(§§pop() * §§pop());
                  if(_loc17_ || this)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc17_ || this)
                     {
                        §§push(§§pop() * this.§?8§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc16_ && param2))
                  {
                     addr75:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc17_)
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc17_ || param2)
                        {
                           §§push(this.§?8§.x);
                           if(!(_loc16_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_)
                              {
                                 addr104:
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc16_ && this))
                                 {
                                    addr114:
                                    §§push(§§pop() * this.§?8§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc16_ && param1))
                              {
                                 addr128:
                                 var _loc6_:Number = §§pop();
                                 §§push(param2.p1.x);
                                 if(_loc17_ || param2)
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(!_loc16_)
                                    {
                                       addr143:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc17_)
                                    {
                                       §§push(param2.p1.y);
                                       if(_loc17_ || this)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc16_ && this))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc16_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc16_ && param2))
                                                {
                                                   _loc8_ = §§pop();
                                                   addr177:
                                                   §§push(_loc7_);
                                                   if(_loc17_ || param3)
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc17_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc17_ || param1)
                                                            {
                                                               addr209:
                                                               §§push(§§pop() * _loc8_);
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  addr228:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr221:
                                                                     §§push(b2internal::=!W * b2internal::=!W);
                                                                  }
                                                                  var _loc9_:* = §§pop();
                                                                  §§push(param2.p2.x);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.x);
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        addr245:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(param2.p2.y);
                                                                     if(_loc17_ || param2)
                                                                     {
                                                                        §§push(§§pop() - param2.p1.y);
                                                                        if(_loc17_ || this)
                                                                        {
                                                                           addr268:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc7_);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 addr284:
                                                                                 §§push(_loc8_);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr289:
                                                                                    §§push(§§pop() + §§pop() * _loc11_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc10_);
                                                                              if(_loc17_ || param3)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr328:
                                                                                          §§push(§§pop() + §§pop() * _loc11_);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr331:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             addr347:
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc16_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                                if(_loc17_ || param2)
                                                                                                {
                                                                                                   addr364:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      addr373:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr373);
                                                                                                }
                                                                                                var _loc14_:* = §§pop();
                                                                                                if(_loc17_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() < 0);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc17_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(!(_loc16_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() < Number.MIN_VALUE);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr411:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§goto(addr415);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr416:
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              addr419:
                                                                                                                              §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                              if(!(_loc16_ && param3))
                                                                                                                              {
                                                                                                                                 addr431:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc15_:* = §§pop();
                                                                                                                              if(_loc17_ || param3)
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
                                                                                                                                       if(!(_loc16_ && param2))
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop3:
                                                                                                                                                while(!§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         addr619:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               addr583:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  addr584:
                                                                                                                                                                  while(_loc17_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        loop8:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           param1.fraction = _loc15_;
                                                                                                                                                                           loop9:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.normal);
                                                                                                                                                                              loop10:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 addr533:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(_loc17_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr501:
                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                          if(_loc16_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc16_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr518:
                                                                                                                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr543:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr544:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                addr545:
                                                                                                                                                                                                while(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1.normal);
                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr543:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr542:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr543);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop1;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr583);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr595);
                                                                                                                                                   §§goto(addr468);
                                                                                                                                                }
                                                                                                                                                addr577:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr619);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr416);
                                                                                                                  }
                                                                                                                  §§goto(addr415);
                                                                                                               }
                                                                                                               §§goto(addr431);
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         addr415:
                                                                                                         return false;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                                §§goto(addr419);
                                                                                             }
                                                                                             §§goto(addr364);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       §§goto(addr364);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc17_)
                                                               {
                                                                  addr227:
                                                                  §§goto(addr228);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr75);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr66);
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
            if(!(_loc7_ && _loc3_))
            {
               §§push(this.§?8§.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && param2))
                  {
                     addr48:
                     §§push(_loc3_.col2.x);
                     if(!(_loc7_ && this))
                     {
                        addr62:
                        §§push(§§pop() + §§pop() * this.§?8§.y);
                     }
                     §§goto(addr62);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_ || param1)
                  {
                     addr71:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(_loc6_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc6_)
                     {
                        §§push(this.§?8§.x);
                        if(_loc6_ || this)
                        {
                           §§goto(addr116);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     addr116:
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        §§push(_loc3_.col2.y);
                        if(_loc6_)
                        {
                           §§push(§§pop() * this.§?8§.y);
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || _loc3_)
                     {
                     }
                     §§goto(addr125);
                  }
                  addr125:
                  var _loc5_:Number = §§pop();
                  if(_loc6_)
                  {
                     §§push(param1.§ 1§);
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - b2internal::=!W);
                     }
                     §§push(_loc5_);
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§pop() - b2internal::=!W);
                     }
                     §§pop().Set(§§pop(),§§pop());
                     do
                     {
                        param1.§,e§.Set(_loc4_ + b2internal::=!W,_loc5_ + b2internal::=!W);
                     }
                     while(!(_loc6_ || param1));
                     
                  }
                  return;
               }
               §§goto(addr62);
            }
            §§goto(addr48);
         }
         §§goto(addr71);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            §§push(param2);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() * b2internal::=!W);
                  if(_loc4_ && param1)
                  {
                  }
                  addr170:
                  §§pop().§@!V§ = §§pop();
                  do
                  {
                     param1.center.SetV(this.§?8§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§@!V§);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!(_loc4_ && param2))
                        {
                           §§push(§§pop() * b2internal::=!W);
                           if(_loc3_)
                           {
                              §§push(§§pop() * b2internal::=!W);
                              if(_loc3_ || param1)
                              {
                              }
                              addr111:
                              §§push(§§pop() * §§pop());
                              continue;
                           }
                           §§push(this.§?8§.x);
                           if(_loc3_ || param1)
                           {
                              §§push(this.§?8§);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop().x);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || param1)
                                    {
                                       addr102:
                                       §§push(this.§?8§.y);
                                       if(!_loc4_)
                                       {
                                          addr109:
                                          §§push(§§pop() + §§pop() * this.§?8§.y);
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr111);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr109);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr111);
                     }
                     while(§§pop().§9o§ = §§pop(), _loc4_ && this);
                     
                  }
                  while(_loc4_);
                  
                  return;
                  addr171:
               }
               §§push(§§pop() * b2internal::=!W);
            }
            §§goto(addr170);
         }
         §§goto(addr171);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§&B§(param3,this.§?8§);
         §§push(b2Math.§9-§(param1,_loc5_));
         if(_loc11_ || this)
         {
            §§push(param2);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(_loc11_)
               {
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                     addr46:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr46);
            }
            var _loc6_:* = §§pop();
            if(_loc11_)
            {
               if(§§pop() < -b2internal::=!W + Number.MIN_VALUE)
               {
                  if(_loc11_)
                  {
                     return 0;
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     addr65:
                     if(§§pop() > b2internal::=!W)
                     {
                        if(_loc11_)
                        {
                           param4.SetV(_loc5_);
                           if(_loc12_)
                           {
                              addr90:
                              §§push(b2internal::=!W * b2internal::=!W);
                              if(!(_loc12_ && param1))
                              {
                                 §§goto(addr100);
                              }
                           }
                           §§goto(addr101);
                        }
                        addr74:
                        §§push(Math.PI * b2internal::=!W);
                        if(!(_loc12_ && param3))
                        {
                           §§push(§§pop() * b2internal::=!W);
                           if(_loc12_)
                           {
                              addr101:
                              var _loc7_:Number = §§pop();
                              addr100:
                              §§push(_loc6_);
                              if(!(_loc12_ && param2))
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
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() * (Math.asin(_loc6_ / b2internal::=!W) + Math.PI / 2));
                                    if(!(_loc12_ && param1))
                                    {
                                       §§push(_loc6_);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                          if(!(_loc12_ && param2))
                                          {
                                             §§goto(addr165);
                                          }
                                          §§goto(addr197);
                                       }
                                       addr165:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc12_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc11_)
                                          {
                                             _loc9_ = §§pop();
                                             addr172:
                                             §§push(-2 / 3);
                                             if(_loc11_ || param1)
                                             {
                                                §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                if(!(_loc12_ && this))
                                                {
                                                   addr197:
                                                   §§push(§§pop() / _loc9_);
                                                   if(_loc11_ || this)
                                                   {
                                                      addr205:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr205);
                                       }
                                       var _loc10_:* = §§pop();
                                       if(_loc11_ || param1)
                                       {
                                          §§push(param4);
                                          §§push(_loc5_.x);
                                          if(_loc11_ || param1)
                                          {
                                             §§push(param1.x);
                                             if(!(_loc12_ && param3))
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
                                       
                                       return _loc9_;
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr172);
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr65);
         }
         §§goto(addr46);
      }
      
      public function §?N§() : b2Vec2
      {
         return this.§?8§;
      }
      
      public function §=D§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?8§.SetV(param1);
         }
      }
      
      public function §2@§() : Number
      {
         return b2internal::=!W;
      }
      
      public function §>w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §=!W§ = param1;
         }
      }
   }
}
