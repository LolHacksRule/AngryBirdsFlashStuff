package §2!+§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2AABB;
   import §72§.b2RayCastInput;
   import §72§.b2RayCastOutput;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §]x§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]x§ = new b2Vec2();
         }
         do
         {
            super();
            do
            {
               §+!?§ = b2internal::=! ;
               do
               {
                  §9!A§ = param1;
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || _loc3_));
            
         }
         while(_loc3_ && this);
         
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!(_loc3_ && _loc1_))
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
         if(!(_loc3_ && this))
         {
            super.Set(param1);
            if(_loc4_)
            {
               §§goto(addr52);
            }
            §§goto(addr56);
         }
         addr52:
         if(param1 is b2CircleShape)
         {
            addr56:
            _loc2_ = param1 as b2CircleShape;
            if(_loc4_ || _loc2_)
            {
               this.§]x§.SetV(_loc2_.§]x§);
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
            if(_loc7_)
            {
               §§push(this.§]x§.x);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr44:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || param2)
                     {
                        addr58:
                        §§push(§§pop() + §§pop() * this.§]x§.y);
                     }
                     §§goto(addr58);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_ || param1)
                  {
                  }
                  §§goto(addr68);
               }
               §§goto(addr58);
            }
            §§goto(addr44);
         }
         addr68:
         var _loc4_:* = Number(§§pop());
         §§push(param1.position.y);
         if(_loc7_ || _loc3_)
         {
            §§push(_loc3_.col1.y);
            if(!_loc6_)
            {
               §§push(this.§]x§.x);
               if(_loc7_)
               {
                  §§goto(addr117);
               }
               §§push(§§pop() + §§pop());
            }
            addr117:
            §§push(§§pop() * §§pop());
            if(!_loc6_)
            {
               §§push(_loc3_.col2.y);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * this.§]x§.y);
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc7_ || this)
            {
            }
            §§goto(addr126);
         }
         addr126:
         var _loc5_:* = Number(§§pop());
         if(_loc7_ || param2)
         {
            §§push(param2.x);
            while(true)
            {
               §§push(_loc4_);
               addr217:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc7_ || param2)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr226:
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
               }
            }
            addr216:
         }
         loop3:
         while(true)
         {
            §§push(param2.y);
            if(_loc7_ || param1)
            {
               if(!_loc6_)
               {
                  §§push(_loc5_);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     loop5:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr210:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_ || param1)
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr165:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(b2internal::9!A * b2internal::9!A);
                                          }
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc7_)
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr217);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                              else
                              {
                                 §§goto(addr216);
                              }
                           }
                           §§goto(addr165);
                        }
                        continue loop3;
                     }
                  }
               }
               §§goto(addr226);
            }
            §§goto(addr210);
         }
         return §§pop() <= §§pop();
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc16_)
         {
            §§push(_loc4_.col1.x);
            if(_loc16_)
            {
               §§push(this.§]x§.x);
               if(_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc16_ || param1)
                  {
                     addr55:
                     §§push(_loc4_.col2.x);
                     if(_loc16_)
                     {
                        addr50:
                        §§push(§§pop() * this.§]x§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc16_)
                     {
                        addr59:
                        var _loc5_:Number = §§pop();
                        §§push(param3.position.y);
                        if(!_loc17_)
                        {
                           §§push(_loc4_.col1.y);
                           if(!(_loc17_ && param1))
                           {
                              §§push(this.§]x§.x);
                              if(_loc16_ || param3)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc17_ && this))
                                 {
                                    addr93:
                                    §§push(_loc4_.col2.y);
                                    if(!(_loc17_ && this))
                                    {
                                       addr107:
                                       §§push(§§pop() + §§pop() * this.§]x§.y);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc16_ || param1)
                                 {
                                    addr116:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(param2.p1.x);
                                 if(!(_loc17_ && this))
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(_loc16_ || param3)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc16_)
                                 {
                                    §§push(param2.p1.y);
                                    if(!_loc17_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc17_ && param3))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc16_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc16_ || param2)
                                             {
                                                addr165:
                                                _loc8_ = §§pop();
                                                §§push(_loc7_);
                                                if(_loc16_ || param3)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc17_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() * _loc8_);
                                                            if(_loc16_ || param2)
                                                            {
                                                               addr212:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  §§push(b2internal::9!A * b2internal::9!A);
                                                               }
                                                               var _loc9_:* = §§pop();
                                                               §§push(param2.p2.x);
                                                               if(_loc16_ || this)
                                                               {
                                                                  §§push(§§pop() - param2.p1.x);
                                                                  if(_loc16_ || param2)
                                                                  {
                                                                     addr234:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(param2.p2.y);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.y);
                                                                     if(!(_loc17_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc7_);
                                                                  if(!(_loc17_ && param2))
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr287:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!(_loc17_ && param2))
                                                                           {
                                                                              §§push(§§pop() * _loc11_);
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc17_ && this))
                                                                                 {
                                                                                    addr320:
                                                                                    §§push(§§pop() * _loc11_);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr325:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(_loc16_ || param3)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!(_loc17_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          addr346:
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc17_ && param2))
                                                                                          {
                                                                                             addr354:
                                                                                             §§push(§§pop() * _loc9_);
                                                                                             if(_loc16_ || param1)
                                                                                             {
                                                                                                addr363:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr366:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() < 0);
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc16_ || param3)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(_loc16_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() < Number.MIN_VALUE);
                                                                                                               if(!(_loc17_ && param3))
                                                                                                               {
                                                                                                                  addr410:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                     {
                                                                                                                        §§goto(addr419);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!(_loc17_ && param3))
                                                                                                                  {
                                                                                                                     §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                     if(_loc16_ || param2)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr441:
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
                                                                                                                                       loop4:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(_loc16_ || param3)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(param2.§&y§);
                                                                                                                                             if(!(_loc17_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr598:
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(_loc16_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc17_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     return §§pop();
                                                                                                                                                                  }
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         loop18:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(_loc16_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr621:
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                            }
                                                                                                                                                            addr631:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               loop7:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.fraction = _loc15_;
                                                                                                                                                                  loop8:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.normal);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        loop10:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              addr554:
                                                                                                                                                                           }
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(param1.normal);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(_loc16_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr554);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             if(_loc16_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop18;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   if(_loc16_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr631);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr631);
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr598);
                                                                                                                                          }
                                                                                                                                          §§goto(addr631);
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr611);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr506);
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr419);
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                         }
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr410);
                                                                                                }
                                                                                                addr419:
                                                                                                return false;
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc16_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                }
                                                §§goto(addr212);
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr55);
               }
               §§goto(addr50);
            }
            §§goto(addr55);
         }
         §§goto(addr59);
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
            if(!_loc7_)
            {
               §§push(this.§]x§.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || this)
                  {
                  }
                  §§goto(addr58);
               }
               §§goto(addr53);
            }
            addr58:
            §§push(_loc3_.col2.x);
            if(!(_loc7_ && _loc3_))
            {
               addr53:
               §§push(§§pop() * this.§]x§.y);
            }
            §§push(§§pop() + (§§pop() + §§pop()));
            if(!_loc7_)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2.position.y);
            if(_loc6_)
            {
               §§push(_loc3_.col1.y);
               if(_loc6_ || this)
               {
                  §§push(this.§]x§.x);
                  if(_loc6_)
                  {
                     §§goto(addr106);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr106:
               §§push(§§pop() * §§pop());
               if(!_loc7_)
               {
                  §§push(_loc3_.col2.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * this.§]x§.y);
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc6_)
               {
               }
               §§goto(addr110);
            }
            addr110:
            var _loc5_:Number = §§pop();
            if(_loc6_ || _loc3_)
            {
               §§push(param1.§>!6§);
               §§push(_loc4_);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() - b2internal::9!A);
               }
               §§push(_loc5_);
               if(_loc6_ || this)
               {
                  §§push(§§pop() - b2internal::9!A);
               }
               §§pop().Set(§§pop(),§§pop());
               do
               {
                  param1.§8!X§.Set(_loc4_ + b2internal::9!A,_loc5_ + b2internal::9!A);
               }
               while(_loc7_);
               
            }
            return;
         }
         §§goto(addr61);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1);
            §§push(param2);
            if(_loc3_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_)
               {
                  §§push(§§pop() * b2internal::9!A);
                  if(!_loc4_)
                  {
                     addr163:
                     §§push(§§pop() * b2internal::9!A);
                  }
                  §§pop().§@K§ = §§pop();
                  do
                  {
                     param1.center.SetV(this.§]x§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§@K§);
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() * b2internal::9!A);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr56:
                              §§push(§§pop() * b2internal::9!A);
                              if(!_loc4_)
                              {
                                 addr60:
                                 §§push(this.§]x§.x);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(this.§]x§);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc4_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc4_ && param1))
                                          {
                                             addr107:
                                             §§push(this.§]x§.y);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr119:
                                                §§push(§§pop() + §§pop() * this.§]x§.y);
                                             }
                                             §§goto(addr119);
                                          }
                                          addr121:
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                          continue;
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr56);
                     }
                     while(§§pop().§8`§ = §§pop(), _loc4_ && _loc3_);
                     
                  }
                  while(!_loc3_);
                  
                  return;
                  addr166:
               }
            }
            §§goto(addr163);
         }
         §§goto(addr166);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§'!6§(param3,this.§]x§);
         §§push(b2Math.§'l§(param1,_loc5_));
         if(_loc11_ || param3)
         {
            §§push(param2);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc12_ && this))
               {
                  §§push(-§§pop());
                  if(!_loc12_)
                  {
                     addr51:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr51);
            }
            var _loc6_:* = §§pop();
            if(!(_loc12_ && this))
            {
               if(§§pop() < -b2internal::9!A + Number.MIN_VALUE)
               {
                  if(_loc11_)
                  {
                     return 0;
                  }
                  addr84:
                  param4.SetV(_loc5_);
                  if(_loc11_)
                  {
                     addr89:
                     §§push(Math.PI * b2internal::9!A);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * b2internal::9!A);
                        if(!(_loc12_ && param1))
                        {
                           §§goto(addr104);
                        }
                     }
                  }
                  else
                  {
                     addr105:
                     §§push(b2internal::9!A * b2internal::9!A);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc12_ && this))
                     {
                        addr124:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     if(_loc11_)
                     {
                        §§push(_loc7_);
                        if(_loc11_ || param1)
                        {
                           §§push(§§pop() * (Math.asin(_loc6_ / b2internal::9!A) + Math.PI / 2));
                           if(_loc11_)
                           {
                              §§push(_loc6_);
                              if(!_loc12_)
                              {
                                 §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                 if(_loc11_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc12_)
                                       {
                                          _loc9_ = §§pop();
                                          addr182:
                                          §§push(-2 / 3);
                                          if(_loc11_ || this)
                                          {
                                             §§goto(addr192);
                                          }
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr206);
                                 }
                              }
                              §§goto(addr206);
                           }
                        }
                        addr192:
                        §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                        if(!(_loc12_ && param3))
                        {
                           addr206:
                           §§push(§§pop() / _loc9_);
                           if(_loc11_ || param3)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc10_:* = §§pop();
                        if(_loc11_ || this)
                        {
                           §§push(param4);
                           §§push(_loc5_.x);
                           if(_loc11_)
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
                           if(!_loc12_)
                           {
                              §§push(param1.y);
                              if(_loc11_ || param1)
                              {
                                 §§push(§§pop() * _loc10_);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().y = §§pop();
                        }
                        while(_loc12_ && param1);
                        
                        return _loc9_;
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr124);
               }
               else
               {
                  §§push(_loc6_);
                  if(_loc11_ || param1)
                  {
                     if(§§pop() > b2internal::9!A)
                     {
                        if(!_loc12_)
                        {
                           §§goto(addr84);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr105);
                  }
               }
            }
            addr104:
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function §9!D§() : b2Vec2
      {
         return this.§]x§;
      }
      
      public function §^8§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]x§.SetV(param1);
         }
      }
      
      public function §&!2§() : Number
      {
         return b2internal::9!A;
      }
      
      public function §[!x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §9!A§ = param1;
         }
      }
   }
}
