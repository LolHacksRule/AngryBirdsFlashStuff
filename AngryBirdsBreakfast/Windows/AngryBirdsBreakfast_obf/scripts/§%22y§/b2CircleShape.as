package §"y§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §^9§.b2AABB;
   import §^9§.b2RayCastInput;
   import §^9§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §4b§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4b§ = new b2Vec2();
            do
            {
               super();
               do
               {
                  §6m§ = b2internal::9_;
                  do
                  {
                     §,!;§ = param1;
                  }
                  while(!(_loc2_ || _loc3_));
                  
               }
               while(_loc3_ && _loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_)
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
         if(!(_loc3_ && _loc3_))
         {
            super.Set(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(param1 is b2CircleShape)
               {
                  _loc2_ = param1 as b2CircleShape;
                  addr51:
                  if(_loc4_)
                  {
                     this.§4b§.SetV(_loc2_.§4b§);
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc7_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(_loc6_ || param1)
            {
               §§push(this.§4b§.x);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     addr63:
                     §§push(_loc3_.col2.x);
                     if(!_loc7_)
                     {
                        addr58:
                        §§push(§§pop() * this.§4b§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc6_)
                     {
                        addr66:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param1.position.y);
                     if(_loc6_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(this.§4b§.x);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc7_ && this))
                              {
                                 addr106:
                                 §§push(_loc3_.col2.y);
                                 if(_loc6_)
                                 {
                                    addr101:
                                    §§push(§§pop() * this.§4b§.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(!_loc7_)
                                 {
                                    addr120:
                                    var _loc5_:* = Number(§§pop());
                                    if(_loc6_ || this)
                                    {
                                       §§push(param2.x);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(_loc4_);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr239:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr179:
                                             if(!(_loc6_ || param2))
                                             {
                                                continue;
                                             }
                                             addr190:
                                             return §§pop() + §§pop() <= b2internal::,!; * b2internal::,!;;
                                             addr187:
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                       addr240:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(param2.y);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(_loc5_);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          addr205:
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          while(_loc6_ || param1)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr146:
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc6_ || this)
                                                               {
                                                                  addr168:
                                                                  §§push(§§pop() * _loc5_);
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr179);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr205);
                                                                     }
                                                                  }
                                                                  break loop5;
                                                               }
                                                               break loop5;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr63);
               }
               §§goto(addr58);
            }
            §§goto(addr63);
         }
         §§goto(addr66);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(!_loc17_)
         {
            §§push(_loc4_.col1.x);
            if(!_loc17_)
            {
               §§push(this.§4b§.x);
               if(!(_loc17_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param3))
                  {
                     addr50:
                     §§push(_loc4_.col2.x);
                     if(_loc16_)
                     {
                        addr55:
                        §§push(§§pop() * this.§4b§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_)
                  {
                     addr64:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc16_)
                     {
                        §§push(_loc4_.col1.y);
                        if(!(_loc17_ && param3))
                        {
                           §§push(this.§4b§.x);
                           if(_loc16_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc17_)
                              {
                                 addr93:
                                 §§push(_loc4_.col2.y);
                                 if(_loc16_)
                                 {
                                    addr98:
                                    §§push(§§pop() * this.§4b§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 addr106:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(_loc16_ || param3)
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc16_)
                                 {
                                    addr122:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc17_)
                                 {
                                    §§push(param2.p1.y);
                                    if(_loc16_ || param1)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc17_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc16_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc17_)
                                             {
                                                _loc8_ = §§pop();
                                                addr151:
                                                §§push(_loc7_);
                                                if(_loc16_ || this)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc16_ || this)
                                                   {
                                                      addr167:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc17_)
                                                         {
                                                            addr173:
                                                            §§push(§§pop() * _loc8_);
                                                            if(_loc16_)
                                                            {
                                                               addr191:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  addr185:
                                                                  §§push(b2internal::,!; * b2internal::,!;);
                                                               }
                                                               var _loc9_:Number = §§pop();
                                                               §§push(param2.p2.x);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() - param2.p1.x);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(param2.p2.y);
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  §§push(§§pop() - param2.p1.y);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr222:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc7_);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr238:
                                                                           §§push(_loc8_);
                                                                           if(!(_loc17_ && param1))
                                                                           {
                                                                              addr246:
                                                                              §§push(§§pop() * _loc11_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!(_loc17_ && this))
                                                                           {
                                                                              addr296:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc11_);
                                                                                 }
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!(_loc17_ && param2))
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc9_);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                          }
                                                                                          addr323:
                                                                                          var _loc14_:* = §§pop();
                                                                                          if(_loc16_ || this)
                                                                                          {
                                                                                             §§push(§§pop() < 0);
                                                                                             if(!(_loc17_ && param3))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() < Number.MIN_VALUE);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr355:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     §§goto(addr364);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc16_ || param2)
                                                                                                               {
                                                                                                                  addr373:
                                                                                                                  §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                  if(_loc17_ && param2)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr386:
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
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(!(_loc16_ || param1))
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       §§push(param2.§]!4§);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ || param3))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop19:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr401:
                                                                                                                                                      return §§pop();
                                                                                                                                                      addr390:
                                                                                                                                                   }
                                                                                                                                                   loop20:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc16_ || param3)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      addr565:
                                                                                                                                                      loop6:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr576:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            param1.fraction = _loc15_;
                                                                                                                                                            loop8:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.normal);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        addr505:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr506:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr504:
                                                                                                                                                                  }
                                                                                                                                                                  loop13:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     loop14:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.normal);
                                                                                                                                                                        loop15:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc16_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop13;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              if(!(_loc17_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                 if(!(_loc17_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr479:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr484:
                                                                                                                                                                                          §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc16_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop20;
                                                                                                                                                                                          addr485:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr504);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr505);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr479);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr484);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr506);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc17_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr539:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(!(_loc17_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr565);
                                                                                                                                                }
                                                                                                                                                addr556:
                                                                                                                                             }
                                                                                                                                             addr557:
                                                                                                                                          }
                                                                                                                                          §§goto(addr576);
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr539);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr390);
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                         §§goto(addr386);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                             addr364:
                                                                                             return false;
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                       }
                                                                                       addr322:
                                                                                       §§goto(addr323);
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc17_)
                                                         {
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr173);
                                                }
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr64);
               }
               §§goto(addr55);
            }
            §§goto(addr50);
         }
         §§goto(addr64);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc3_.col1.x);
            if(!(_loc6_ && this))
            {
               §§push(this.§4b§.x);
               if(_loc7_)
               {
                  §§goto(addr64);
               }
               §§push(§§pop() + §§pop());
            }
            addr64:
            §§push(§§pop() * §§pop());
            if(_loc7_)
            {
               §§push(_loc3_.col2.x);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * this.§4b§.y);
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc7_)
            {
               addr67:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2.position.y);
            if(!_loc6_)
            {
               §§push(_loc3_.col1.y);
               if(!_loc6_)
               {
                  §§push(this.§4b§.x);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr102);
               }
               addr107:
               §§push(_loc3_.col2.y);
               if(!_loc6_)
               {
                  addr102:
                  §§push(§§pop() * this.§4b§.y);
               }
               §§push(§§pop() + (§§pop() + §§pop()));
               if(!_loc7_)
               {
               }
               §§goto(addr111);
            }
            addr111:
            var _loc5_:Number = §§pop();
            if(_loc7_ || param2)
            {
               §§push(param1.§?J§);
               §§push(_loc4_);
               if(!_loc6_)
               {
                  §§push(§§pop() - b2internal::,!;);
               }
               §§push(_loc5_);
               if(!_loc6_)
               {
                  §§push(§§pop() - b2internal::,!;);
               }
               §§pop().Set(§§pop(),§§pop());
            }
            do
            {
               param1.§1^§.Set(_loc4_ + b2internal::,!;,_loc5_ + b2internal::,!;);
            }
            while(!_loc7_);
            
            return;
         }
         §§goto(addr67);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            §§push(param2);
            if(!_loc3_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() * b2internal::,!;);
                  if(_loc4_ || param1)
                  {
                     addr144:
                     §§push(§§pop() * b2internal::,!;);
                  }
                  §§pop().§#!5§ = §§pop();
                  do
                  {
                     param1.center.SetV(this.§4b§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§#!5§);
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(_loc4_)
                        {
                           §§push(§§pop() * b2internal::,!;);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * b2internal::,!;);
                              if(_loc4_ || param1)
                              {
                                 addr51:
                                 §§push(this.§4b§.x);
                                 if(_loc4_)
                                 {
                                    §§push(this.§4b§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             addr78:
                                             §§push(this.§4b§.y);
                                             if(!_loc3_)
                                             {
                                                addr85:
                                                §§push(§§pop() + §§pop() * this.§4b§.y);
                                             }
                                             §§goto(addr85);
                                          }
                                          addr87:
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                          continue;
                                       }
                                       §§goto(addr85);
                                    }
                                 }
                                 §§goto(addr78);
                              }
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr51);
                     }
                     while(§§pop().I = §§pop(), _loc3_ && _loc3_);
                     
                  }
                  while(_loc3_ && this);
                  
                  return;
                  addr103:
               }
            }
            §§goto(addr144);
         }
         §§goto(addr103);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§!v§(param3,this.§4b§);
         §§push(b2Math.§7!c§(param1,_loc5_));
         if(_loc11_ || this)
         {
            §§push(param2);
            if(_loc11_ || param3)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc12_ && param1))
               {
                  addr52:
                  §§push(-§§pop());
                  if(!(_loc12_ && param3))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!_loc12_)
            {
               if(§§pop() < -b2internal::,!; + Number.MIN_VALUE)
               {
                  if(_loc11_ || param1)
                  {
                     return 0;
                  }
               }
               §§push(_loc6_);
               if(!_loc12_)
               {
                  addr90:
                  if(§§pop() > b2internal::,!;)
                  {
                     if(_loc11_)
                     {
                        param4.SetV(_loc5_);
                        if(!(_loc12_ && param1))
                        {
                           §§push(Math.PI * b2internal::,!;);
                           if(_loc11_)
                           {
                              addr110:
                              §§push(§§pop() * b2internal::,!;);
                              if(!(_loc12_ && param2))
                              {
                                 return §§pop();
                              }
                              addr130:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           addr120:
                           §§push(b2internal::,!; * b2internal::,!;);
                           if(_loc11_ || this)
                           {
                              §§goto(addr130);
                           }
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc6_);
                        if(_loc11_ || param3)
                        {
                           §§push(§§pop() * _loc6_);
                           if(!(_loc12_ && param2))
                           {
                              addr159:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           if(_loc11_ || param3)
                           {
                              §§push(_loc7_);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * (Math.asin(_loc6_ / b2internal::,!;) + Math.PI / 2));
                                 if(_loc11_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc11_ || this)
                                             {
                                                _loc9_ = §§pop();
                                                §§goto(addr212);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr232);
                           }
                           addr212:
                           §§push(-2 / 3);
                           if(_loc11_ || param2)
                           {
                              addr222:
                              §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                              if(_loc11_)
                              {
                                 addr232:
                                 §§push(§§pop() / _loc9_);
                                 if(!(_loc12_ && this))
                                 {
                                    addr240:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr240);
                           }
                           var _loc10_:* = §§pop();
                           if(_loc11_ || param2)
                           {
                              §§push(param4);
                              §§push(_loc5_.x);
                              if(!(_loc12_ && param2))
                              {
                                 §§push(param1.x);
                                 if(_loc11_ || param2)
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
                              if(!(_loc12_ && param2))
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
                           while(_loc12_);
                           
                           return _loc9_;
                        }
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr110);
            }
            §§goto(addr90);
         }
         §§goto(addr52);
      }
      
      public function §@d§() : b2Vec2
      {
         return this.§4b§;
      }
      
      public function §0#§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4b§.SetV(param1);
         }
      }
      
      public function §5!W§() : Number
      {
         return b2internal::,!;;
      }
      
      public function §>!w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §,!;§ = param1;
         }
      }
   }
}
