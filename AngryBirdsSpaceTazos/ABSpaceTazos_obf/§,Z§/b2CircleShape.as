package §,Z§
{
   import §3c§.b2AABB;
   import §3c§.b2RayCastInput;
   import §3c§.b2RayCastOutput;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §1Q§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1Q§ = new b2Vec2();
         }
         while(true)
         {
            super();
            while(!(_loc2_ && _loc2_))
            {
               §0w§ = b2internal::-M;
               while(!(_loc2_ && _loc2_))
               {
                  §7!m§ = param1;
                  if(!_loc2_)
                  {
                     return;
                  }
               }
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         if(_loc4_)
         {
            super.Set(param1);
            if(!_loc3_)
            {
               if(param1 is b2CircleShape)
               {
                  _loc2_ = param1 as b2CircleShape;
                  addr41:
                  if(_loc4_)
                  {
                     this.§1Q§.SetV(_loc2_.§1Q§);
                  }
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || param1)
            {
               §§push(this.§1Q§.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || _loc3_)
                  {
                     addr54:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || this)
                     {
                        addr64:
                        §§push(§§pop() * this.§1Q§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr73:
                     var _loc4_:* = Number(§§pop());
                     §§push(param1.position.y);
                     if(_loc7_ || this)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc7_ || this)
                        {
                           §§push(this.§1Q§.x);
                           if(!(_loc6_ && param1))
                           {
                              addr132:
                              §§push(§§pop() * §§pop());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(_loc3_.col2.y);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * this.§1Q§.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 addr135:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr239:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr240:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr241:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                                 addr238:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(param2.y);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(_loc5_);
                                    while(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          §§goto(addr220);
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                                 addr220:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_ || param1)
                                             {
                                                addr155:
                                                if(!(_loc7_ || param2))
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc7_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                         if(_loc7_ || param1)
                                                         {
                                                         }
                                                         addr194:
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr191:
                                                      §§goto(addr194);
                                                      §§push(§§pop() + §§pop());
                                                      §§push(b2internal::7!m * b2internal::7!m);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr240);
                                                   }
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr155);
                                    }
                                    else
                                    {
                                       §§goto(addr238);
                                    }
                                 }
                                 return §§pop() <= §§pop();
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr73);
               }
               §§goto(addr64);
            }
            §§goto(addr54);
         }
         §§goto(addr73);
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
            if(!(_loc17_ && this))
            {
               §§push(this.§1Q§.x);
               if(!_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc17_)
                  {
                     addr65:
                     §§push(_loc4_.col2.x);
                     if(_loc16_ || param2)
                     {
                        addr60:
                        §§push(§§pop() * this.§1Q§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc17_)
                     {
                        addr68:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param3.position.y);
                     if(!_loc17_)
                     {
                        §§push(_loc4_.col1.y);
                        if(!(_loc17_ && param2))
                        {
                           §§push(this.§1Q§.x);
                           if(!(_loc17_ && param2))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc16_)
                              {
                                 addr98:
                                 §§push(_loc4_.col2.y);
                                 if(_loc16_ || param2)
                                 {
                                    addr108:
                                    §§push(§§pop() * this.§1Q§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 addr116:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(_loc16_ || param1)
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc16_ || param3)
                                 {
                                    addr137:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc17_)
                                 {
                                    §§push(param2.p1.y);
                                    if(!(_loc17_ && param2))
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc17_ && param2))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc16_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc17_ && param1))
                                             {
                                                addr175:
                                                _loc8_ = §§pop();
                                                §§push(_loc7_);
                                                if(_loc16_)
                                                {
                                                   addr179:
                                                   §§push(_loc7_);
                                                   if(_loc16_)
                                                   {
                                                      addr182:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc17_ && this))
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc17_ && param2))
                                                         {
                                                            addr198:
                                                            §§push(§§pop() * _loc8_);
                                                            if(_loc16_ || param2)
                                                            {
                                                               addr221:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  addr210:
                                                                  §§push(b2internal::7!m * b2internal::7!m);
                                                               }
                                                               var _loc9_:Number = §§pop();
                                                               §§push(param2.p2.x);
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  §§push(§§pop() - param2.p1.x);
                                                                  if(!(_loc17_ && param1))
                                                                  {
                                                                     addr244:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(param2.p2.y);
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.y);
                                                                     if(!(_loc17_ && param2))
                                                                     {
                                                                        addr267:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc7_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc16_ || param2)
                                                                        {
                                                                           addr312:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 §§push(§§pop() * _loc11_);
                                                                              }
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           §§push(_loc10_);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc16_ || this)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr335:
                                                                                       §§push(§§pop() * _loc11_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr340:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc16_ || this)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             addr361:
                                                                                             §§push(_loc13_);
                                                                                             if(_loc16_ || param2)
                                                                                             {
                                                                                                addr369:
                                                                                                §§push(§§pop() * _loc9_);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      addr381:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(!(_loc17_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() < 0);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc16_ || param1)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc17_ && param3))
                                                                                                            {
                                                                                                               §§push(§§pop() < Number.MIN_VALUE);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr420:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     addr428:
                                                                                                                     §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                     {
                                                                                                                        addr440:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     if(_loc16_ || this)
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
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop19:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             addr566:
                                                                                                                                             §§push(param2.§7"?§);
                                                                                                                                             if(!(_loc17_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr579:
                                                                                                                                                   if(!(_loc16_ || this))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr586:
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(_loc17_ && param2)
                                                                                                                                                         {
                                                                                                                                                            while(_loc17_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                         return §§pop();
                                                                                                                                                      }
                                                                                                                                                      loop5:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               if(_loc17_ && param3)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr604:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  param1.fraction = _loc15_;
                                                                                                                                                                  loop8:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop5;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop19;
                                                                                                                                                                     }
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
                                                                                                                                                                              addr547:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr548:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr546:
                                                                                                                                                                        }
                                                                                                                                                                        loop13:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           loop14:
                                                                                                                                                                           while(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.normal);
                                                                                                                                                                              loop15:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                          if(!(_loc17_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr532:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr535:
                                                                                                                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                while(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                addr536:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr546);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr547);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr548);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr532);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr535);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop8;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop19;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr566);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr579);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr604);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                      §§goto(addr586);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr595);
                                                                                                                                             }
                                                                                                                                             §§goto(addr579);
                                                                                                                                          }
                                                                                                                                          §§goto(addr604);
                                                                                                                                       }
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    addr623:
                                                                                                                                 }
                                                                                                                                 §§goto(addr587);
                                                                                                                              }
                                                                                                                              §§goto(addr623);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr538);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                   §§goto(addr420);
                                                                                                }
                                                                                                addr424:
                                                                                                return false;
                                                                                             }
                                                                                             §§goto(addr428);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc16_ || param3)
                                                         {
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr198);
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr65);
               }
               §§goto(addr60);
            }
            §§goto(addr65);
         }
         §§goto(addr68);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc7_ || _loc3_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§1Q§.x);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr49:
                     §§push(_loc3_.col2.x);
                     if(_loc7_)
                     {
                        addr58:
                        §§push(§§pop() + §§pop() * this.§1Q§.y);
                     }
                     §§goto(addr58);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr62:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(_loc7_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(this.§1Q§.x);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc7_)
                           {
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr107);
                     }
                     addr112:
                     §§push(_loc3_.col2.y);
                     if(!_loc6_)
                     {
                        addr107:
                        §§push(§§pop() * this.§1Q§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc7_ || param1)
                     {
                        addr120:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc6_)
                     {
                        §§push(param1.§<!@§);
                        §§push(_loc4_);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() - b2internal::7!m);
                        }
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           §§push(§§pop() - b2internal::7!m);
                        }
                        §§pop().Set(§§pop(),§§pop());
                        do
                        {
                           param1.§2!1§.Set(_loc4_ + b2internal::7!m,_loc5_ + b2internal::7!m);
                        }
                        while(_loc6_ && this);
                        
                     }
                     return;
                  }
                  §§goto(addr120);
               }
               §§goto(addr58);
            }
            §§goto(addr49);
         }
         §§goto(addr62);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!_loc3_)
               {
                  addr145:
                  §§push(§§pop() * b2internal::7!m);
                  if(_loc4_)
                  {
                     addr149:
                     §§push(§§pop() * b2internal::7!m);
                  }
                  §§pop().§[]§ = §§pop();
                  while(true)
                  {
                     param1.§`C§.SetV(this.§1Q§);
                     addr125:
                     while(true)
                     {
                        §§push(param1);
                        §§push(param1.§[]§);
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!(_loc3_ && param2))
                        {
                           §§push(§§pop() * b2internal::7!m);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() * b2internal::7!m);
                              if(!_loc3_)
                              {
                                 §§push(this.§1Q§.x);
                                 if(!_loc3_)
                                 {
                                    §§push(this.§1Q§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc4_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             addr93:
                                             §§push(this.§1Q§.y);
                                             if(_loc4_)
                                             {
                                                addr100:
                                                §§push(§§pop() + §§pop() * this.§1Q§.y);
                                             }
                                             §§goto(addr100);
                                          }
                                          addr102:
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                          continue;
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 §§goto(addr93);
                              }
                           }
                        }
                        §§goto(addr102);
                     }
                     addr118:
                     return;
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr145);
         }
         §§goto(addr125);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§=&§(param3,this.§1Q§);
         §§push(b2Math.§<"E§(param1,_loc5_));
         if(!(_loc12_ && param1))
         {
            §§push(param2);
            if(_loc11_ || this)
            {
               §§push(§§pop() - §§pop());
               if(!_loc12_)
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
            if(_loc11_)
            {
               if(§§pop() < -b2internal::7!m + Number.MIN_VALUE)
               {
                  if(!_loc12_)
                  {
                     return 0;
                  }
                  addr84:
                  param4.SetV(_loc5_);
                  if(!_loc12_)
                  {
                     §§push(Math.PI * b2internal::7!m);
                     if(_loc11_ || param3)
                     {
                        addr100:
                        §§push(§§pop() * b2internal::7!m);
                        if(_loc12_ && param1)
                        {
                           addr121:
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(!(_loc12_ && this))
                           {
                              §§push(§§pop() * _loc6_);
                              if(_loc11_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           if(!(_loc12_ && this))
                           {
                              §§push(_loc7_);
                              if(!_loc12_)
                              {
                                 §§push(§§pop() * (Math.asin(_loc6_ / b2internal::7!m) + Math.PI / 2));
                                 if(_loc11_ || param2)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                       if(_loc11_ || param2)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc12_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc11_ || param2)
                                             {
                                                addr206:
                                                _loc9_ = §§pop();
                                                §§push(-2 / 3);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                   if(!_loc12_)
                                                   {
                                                      addr221:
                                                      §§push(§§pop() / _loc9_);
                                                      if(_loc11_ || param2)
                                                      {
                                                         addr230:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             var _loc10_:* = §§pop();
                                             if(_loc11_ || this)
                                             {
                                                §§push(param4);
                                                §§push(_loc5_.x);
                                                if(_loc11_)
                                                {
                                                   §§push(param1.x);
                                                   if(_loc11_ || this)
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
                                          §§goto(addr221);
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr230);
                              }
                           }
                           §§goto(addr206);
                        }
                     }
                     return §§pop();
                  }
                  addr110:
                  §§push(b2internal::7!m * b2internal::7!m);
                  if(!(_loc12_ && param3))
                  {
                     addr120:
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr121);
               }
               else
               {
                  §§push(_loc6_);
                  if(_loc11_ || param1)
                  {
                     if(§§pop() > b2internal::7!m)
                     {
                        if(_loc11_)
                        {
                           §§goto(addr84);
                        }
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr120);
         }
         §§goto(addr51);
      }
      
      public function §'"8§() : b2Vec2
      {
         return this.§1Q§;
      }
      
      public function §^u§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1Q§.SetV(param1);
         }
      }
      
      public function §<!$§() : Number
      {
         return b2internal::7!m;
      }
      
      public function §<!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §7!m§ = param1;
         }
      }
   }
}
