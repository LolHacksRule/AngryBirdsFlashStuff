package §<!`§
{
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §55§.b2AABB;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var § m§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ m§ = new b2Vec2();
            loop0:
            do
            {
               super();
               while(true)
               {
                  §<";§ = b2internal::'!U;
                  while(!(_loc3_ && this))
                  {
                     §%I§ = param1;
                     if(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc3_ || _loc1_)
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
         if(_loc3_)
         {
            super.Set(param1);
            if(!(_loc4_ && _loc2_))
            {
               if(param1 is b2CircleShape)
               {
                  addr55:
                  _loc2_ = param1 as b2CircleShape;
                  if(_loc3_ || _loc2_)
                  {
                     this.§ m§.SetV(_loc2_.§ m§);
                  }
               }
               return;
            }
         }
         §§goto(addr55);
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
            if(_loc6_ || param2)
            {
               §§push(this.§ m§.x);
               if(!(_loc7_ && this))
               {
                  addr68:
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() * this.§ m§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     addr71:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc6_ || param2)
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc7_)
                     {
                        §§push(this.§ m§.x);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc7_ && this))
                           {
                              addr101:
                              §§push(_loc3_.col2.y);
                              if(_loc6_ || param1)
                              {
                                 addr125:
                                 §§push(§§pop() + §§pop() * this.§ m§.y);
                              }
                              §§goto(addr125);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              addr130:
                              var _loc5_:* = Number(§§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§push(param2.x);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(_loc4_);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_ || param1)
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr249:
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             §§push(param2.y);
                                             if(!_loc7_)
                                             {
                                                §§push(_loc5_);
                                                continue loop0;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc7_ && param2)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         addr151:
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() * _loc5_);
                                                               if(!_loc7_)
                                                               {
                                                                  addr174:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  addr211:
                                                                  while(true)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr174);
                                                }
                                                addr193:
                                                return §§pop() <= §§pop();
                                                §§push(b2internal::%I * b2internal::%I);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr130);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr68);
         }
         §§goto(addr71);
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
            if(_loc17_ || param1)
            {
               §§push(this.§ m§.x);
               if(!(_loc16_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     addr51:
                     §§push(_loc4_.col2.x);
                     if(_loc17_)
                     {
                        addr56:
                        §§push(§§pop() * this.§ m§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ || param3)
                  {
                     addr70:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc17_ || param2)
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc17_ || this)
                        {
                           §§push(this.§ m§.x);
                           if(_loc17_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_)
                              {
                                 addr114:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc16_)
                                 {
                                    addr109:
                                    §§push(§§pop() * this.§ m§.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc17_)
                                 {
                                    addr117:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(param2.p1.x);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(_loc17_)
                                    {
                                       addr128:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc17_ || param2)
                                    {
                                       §§push(param2.p1.y);
                                       if(_loc17_ || param2)
                                       {
                                          §§push(_loc6_);
                                          if(_loc17_ || param1)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc16_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc16_)
                                                {
                                                   _loc8_ = §§pop();
                                                   addr162:
                                                   §§push(_loc7_);
                                                   if(_loc17_ || this)
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            addr176:
                                                            §§push(_loc8_);
                                                            if(_loc17_ || param3)
                                                            {
                                                               addr184:
                                                               §§push(§§pop() * _loc8_);
                                                               if(_loc16_ && param1)
                                                               {
                                                               }
                                                               addr204:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc17_ || param2)
                                                               {
                                                                  addr213:
                                                                  var _loc9_:Number = §§pop();
                                                                  §§push(param2.p2.x);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(§§pop() - param2.p1.x);
                                                                     if(_loc17_)
                                                                     {
                                                                        addr230:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(param2.p2.y);
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        §§push(§§pop() - param2.p1.y);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc7_);
                                                                     if(!(_loc16_ && param2))
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc17_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr269:
                                                                              §§push(_loc8_);
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 addr277:
                                                                                 §§push(§§pop() * _loc11_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc16_ && this))
                                                                              {
                                                                                 addr287:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc10_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr301:
                                                                                          §§push(§§pop() * _loc11_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc17_ || this)
                                                                                       {
                                                                                          addr322:
                                                                                          var _loc13_:Number = §§pop();
                                                                                          §§push(_loc12_);
                                                                                          if(!(_loc16_ && param2))
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc9_);
                                                                                                      if(!(_loc16_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            addr357:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() < 0);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc17_ || param1)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc16_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc16_ && param3))
                                                                                                            {
                                                                                                               addr391:
                                                                                                               §§push(§§pop() < Number.MIN_VALUE);
                                                                                                               if(!(_loc16_ && param3))
                                                                                                               {
                                                                                                                  addr401:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc17_ || param3)
                                                                                                                     {
                                                                                                                        §§goto(addr410);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                  {
                                                                                                                     §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        addr431:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc15_:* = §§pop();
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
                                                                                                                                       loop4:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(_loc17_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(param2.§,!§);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                if(_loc16_ && param3)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(!(_loc16_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr592:
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_ || param3)
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         addr457:
                                                                                                                                                         while(_loc16_ && param3)
                                                                                                                                                         {
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            break loop2;
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      addr595:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         addr624:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   addr593:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(_loc17_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr624);
                                                                                                                                                      }
                                                                                                                                                      addr615:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                   while(_loc17_ || param1)
                                                                                                                                                   {
                                                                                                                                                      param1.fraction = _loc15_;
                                                                                                                                                      loop8:
                                                                                                                                                      for(; !(_loc16_ && param3); while(_loc17_ || param3)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.normal);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc17_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     if(_loc17_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr525:
                                                                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr534);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr538);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr525);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr540);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr525);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr539);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr595);
                                                                                                                                                         }
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.normal);
                                                                                                                                                            addr533:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               addr534:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     addr538:
                                                                                                                                                                  }
                                                                                                                                                                  addr539:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr540:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop4;
                                                                                                                                                   §§goto(addr624);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr592);
                                                                                                                                          }
                                                                                                                                          §§goto(addr624);
                                                                                                                                       }
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr593);
                                                                                                                              }
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr562);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            §§goto(addr431);
                                                                                                         }
                                                                                                         §§goto(addr410);
                                                                                                      }
                                                                                                      addr410:
                                                                                                      return false;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr401);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr201:
                                                               §§push(b2internal::%I * b2internal::%I);
                                                            }
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr70);
               }
               §§goto(addr56);
            }
            §§goto(addr51);
         }
         §§goto(addr70);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc7_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(_loc6_ || param1)
            {
               §§push(this.§ m§.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ && param2)
                  {
                  }
                  §§goto(addr68);
               }
               §§goto(addr63);
            }
            addr68:
            §§push(_loc3_.col2.x);
            if(!(_loc7_ && _loc3_))
            {
               addr63:
               §§push(§§pop() * this.§ m§.y);
            }
            §§push(§§pop() + (§§pop() + §§pop()));
            if(_loc6_)
            {
               addr81:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2.position.y);
            if(_loc6_ || this)
            {
               §§push(_loc3_.col1.y);
               if(_loc6_)
               {
                  §§push(this.§ m§.x);
                  if(_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        addr106:
                        §§push(_loc3_.col2.y);
                        if(_loc6_)
                        {
                           addr111:
                           §§push(§§pop() * this.§ m§.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc7_ && _loc3_)
                     {
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr111);
               }
               §§goto(addr106);
            }
            addr125:
            var _loc5_:Number = §§pop();
            if(_loc6_)
            {
               §§push(param1.§!8§);
               §§push(_loc4_);
               if(_loc6_)
               {
                  §§push(§§pop() - b2internal::%I);
               }
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(§§pop() - b2internal::%I);
               }
               §§pop().Set(§§pop(),§§pop());
               do
               {
                  param1.§,f§.Set(_loc4_ + b2internal::%I,_loc5_ + b2internal::%I);
               }
               while(!_loc6_);
               
            }
            return;
         }
         §§goto(addr81);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc3_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_ || param2)
               {
                  addr139:
                  §§push(§§pop() * b2internal::%I);
                  if(_loc3_ || _loc3_)
                  {
                     addr148:
                     §§push(§§pop() * b2internal::%I);
                  }
                  §§pop().§7!^§ = §§pop();
                  loop0:
                  while(true)
                  {
                     param1.center.SetV(this.§ m§);
                     do
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(param1);
                        §§push(param1.§7!^§);
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * b2internal::%I);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * b2internal::%I);
                              if(_loc3_ || param2)
                              {
                              }
                              addr96:
                              §§push(§§pop() * §§pop());
                              continue;
                           }
                           §§push(this.§ m§.x);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(this.§ m§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || this)
                                    {
                                       addr87:
                                       §§push(this.§ m§.y);
                                       if(_loc3_)
                                       {
                                          addr94:
                                          §§push(§§pop() + §§pop() * this.§ m§.y);
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr96);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr96);
                     }
                     while(§§pop().§^s§ = §§pop(), !(_loc3_ || param2));
                     
                     §§goto(addr105);
                  }
               }
               §§goto(addr148);
            }
            §§goto(addr139);
         }
         addr105:
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§2C§(param3,this.§ m§);
         §§push(b2Math.§+'§(param1,_loc5_));
         if(_loc12_ || param1)
         {
            §§push(param2);
            if(_loc12_ || param1)
            {
               §§push(§§pop() - §§pop());
               if(_loc12_)
               {
                  §§push(-§§pop());
                  if(_loc11_ && param2)
                  {
                  }
                  addr57:
                  var _loc6_:*;
                  §§push(_loc6_ = §§pop());
                  if(_loc12_)
                  {
                     if(§§pop() < -b2internal::%I + Number.MIN_VALUE)
                     {
                        if(_loc12_)
                        {
                           return 0;
                        }
                     }
                     §§push(_loc6_);
                     if(!_loc11_)
                     {
                        if(§§pop() > b2internal::%I)
                        {
                           if(!_loc11_)
                           {
                              param4.SetV(_loc5_);
                              if(_loc12_)
                              {
                                 addr85:
                                 §§push(Math.PI * b2internal::%I);
                                 if(!(_loc11_ && param2))
                                 {
                                    addr96:
                                    §§push(§§pop() * b2internal::%I);
                                    if(!_loc11_)
                                    {
                                       return §§pop();
                                    }
                                    addr106:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              else
                              {
                                 addr101:
                                 §§push(b2internal::%I * b2internal::%I);
                                 if(_loc12_)
                                 {
                                    §§goto(addr106);
                                 }
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc11_ && param1))
                              {
                                 §§push(§§pop() * _loc6_);
                                 if(!(_loc11_ && param3))
                                 {
                                    addr135:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc12_ || param1)
                                    {
                                       §§push(§§pop() * (Math.asin(_loc6_ / b2internal::%I) + Math.PI / 2));
                                       if(_loc12_)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc11_ && param2))
                                          {
                                             §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                             if(!(_loc11_ && param2))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc12_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc11_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      addr188:
                                                      §§push(-2 / 3);
                                                      if(!(_loc11_ && param3))
                                                      {
                                                         §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                         if(!(_loc11_ && this))
                                                         {
                                                            addr212:
                                                            addr213:
                                                            §§push(§§pop() / _loc9_);
                                                            if(_loc11_)
                                                            {
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         addr217:
                                                         var _loc10_:* = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            §§push(param4);
                                                            §§push(_loc5_.x);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(param1.x);
                                                               if(!(_loc11_ && param3))
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
                                                            if(_loc12_ || param1)
                                                            {
                                                               §§push(param1.y);
                                                               if(_loc12_ || param3)
                                                               {
                                                                  §§push(§§pop() * _loc10_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().y = §§pop();
                                                         }
                                                         while(!_loc12_);
                                                         
                                                         return _loc9_;
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                          §§goto(addr213);
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr106);
               }
               §§goto(addr57);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr57);
      }
      
      public function §1"@§() : b2Vec2
      {
         return this.§ m§;
      }
      
      public function §^P§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ m§.SetV(param1);
         }
      }
      
      public function § u§() : Number
      {
         return b2internal::%I;
      }
      
      public function §^!i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §%I§ = param1;
         }
      }
   }
}
