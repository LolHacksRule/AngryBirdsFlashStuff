package §2k§
{
   import §%4§.b2AABB;
   import §%4§.b2RayCastInput;
   import §%4§.b2RayCastOutput;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §!X§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!X§ = new b2Vec2();
            while(true)
            {
               super();
               while(!_loc3_)
               {
                  §0!,§ = b2internal::;n;
                  while(_loc2_ || _loc3_)
                  {
                     §&!$§ = param1;
                     if(_loc2_ || param1)
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
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
         if(!(_loc3_ && _loc3_))
         {
            super.Set(param1);
            if(_loc4_ || param1)
            {
               if(param1 is b2CircleShape)
               {
                  addr51:
                  _loc2_ = param1 as b2CircleShape;
                  if(_loc4_ || this)
                  {
                     this.§!X§.SetV(_loc2_.§!X§);
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
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc7_)
            {
               §§push(this.§!X§.x);
               if(_loc6_ || param2)
               {
                  §§goto(addr68);
               }
               §§push(§§pop() + §§pop());
            }
            addr68:
            §§push(§§pop() * §§pop());
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc3_.col2.x);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() * this.§!X§.y);
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc6_ || param1)
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param1.position.y);
            if(_loc6_)
            {
               §§push(_loc3_.col1.y);
               if(_loc6_)
               {
                  §§push(this.§!X§.x);
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr121);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr121:
               §§push(§§pop() * §§pop());
               if(!_loc7_)
               {
                  §§push(_loc3_.col2.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * this.§!X§.y);
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc7_ && param2)
               {
               }
               §§goto(addr130);
            }
            addr130:
            var _loc5_:* = Number(§§pop());
            if(!_loc7_)
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
                        addr240:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param2.y);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(_loc5_);
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr205:
                              }
                              addr206:
                              while(!(_loc7_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 while(_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_ && this)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc7_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(b2internal::&!$ * b2internal::&!$);
                                    if(_loc6_)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr190);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr205);
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  §§push(_loc4_);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || param2)
                           {
                              §§push(_loc5_);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(§§pop() * _loc5_);
                                 if(!_loc7_)
                                 {
                                    addr170:
                                    §§goto(addr171);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr170);
               }
               §§goto(addr171);
            }
            addr190:
            return §§pop() <= §§pop();
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
         if(_loc16_)
         {
            §§push(_loc4_.col1.x);
            if(!_loc17_)
            {
               §§push(this.§!X§.x);
               if(_loc16_ || param3)
               {
                  addr60:
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc17_ && this))
                     {
                        §§push(§§pop() * this.§!X§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_ || param1)
                  {
                     addr68:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(!_loc17_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc16_)
                     {
                        §§push(this.§!X§.x);
                        if(!_loc17_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc16_ || this)
                           {
                              addr93:
                              §§push(_loc4_.col2.y);
                              if(!_loc17_)
                              {
                                 addr98:
                                 §§push(§§pop() * this.§!X§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc17_ && param1))
                           {
                              addr111:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param2.p1.x);
                           if(_loc16_)
                           {
                              §§push(§§pop() - _loc5_);
                              if(!_loc17_)
                              {
                                 addr122:
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              if(_loc16_ || param2)
                              {
                                 §§push(param2.p1.y);
                                 if(_loc16_ || this)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc17_ && param3))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc16_ || param1)
                                          {
                                             addr165:
                                             _loc8_ = §§pop();
                                             §§push(_loc7_);
                                             if(!(_loc17_ && param2))
                                             {
                                                §§push(_loc7_);
                                                if(_loc16_)
                                                {
                                                   addr177:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_ || param2)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                         if(_loc16_)
                                                         {
                                                            addr212:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc17_ && this))
                                                            {
                                                               §§push(b2internal::&!$ * b2internal::&!$);
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(param2.p2.x);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() - param2.p1.x);
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  addr229:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(param2.p2.y);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(§§pop() - param2.p1.y);
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr242:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc7_);
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!(_loc17_ && param3))
                                                                           {
                                                                              addr266:
                                                                              §§push(§§pop() * _loc11_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc17_)
                                                                           {
                                                                           }
                                                                           addr272:
                                                                           var _loc12_:* = §§pop();
                                                                           §§push(_loc10_);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr292:
                                                                                    §§push(_loc11_);
                                                                                    if(!(_loc17_ && param2))
                                                                                    {
                                                                                       addr300:
                                                                                       §§push(§§pop() * _loc11_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       addr305:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             addr321:
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   addr343:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      addr341:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc14_:*;
                                                                                                   §§push(_loc14_ = §§pop());
                                                                                                   if(!(_loc17_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop() < 0);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc17_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     addr380:
                                                                                                                     §§push(§§pop() < Number.MIN_VALUE);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr385:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§goto(addr389);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              addr400:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc15_:* = §§pop();
                                                                                                                           if(_loc16_)
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
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2.§"!7§);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc13_);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop16:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     param1.fraction = _loc15_;
                                                                                                                                                                     loop6:
                                                                                                                                                                     for(; _loc16_ || param1; while(_loc16_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr490);
                                                                                                                                                                     })
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.normal);
                                                                                                                                                                        loop7:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(_loc16_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 addr504:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr505:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr503:
                                                                                                                                                                           }
                                                                                                                                                                           loop11:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              loop12:
                                                                                                                                                                              while(!(_loc17_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.normal);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr479:
                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr503);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr504);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr505);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr479);
                                                                                                                                                                                    addr490:
                                                                                                                                                                                    §§push(param1.normal);
                                                                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().Normalize();
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                             break loop16;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop11;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr577:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr421:
                                                                                                                                                            while(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr547);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr405);
                                                                                                                           }
                                                                                                                           §§goto(addr421);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr389);
                                                                                                                  }
                                                                                                                  §§goto(addr400);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr389);
                                                                                                         }
                                                                                                         §§goto(addr385);
                                                                                                      }
                                                                                                      addr389:
                                                                                                      return false;
                                                                                                   }
                                                                                                   §§goto(addr380);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr272);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc17_ && param1))
                                                      {
                                                         addr211:
                                                         §§goto(addr212);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr111);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr60);
         }
         §§goto(addr68);
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
               §§push(this.§!X§.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr59:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || param2)
                     {
                        addr54:
                        §§push(§§pop() * this.§!X§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc7_ || param1)
                     {
                        addr68:
                        var _loc4_:Number = §§pop();
                        §§push(param2.position.y);
                        if(_loc7_)
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc7_)
                           {
                              §§push(this.§!X§.x);
                              if(_loc7_ || _loc3_)
                              {
                                 §§goto(addr117);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           addr117:
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && param1))
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * this.§!X§.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                              addr120:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(param1.§=!H§);
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() - b2internal::&!$);
                              }
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() - b2internal::&!$);
                              }
                              §§pop().Set(§§pop(),§§pop());
                           }
                           do
                           {
                              param1.§6P§.Set(_loc4_ + b2internal::&!$,_loc5_ + b2internal::&!$);
                           }
                           while(_loc6_ && param1);
                           
                           return;
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr59);
               }
               §§goto(addr54);
            }
            §§goto(addr59);
         }
         §§goto(addr68);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            §§push(param2);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * b2internal::&!$);
                  if(_loc3_ || param2)
                  {
                     addr153:
                     §§push(§§pop() * b2internal::&!$);
                  }
                  §§pop().§3,§ = §§pop();
                  do
                  {
                     param1.center.SetV(this.§!X§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§3,§);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * b2internal::&!$);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * b2internal::&!$);
                              if(_loc3_ || param2)
                              {
                                 §§push(this.§!X§.x);
                                 if(_loc3_)
                                 {
                                    §§push(this.§!X§);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc4_ && this))
                                          {
                                             addr87:
                                             §§push(this.§!X§.y);
                                             if(_loc3_)
                                             {
                                                addr94:
                                                §§push(§§pop() + §§pop() * this.§!X§.y);
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
                                 §§goto(addr87);
                              }
                           }
                        }
                        §§goto(addr96);
                     }
                     while(§§pop().I = §§pop(), _loc4_);
                     
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  return;
                  addr156:
               }
            }
            §§goto(addr153);
         }
         §§goto(addr156);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§#!K§(param3,this.§!X§);
         §§push(b2Math.§8n§(param1,_loc5_));
         if(!_loc11_)
         {
            §§push(param2);
            if(!_loc11_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc11_)
               {
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                  }
                  addr42:
                  var _loc6_:*;
                  §§push(_loc6_ = §§pop());
                  if(!(_loc11_ && param3))
                  {
                     if(§§pop() < -b2internal::&!$ + Number.MIN_VALUE)
                     {
                        if(_loc12_)
                        {
                           return 0;
                        }
                        addr106:
                        §§push(b2internal::&!$ * b2internal::&!$);
                        if(!(_loc11_ && param2))
                        {
                           addr116:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc6_);
                        if(!(_loc11_ && this))
                        {
                           §§push(§§pop() * _loc6_);
                           if(_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        if(_loc12_ || param3)
                        {
                           §§push(_loc7_);
                           if(_loc12_)
                           {
                              §§push(§§pop() * (Math.asin(_loc6_ / b2internal::&!$) + Math.PI / 2));
                              if(!_loc11_)
                              {
                                 §§push(_loc6_);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc12_ || param2)
                                       {
                                          addr184:
                                          §§push(Number(§§pop()));
                                          if(!(_loc11_ && param1))
                                          {
                                             addr192:
                                             _loc9_ = §§pop();
                                             §§push(-2 / 3);
                                             if(_loc12_ || param1)
                                             {
                                                §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                if(!_loc11_)
                                                {
                                                   addr213:
                                                   §§push(§§pop() / _loc9_);
                                                   if(!_loc12_)
                                                   {
                                                   }
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr217);
                                          }
                                          addr217:
                                          var _loc10_:* = §§pop();
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(param4);
                                             §§push(_loc5_.x);
                                             if(_loc12_)
                                             {
                                                §§push(param1.x);
                                                if(_loc12_ || param1)
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
                                                if(_loc12_ || this)
                                                {
                                                   §§push(§§pop() * _loc10_);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().y = §§pop();
                                          }
                                          while(_loc11_ && this);
                                          
                                          return _loc9_;
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr192);
                                    }
                                 }
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr192);
                     }
                     else
                     {
                        §§push(_loc6_);
                        if(!(_loc11_ && param2))
                        {
                           if(§§pop() > b2internal::&!$)
                           {
                              if(!_loc11_)
                              {
                                 param4.SetV(_loc5_);
                                 if(!_loc11_)
                                 {
                                    §§push(Math.PI * b2internal::&!$);
                                    if(!(_loc11_ && param2))
                                    {
                                       §§push(§§pop() * b2internal::&!$);
                                       if(_loc12_ || param1)
                                       {
                                          return §§pop();
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr106);
                                 }
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr106);
                        }
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr42);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr42);
      }
      
      public function §13§() : b2Vec2
      {
         return this.§!X§;
      }
      
      public function §'!Q§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!X§.SetV(param1);
         }
      }
      
      public function §?!L§() : Number
      {
         return b2internal::&!$;
      }
      
      public function §`^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §&!$§ = param1;
         }
      }
   }
}
