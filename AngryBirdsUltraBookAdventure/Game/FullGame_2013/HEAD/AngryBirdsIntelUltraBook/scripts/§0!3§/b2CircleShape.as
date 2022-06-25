package §0!3§
{
   import §!m§.b2AABB;
   import §!m§.b2RayCastInput;
   import §!m§.b2RayCastOutput;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §,!2§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§,!2§ = new b2Vec2();
            while(true)
            {
               super();
               while(_loc3_)
               {
                  §2!5§ = §^%§;
                  while(_loc3_ || this)
                  {
                     §!@§ = param1;
                     if(!_loc2_)
                     {
                        return;
                        addr55:
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc3_ || _loc2_)
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
         if(!(_loc4_ && _loc3_))
         {
            super.Set(param1);
            if(!_loc4_)
            {
               §§goto(addr52);
            }
            §§goto(addr57);
         }
         addr52:
         if(param1 is b2CircleShape)
         {
            addr57:
            _loc2_ = param1 as b2CircleShape;
            if(_loc3_ || param1)
            {
               this.§,!2§.SetV(_loc2_.§,!2§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc7_)
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || param1)
            {
               §§push(this.§,!2§.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr44:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || _loc3_)
                     {
                        addr54:
                        §§push(§§pop() * this.§,!2§.y);
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
                  §§push(param1.position.y);
                  if(!_loc6_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.§,!2§.x);
                        if(_loc7_)
                        {
                           addr102:
                           §§push(§§pop() * §§pop());
                           if(_loc7_ || param2)
                           {
                              §§push(_loc3_.col2.y);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * this.§,!2§.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc7_ || _loc3_)
                           {
                              addr110:
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
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                addr230:
                                                while(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr239:
                                                      do
                                                      {
                                                         _loc5_ = §§pop();
                                                      }
                                                      while(_loc7_ || param2);
                                                      
                                                      addr139:
                                                      continue loop4;
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  addr193:
                                                                  addr193:
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(§!@§ * §!@§);
                                                               }
                                                               addr212:
                                                               return §§pop() <= §§pop();
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc7_ || param2)
                              {
                                 §§goto(addr139);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr207);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr110);
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         §§goto(addr62);
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
            if(!(_loc16_ && this))
            {
               §§push(this.§,!2§.x);
               if(!(_loc16_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     addr51:
                     §§push(_loc4_.col2.x);
                     if(_loc17_ || param3)
                     {
                        addr65:
                        §§push(§§pop() + §§pop() * this.§,!2§.y);
                     }
                     §§goto(addr65);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr70:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc16_ && this))
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(this.§,!2§.x);
                           if(_loc17_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || this)
                              {
                                 addr99:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc16_)
                                 {
                                    addr108:
                                    §§push(§§pop() + §§pop() * this.§,!2§.y);
                                 }
                                 §§goto(addr108);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_ || param2)
                              {
                                 addr118:
                                 var _loc6_:Number = §§pop();
                                 §§push(param2.p1.x);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(_loc17_)
                                    {
                                       addr128:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!(_loc16_ && param1))
                                    {
                                       §§push(param2.p1.y);
                                       if(!(_loc16_ && param3))
                                       {
                                          §§push(_loc6_);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc17_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc17_ || this)
                                                {
                                                   _loc8_ = §§pop();
                                                   addr162:
                                                   §§push(_loc7_);
                                                   if(_loc17_ || param1)
                                                   {
                                                      addr170:
                                                      §§push(_loc7_);
                                                      if(_loc17_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc17_)
                                                         {
                                                            addr181:
                                                            §§push(_loc8_);
                                                            if(_loc17_)
                                                            {
                                                               addr184:
                                                               §§push(§§pop() * _loc8_);
                                                               if(_loc17_ || param3)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     addr206:
                                                                     §§push(§§pop() - §!@§ * §!@§);
                                                                     if(_loc17_)
                                                                     {
                                                                        addr209:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     §§push(param2.p2.x);
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        §§push(§§pop() - param2.p1.x);
                                                                        if(!(_loc16_ && param3))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(param2.p2.y);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(§§pop() - param2.p1.y);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc7_);
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc16_ && param3))
                                                                           {
                                                                              addr266:
                                                                              §§push(_loc8_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr271:
                                                                                 §§push(§§pop() + §§pop() * _loc11_);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr274:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc10_);
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc17_ || param3)
                                                                                          {
                                                                                             addr300:
                                                                                             §§push(§§pop() + §§pop() * _loc11_);
                                                                                             if(!(_loc16_ && param3))
                                                                                             {
                                                                                                addr308:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             addr348:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc16_ && param1))
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(!(_loc16_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() * _loc9_);
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(_loc17_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() < 0);
                                                                                                   if(_loc17_ || param2)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc16_ && param3))
                                                                                                               {
                                                                                                                  addr391:
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < Number.MIN_VALUE);
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr410);
                                                                                                                     }
                                                                                                                     §§goto(addr413);
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                               §§goto(addr423);
                                                                                                            }
                                                                                                            §§goto(addr410);
                                                                                                         }
                                                                                                         §§goto(addr413);
                                                                                                      }
                                                                                                   }
                                                                                                   addr410:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr413:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr423:
                                                                                                            §§push(_loc12_);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               addr426:
                                                                                                               §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                               if(_loc17_ || param3)
                                                                                                               {
                                                                                                                  addr439:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc15_:* = §§pop();
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  §§push(0);
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
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(param2.§-Q§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc13_);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr602:
                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   addr604:
                                                                                                                                                   §§goto(addr611);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr639);
                                                                                                                                       }
                                                                                                                                       §§goto(addr638);
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 addr654:
                                                                                                                              }
                                                                                                                              addr611:
                                                                                                                              while(!(_loc17_ || param3))
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              loop3:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(!(_loc16_ && this))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             addr639:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          addr638:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             addr642:
                                                                                                                                             loop13:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                param1.fraction = _loc15_;
                                                                                                                                                if(_loc16_ && param3)
                                                                                                                                                {
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                                §§push(param1.normal);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   loop15:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      loop16:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         loop17:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop18:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop19:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.normal);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(_loc17_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(_loc17_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc17_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop16;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              if(_loc16_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc16_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop15;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop19;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop18;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop13;
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
                                                                                                                                    §§goto(addr642);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    if(!(_loc16_ && param3))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 if(_loc17_ || param1)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr654);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr642);
                                                                                                            }
                                                                                                            §§goto(addr439);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                }
                                                                                                §§goto(addr439);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr348);
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              §§goto(addr271);
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr70);
               }
               §§goto(addr65);
            }
            §§goto(addr51);
         }
         §§goto(addr70);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc6_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§,!2§.x);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || this)
                  {
                     addr69:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || this)
                     {
                        addr64:
                        §§push(§§pop() * this.§,!2§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc7_ || _loc3_)
                     {
                        addr77:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param2.position.y);
                     if(!_loc6_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc6_ && this))
                        {
                           §§push(this.§,!2§.x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_ && param2)
                              {
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr127);
                        }
                        addr132:
                        §§push(_loc3_.col2.y);
                        if(!(_loc6_ && this))
                        {
                           addr127:
                           §§push(§§pop() * this.§,!2§.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(_loc7_ || this)
                        {
                           addr140:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_)
                        {
                           §§push(param1.§4m§);
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() - §!@§);
                           }
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() - §!@§);
                           }
                           §§pop().Set(§§pop(),§§pop());
                           do
                           {
                              param1.§=!`§.Set(_loc4_ + §!@§,_loc5_ + §!@§);
                           }
                           while(_loc6_);
                           
                        }
                        return;
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr69);
               }
               §§goto(addr64);
            }
            §§goto(addr69);
         }
         §§goto(addr77);
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
               if(_loc3_)
               {
                  §§push(§§pop() * §!@§);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr143:
                     §§push(§§pop() * §!@§);
                  }
                  §§pop().§=`§ = §§pop();
                  while(true)
                  {
                     param1.§4=§.SetV(this.§,!2§);
                     while(!_loc4_)
                     {
                        §§push(param1);
                        §§push(param1.§=`§);
                        if(_loc3_)
                        {
                           §§push(0.5);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §!@§);
                              if(_loc3_ || this)
                              {
                                 addr42:
                                 §§push(§§pop() * §!@§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(this.§,!2§.x);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(this.§,!2§);
                                       if(_loc3_ || param2)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc4_)
                                          {
                                             addr98:
                                             §§push(§§pop() * §§pop());
                                             if(!_loc4_)
                                             {
                                                addr89:
                                                §§push(this.§,!2§.y);
                                                if(!_loc4_)
                                                {
                                                   addr92:
                                                   §§push(§§pop() * this.§,!2§.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§#P§ = §§pop() * (§§pop() + §§pop());
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          §§goto(addr92);
                                       }
                                    }
                                    §§goto(addr89);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr42);
                        }
                        §§goto(addr98);
                     }
                  }
                  addr147:
               }
            }
            §§goto(addr143);
         }
         §§goto(addr147);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§&!M§(param3,this.§,!2§);
         §§push(b2Math.§extends§(param1,_loc5_));
         if(_loc12_ || this)
         {
            §§push(§§pop() - param2);
            if(_loc12_ || param3)
            {
               §§push(-§§pop());
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc6_:* = §§pop();
         if(_loc12_)
         {
            §§push(_loc6_);
            if(!_loc11_)
            {
               if(§§pop() >= -§!@§ + Number.MIN_VALUE)
               {
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc12_ || param2)
                     {
                        if(§§pop() > §!@§)
                        {
                           if(!_loc11_)
                           {
                              if(_loc11_ && param2)
                              {
                                 continue;
                              }
                              if(!(_loc12_ || this))
                              {
                                 §§goto(addr134);
                              }
                              param4.SetV(_loc5_);
                           }
                           §§push(Math.PI * §!@§);
                           if(!(_loc11_ && param1))
                           {
                              §§push(§§pop() * §!@§);
                              if(!(_loc11_ && param2))
                              {
                                 return §§pop();
                              }
                              addr160:
                              addr160:
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(_loc12_ || this)
                              {
                                 §§push(§§pop() * _loc6_);
                                 if(!_loc11_)
                                 {
                                    addr173:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 if(_loc12_ || this)
                                 {
                                    §§push(_loc7_);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() * (Math.asin(_loc6_ / §!@§) + Math.PI / 2));
                                       if(_loc12_)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc11_ && param2))
                                          {
                                             §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                             if(!(_loc11_ && param2))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc11_ && param2))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc12_)
                                                   {
                                                      addr234:
                                                      _loc9_ = §§pop();
                                                      §§push(-2 / 3);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                         if(!(_loc11_ && param3))
                                                         {
                                                            addr256:
                                                            addr255:
                                                            §§push(§§pop() / _loc9_);
                                                            if(!_loc12_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   addr260:
                                                   var _loc10_:* = §§pop();
                                                   if(!(_loc11_ && param3))
                                                   {
                                                      §§push(param4);
                                                      §§push(_loc5_.x);
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§push(param1.x);
                                                         if(!_loc11_)
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
                                                      if(_loc12_)
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
                                                   while(_loc11_);
                                                   
                                                   return _loc9_;
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr173);
                           }
                        }
                        else
                        {
                           addr137:
                           §§push(§!@§ * §!@§);
                           if(_loc12_ || param1)
                           {
                              break;
                           }
                        }
                        §§goto(addr160);
                     }
                     break;
                  }
                  §§goto(addr160);
                  §§push(Number(§§pop()));
                  addr90:
               }
               addr134:
               return 0;
            }
            §§goto(addr160);
         }
         else if(false)
         {
            §§goto(addr90);
         }
         §§goto(addr137);
      }
      
      public function §=!1§() : b2Vec2
      {
         return this.§,!2§;
      }
      
      public function §#9§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!2§.SetV(param1);
         }
      }
      
      public function §2!P§() : Number
      {
         return §!@§;
      }
      
      public function §2!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §!@§ = param1;
         }
      }
   }
}
