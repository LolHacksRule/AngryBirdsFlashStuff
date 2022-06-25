package §_-03n§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.b2AABB;
   import §_-gE§.b2RayCastInput;
   import §_-gE§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §_-bq§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§_-bq§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            super();
            do
            {
               §_-1c§ = b2internal::_-rv;
               continue loop0;
            }
            while(_loc2_ && _loc2_);
            
            return;
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!(_loc3_ && _loc3_))
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
         if(!(_loc3_ && param1))
         {
            super.Set(param1);
            if(!_loc3_)
            {
               if(param1 is b2CircleShape)
               {
                  addr56:
                  _loc2_ = param1 as b2CircleShape;
                  if(_loc4_ || this)
                  {
                     this.§_-bq§.SetV(_loc2_.§_-bq§);
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc7_ || param1)
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§_-bq§.x);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param2))
                  {
                     addr54:
                     §§push(_loc3_.col2.x);
                     if(_loc7_)
                     {
                        addr59:
                        §§push(§§pop() * this.§_-bq§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc6_ && param2))
                  {
                     addr72:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc7_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc6_)
                     {
                        §§push(this.§_-bq§.x);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && _loc3_))
                           {
                              addr122:
                              §§push(_loc3_.col2.y);
                              if(_loc7_)
                              {
                                 addr117:
                                 §§push(§§pop() * this.§_-bq§.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc7_ || _loc3_)
                              {
                                 addr130:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(!(_loc6_ && param1))
                              {
                                 §§push(param2.x);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop2:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop3:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop4:
                                             while(true)
                                             {
                                                §§push(param2.y);
                                                loop5:
                                                for(; !_loc6_; if(!(_loc7_ || this))
                                                {
                                                   continue;
                                                },if(!_loc7_)
                                                {
                                                   continue loop2;
                                                },if(_loc6_)
                                                {
                                                   continue loop0;
                                                },addr215:,return §§pop() <= §§pop(),§§push(b2internal::_-0CZ * b2internal::_-0CZ))
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr226:
                                                      addr159:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr227:
                                                         do
                                                         {
                                                            _loc5_ = §§pop();
                                                         }
                                                         while(!_loc6_);
                                                         
                                                         continue loop4;
                                                      }
                                                      if(_loc6_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(§§pop() * _loc5_);
                                                            if(_loc7_)
                                                            {
                                                               addr186:
                                                               if(_loc6_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr189:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr159);
                                       }
                                       break;
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr130);
               }
               §§goto(addr59);
            }
            §§goto(addr54);
         }
         §§goto(addr72);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc17_)
         {
            §§push(_loc4_.col1.x);
            if(!_loc16_)
            {
               §§push(this.§_-bq§.x);
               if(!(_loc16_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     addr46:
                     §§push(_loc4_.col2.x);
                     if(!(_loc16_ && this))
                     {
                        addr60:
                        §§push(§§pop() + §§pop() * this.§_-bq§.y);
                     }
                     §§goto(addr60);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_)
                  {
                     addr64:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc17_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc17_ || this)
                     {
                        §§push(this.§_-bq§.x);
                        if(!_loc16_)
                        {
                           addr104:
                           §§push(§§pop() * §§pop());
                           if(_loc17_)
                           {
                              §§push(_loc4_.col2.y);
                              if(!(_loc16_ && this))
                              {
                                 §§push(§§pop() * this.§_-bq§.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc17_)
                           {
                              addr107:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param2.p1.x);
                           if(!_loc16_)
                           {
                              §§push(§§pop() - _loc5_);
                              if(_loc17_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           if(_loc17_ || this)
                           {
                              §§push(param2.p1.y);
                              if(!_loc16_)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc16_ && param3))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc17_)
                                       {
                                          _loc8_ = §§pop();
                                          addr147:
                                          §§push(_loc7_);
                                          if(!_loc16_)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc17_)
                                                {
                                                   addr161:
                                                   §§push(_loc8_);
                                                   if(_loc17_ || param3)
                                                   {
                                                      addr169:
                                                      §§push(§§pop() * _loc8_);
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         addr187:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc17_)
                                                         {
                                                            addr181:
                                                            §§push(b2internal::_-0CZ * b2internal::_-0CZ);
                                                         }
                                                         var _loc9_:Number = §§pop();
                                                         §§push(param2.p2.x);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() - param2.p1.x);
                                                            if(!_loc16_)
                                                            {
                                                               addr200:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param2.p2.y);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() - param2.p1.y);
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(_loc17_ || param3)
                                                            {
                                                               §§push(_loc10_);
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     addr244:
                                                                     §§push(_loc8_);
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        addr252:
                                                                        §§push(§§pop() * _loc11_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        addr257:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc10_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr286:
                                                                                 §§push(§§pop() * _loc11_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc16_ && param2))
                                                                              {
                                                                                 addr296:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc13_:* = §§pop();
                                                                           §§push(_loc12_);
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc9_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr328:
                                                                                             §§push(Number(§§pop()));
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              var _loc14_:* = §§pop();
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 §§push(§§pop() < 0);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc17_ || param3)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc17_ || param3)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc16_ && this))
                                                                                             {
                                                                                                §§push(§§pop() < Number.MIN_VALUE);
                                                                                                if(_loc17_ || this)
                                                                                                {
                                                                                                   addr376:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr381:
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc17_ || param2)
                                                                                                         {
                                                                                                            §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr397:
                                                                                                               var _loc15_:* = Number(§§pop());
                                                                                                               if(!(_loc16_ && this))
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
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(param2.§_-r9§);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             loop5:
                                                                                                                                             while(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(_loc16_ && param1)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   loop10:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(!(_loc16_ && this))
                                                                                                                                                      {
                                                                                                                                                         loop8:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            addr568:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               continue loop8;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr567:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                         addr573:
                                                                                                                                                         loop11:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            param1.fraction = _loc15_;
                                                                                                                                                            loop12:
                                                                                                                                                            while(!(_loc16_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.normal);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     if(!(_loc16_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        addr505:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     addr506:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(param1.normal);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(_loc17_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(_loc17_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr476:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr479:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc16_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr505);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr506);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr476);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr479);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                return §§pop();
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr568);
                                                                                                                                    }
                                                                                                                                    §§goto(addr567);
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr557);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr573);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr397);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr397);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr328);
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc16_)
                                                   {
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr181);
                                 }
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr147);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr107);
               }
               §§goto(addr60);
            }
            §§goto(addr46);
         }
         §§goto(addr64);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!_loc6_)
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || this)
            {
               §§push(this.§_-bq§.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr44:
                     §§push(_loc3_.col2.x);
                     if(_loc7_)
                     {
                        addr53:
                        §§push(§§pop() + §§pop() * this.§_-bq§.y);
                     }
                     §§goto(addr53);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc6_ && this))
                  {
                     addr62:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(_loc7_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc7_)
                     {
                        §§push(this.§_-bq§.x);
                        if(_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && this))
                           {
                              addr97:
                              §§push(_loc3_.col2.y);
                              if(_loc7_)
                              {
                                 addr106:
                                 §§push(§§pop() + §§pop() * this.§_-bq§.y);
                              }
                              §§goto(addr106);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr97);
                  }
                  addr111:
                  var _loc5_:Number = §§pop();
                  if(_loc7_)
                  {
                     §§push(param1.§_-Bv§);
                     §§push(_loc4_);
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop() - b2internal::_-0CZ);
                     }
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        §§push(§§pop() - b2internal::_-0CZ);
                     }
                     §§pop().Set(§§pop(),§§pop());
                  }
                  do
                  {
                     param1.§_-MB§.Set(_loc4_ + b2internal::_-0CZ,_loc5_ + b2internal::_-0CZ);
                  }
                  while(!(_loc7_ || _loc3_));
                  
                  return;
               }
               §§goto(addr53);
            }
            §§goto(addr44);
         }
         §§goto(addr62);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * b2internal::_-0CZ);
                  if(!(_loc4_ && this))
                  {
                     addr158:
                     §§push(§§pop() * b2internal::_-0CZ);
                  }
                  §§pop().§_-ze§ = §§pop();
                  do
                  {
                     param1.center.SetV(this.§_-bq§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§_-ze§);
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() * b2internal::_-0CZ);
                           if(_loc3_)
                           {
                              §§push(§§pop() * b2internal::_-0CZ);
                              if(!(_loc4_ && param2))
                              {
                                 addr60:
                                 §§push(this.§_-bq§.x);
                                 if(!_loc4_)
                                 {
                                    §§push(this.§_-bq§);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc3_)
                                       {
                                          addr106:
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_ || this)
                                          {
                                             addr97:
                                             §§push(this.§_-bq§.y);
                                             if(_loc3_)
                                             {
                                                addr100:
                                                §§push(§§pop() * this.§_-bq§.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                          continue;
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr60);
                     }
                     while(§§pop().§_-CG§ = §§pop(), _loc4_ && _loc3_);
                     
                  }
                  while(_loc4_);
                  
                  return;
                  addr117:
               }
            }
            §§goto(addr158);
         }
         §§goto(addr117);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§_-yP§(param3,this.§_-bq§);
         §§push(b2Math.§_-r8§(param1,_loc5_));
         if(_loc12_)
         {
            §§push(param2);
            if(!_loc11_)
            {
               §§push(§§pop() - §§pop());
               if(_loc12_ || param2)
               {
                  §§push(-§§pop());
                  if(_loc12_)
                  {
                     addr46:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               §§goto(addr46);
            }
            var _loc6_:* = §§pop();
            if(!(_loc11_ && param3))
            {
               if(§§pop() < -b2internal::_-0CZ + Number.MIN_VALUE)
               {
                  if(_loc12_)
                  {
                     return 0;
                  }
                  addr85:
                  param4.SetV(_loc5_);
                  if(!(_loc11_ && param2))
                  {
                     addr95:
                     §§push(Math.PI * b2internal::_-0CZ);
                     if(_loc12_)
                     {
                        addr101:
                        §§push(§§pop() * b2internal::_-0CZ);
                        if(!_loc11_)
                        {
                           §§goto(addr105);
                        }
                     }
                  }
                  else
                  {
                     addr106:
                     §§push(b2internal::_-0CZ * b2internal::_-0CZ);
                     if(!(_loc11_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc6_);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * _loc6_);
                     if(_loc12_ || param3)
                     {
                        addr140:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     if(!_loc11_)
                     {
                        §§push(_loc7_);
                        if(_loc12_)
                        {
                           §§push(§§pop() * (Math.asin(_loc6_ / b2internal::_-0CZ) + Math.PI / 2));
                           if(!_loc11_)
                           {
                              §§push(_loc6_);
                              if(_loc12_ || param1)
                              {
                                 §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc12_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc11_ && param1))
                                       {
                                          _loc9_ = §§pop();
                                          addr193:
                                          §§push(-2 / 3);
                                          if(!_loc11_)
                                          {
                                             §§goto(addr198);
                                          }
                                          addr213:
                                          §§push(§§pop() / _loc9_);
                                          if(!(_loc11_ && param1))
                                          {
                                             addr221:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       addr198:
                                       §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                       if(_loc12_ || param3)
                                       {
                                       }
                                       §§goto(addr222);
                                    }
                                    addr222:
                                    var _loc10_:* = §§pop();
                                    if(!(_loc11_ && param1))
                                    {
                                       §§push(param4);
                                       §§push(_loc5_.x);
                                       if(_loc12_ || param1)
                                       {
                                          §§push(param1.x);
                                          if(_loc12_)
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
                                       if(!_loc11_)
                                       {
                                          §§push(param1.y);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(!_loc12_);
                                    
                                    return _loc9_;
                                 }
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr140);
               }
               else
               {
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     if(§§pop() > b2internal::_-0CZ)
                     {
                        if(!(_loc11_ && this))
                        {
                           §§goto(addr85);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr101);
            }
            addr105:
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function §_-4U§() : b2Vec2
      {
         return this.§_-bq§;
      }
      
      public function §_-mn§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-bq§.SetV(param1);
         }
      }
      
      public function §_-09S§() : Number
      {
         return b2internal::_-0CZ;
      }
      
      public function §_-Fu§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-0CZ§ = param1;
         }
      }
   }
}
