package §3b§
{
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §>!Z§.b2AABB;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §`3§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`3§ = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  §3r§ = b2internal::^!6;
                  while(_loc3_ || param1)
                  {
                     if(_loc3_)
                     {
                        § !c§ = param1;
                        if(!_loc2_)
                        {
                           return;
                           addr50:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_ || this)
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
            if(!(_loc3_ && _loc3_))
            {
               if(param1 is b2CircleShape)
               {
                  addr61:
                  _loc2_ = param1 as b2CircleShape;
                  if(!_loc3_)
                  {
                     this.§`3§.SetV(_loc2_.§`3§);
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
            if(_loc6_ || this)
            {
               §§push(this.§`3§.x);
               if(_loc6_)
               {
                  addr63:
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc6_)
                     {
                        §§push(§§pop() * this.§`3§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc6_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc6_ || param2)
                     {
                        §§push(this.§`3§.x);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_ || param1)
                           {
                              addr121:
                              §§push(_loc3_.col2.y);
                              if(!(_loc7_ && param2))
                              {
                                 addr116:
                                 §§push(§§pop() * this.§`3§.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc6_)
                              {
                                 addr125:
                                 var _loc5_:* = Number(§§pop());
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(param2.x);
                                    if(!_loc7_)
                                    {
                                       §§push(_loc4_);
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr158:
                                          if(_loc7_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_ || this)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() * _loc5_);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr209:
                                                            addr225:
                                                            loop4:
                                                            while(_loc6_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     return §§pop() <= b2internal:: !c * b2internal:: !c;
                                                                  }
                                                                  addr185:
                                                                  addr198:
                                                                  if(!(_loc6_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§goto(addr158);
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param2.y);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     continue loop3;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr125);
               }
               §§push(§§pop() + §§pop());
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
         if(_loc16_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc17_ && param1))
            {
               §§push(this.§`3§.x);
               if(_loc16_)
               {
                  addr65:
                  §§push(§§pop() * §§pop());
                  if(!_loc17_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc17_ && param3))
                     {
                        §§push(§§pop() * this.§`3§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_ || param1)
                  {
                     addr73:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(!_loc17_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc17_)
                     {
                        §§push(this.§`3§.x);
                        if(_loc16_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc16_ || param2)
                           {
                              addr118:
                              §§push(_loc4_.col2.y);
                              if(!(_loc17_ && param2))
                              {
                                 addr113:
                                 §§push(§§pop() * this.§`3§.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!(_loc17_ && this))
                              {
                                 addr127:
                                 var _loc6_:Number = §§pop();
                                 §§push(param2.p1.x);
                                 if(!(_loc17_ && param2))
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(!_loc17_)
                                    {
                                       addr142:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc16_ || param3)
                                    {
                                       §§push(param2.p1.y);
                                       if(!_loc17_)
                                       {
                                          §§push(_loc6_);
                                          if(_loc16_ || param2)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc17_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc17_ && this))
                                                {
                                                   addr175:
                                                   _loc8_ = §§pop();
                                                   §§push(_loc7_);
                                                   if(!(_loc17_ && param2))
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc16_)
                                                         {
                                                            addr195:
                                                            §§push(_loc8_);
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(§§pop() * _loc8_);
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  addr227:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr215:
                                                                     §§push(b2internal:: !c * b2internal:: !c);
                                                                  }
                                                                  var _loc9_:* = §§pop();
                                                                  §§push(param2.p2.x);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.x);
                                                                     if(_loc16_ || param3)
                                                                     {
                                                                        addr244:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(param2.p2.y);
                                                                     if(_loc16_ || param2)
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
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              addr302:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc17_ && param1))
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc11_);
                                                                                 }
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc10_);
                                                                              if(_loc16_ || param3)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc16_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc17_ && param3))
                                                                                    {
                                                                                       addr337:
                                                                                       §§push(_loc11_);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          addr342:
                                                                                          §§push(§§pop() + §§pop() * _loc11_);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc17_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                                if(_loc16_ || param3)
                                                                                                {
                                                                                                   addr373:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc16_ || param3)
                                                                                                   {
                                                                                                      addr381:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                var _loc14_:* = §§pop();
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() < 0);
                                                                                                   if(_loc16_ || this)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!(_loc17_ && param3))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc16_ || param3)
                                                                                                               {
                                                                                                                  §§push(§§pop() < Number.MIN_VALUE);
                                                                                                                  if(!_loc17_)
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
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               var _loc15_:* = §§pop();
                                                                                                               if(!(_loc17_ && this))
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
                                                                                                                                    if(_loc17_ && param3)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§push(param2.§%[§);
                                                                                                                                    if(!(_loc17_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * _loc13_);
                                                                                                                                       if(!(_loc17_ && param3))
                                                                                                                                       {
                                                                                                                                          addr600:
                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                          loop15:
                                                                                                                                          while(!(_loc17_ && param2))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc17_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc16_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      addr624:
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(!(_loc17_ && param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      addr660:
                                                                                                                                                      loop6:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr661:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop8:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      param1.fraction = _loc15_;
                                                                                                                                                      loop9:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.normal);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(_loc16_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               if(!(_loc17_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  addr562:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               addr563:
                                                                                                                                                            }
                                                                                                                                                            loop13:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr565:
                                                                                                                                                               while(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.normal);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(!(_loc17_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr530:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc17_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr538:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr562);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr563);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr530);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr538);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop9;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc17_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§pop().Normalize();
                                                                                                                                                               if(_loc17_ && this)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr565);
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc17_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(true);
                                                                                                                                                                  while(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        return §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop15;
                                                                                                                                                                  addr454:
                                                                                                                                                               }
                                                                                                                                                               continue loop8;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr454);
                                                                                                                                             }
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       while(_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop1;
                                                                                                                                       §§goto(addr661);
                                                                                                                                    }
                                                                                                                                    §§goto(addr600);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr608);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr424);
                                                                                                         }
                                                                                                         addr424:
                                                                                                         return false;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr420);
                                                                                                }
                                                                                                §§goto(addr428);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 §§goto(addr342);
                                                                              }
                                                                              §§goto(addr337);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                     §§goto(addr267);
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc17_ && param3))
                                                               {
                                                                  §§goto(addr227);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr127);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr65);
         }
         §§goto(addr73);
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
            if(_loc7_ || param2)
            {
               §§push(this.§`3§.x);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || param2)
                  {
                     addr54:
                     §§push(_loc3_.col2.x);
                     if(!_loc6_)
                     {
                        addr63:
                        §§push(§§pop() + §§pop() * this.§`3§.y);
                     }
                     §§goto(addr63);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr77:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(!_loc6_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc6_)
                     {
                        §§push(this.§`3§.x);
                        if(_loc7_)
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
                     if(_loc7_ || _loc3_)
                     {
                        addr107:
                        §§push(§§pop() * this.§`3§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc7_)
                     {
                        addr115:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     if(_loc7_)
                     {
                        §§push(param1.§>h§);
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - b2internal:: !c);
                        }
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - b2internal:: !c);
                        }
                        §§pop().Set(§§pop(),§§pop());
                        do
                        {
                           param1.§^!z§.Set(_loc4_ + b2internal:: !c,_loc5_ + b2internal:: !c);
                        }
                        while(!(_loc7_ || param1));
                        
                     }
                     return;
                  }
                  §§goto(addr115);
               }
               §§goto(addr63);
            }
            §§goto(addr54);
         }
         §§goto(addr77);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * b2internal:: !c);
                  if(_loc4_)
                  {
                     §§push(§§pop() * b2internal:: !c);
                  }
               }
            }
            §§pop().§&q§ = §§pop();
         }
         do
         {
            param1.center.SetV(this.§`3§);
            do
            {
               §§push(param1);
               §§push(param1.§&q§);
               if(!_loc4_)
               {
                  continue;
               }
               §§push(0.5);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() * b2internal:: !c);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * b2internal:: !c);
                     if(!(_loc3_ && this))
                     {
                        addr56:
                        §§push(this.§`3§.x);
                        if(_loc4_ || param1)
                        {
                           §§push(this.§`3§);
                           if(_loc4_)
                           {
                              §§push(§§pop().x);
                              if(!(_loc3_ && param2))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || param1)
                                 {
                                    addr98:
                                    §§push(this.§`3§.y);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr110:
                                       §§push(§§pop() + §§pop() * this.§`3§.y);
                                    }
                                    §§goto(addr110);
                                 }
                                 addr112:
                                 §§push(§§pop() * (§§pop() + §§pop()));
                                 continue;
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr56);
            }
            while(§§pop().§6_§ = §§pop(), !(_loc4_ || this));
            
         }
         while(_loc3_ && this);
         
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§%!r§(param3,this.§`3§);
         §§push(b2Math.§#D§(param1,_loc5_));
         if(!(_loc12_ && this))
         {
            §§push(param2);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc12_ && param2))
               {
                  addr47:
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!(_loc12_ && param2))
            {
               if(§§pop() < -b2internal:: !c + Number.MIN_VALUE)
               {
                  if(!_loc12_)
                  {
                     return 0;
                  }
                  addr110:
                  §§push(b2internal:: !c * b2internal:: !c);
                  if(!_loc12_)
                  {
                     addr115:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc6_);
                  if(!(_loc12_ && param1))
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc12_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(!_loc12_)
                  {
                     §§push(_loc7_);
                     if(_loc11_)
                     {
                        §§push(§§pop() * (Math.asin(_loc6_ / b2internal:: !c) + Math.PI / 2));
                        if(_loc11_)
                        {
                           §§push(_loc6_);
                           if(_loc11_)
                           {
                              §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                              if(!(_loc12_ && param3))
                              {
                                 addr180:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc11_)
                                    {
                                       _loc9_ = §§pop();
                                       addr187:
                                       §§push(-2 / 3);
                                       if(_loc11_)
                                       {
                                          addr192:
                                          §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                          if(_loc12_ && param1)
                                          {
                                          }
                                          addr216:
                                          var _loc10_:Number = §§pop();
                                          §§goto(addr215);
                                       }
                                       §§push(_loc9_);
                                    }
                                    addr215:
                                    if(_loc11_)
                                    {
                                       §§push(param4);
                                       §§push(_loc5_.x);
                                       if(!_loc12_)
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
                                          if(_loc11_)
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
                                       while(_loc12_ && param3);
                                       
                                    }
                                    return _loc9_;
                                 }
                                 §§goto(addr192);
                              }
                              §§push(§§pop() / §§pop());
                              if(!(_loc12_ && param1))
                              {
                                 §§goto(addr192);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr180);
                        }
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr187);
               }
               else
               {
                  §§push(_loc6_);
                  if(_loc11_ || param2)
                  {
                     if(§§pop() > b2internal:: !c)
                     {
                        if(!(_loc12_ && param3))
                        {
                           param4.SetV(_loc5_);
                           if(!_loc12_)
                           {
                              §§push(Math.PI * b2internal:: !c);
                              if(_loc11_ || param3)
                              {
                                 addr105:
                                 §§push(§§pop() * b2internal:: !c);
                                 if(!_loc12_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr115);
                              }
                           }
                           else
                           {
                              §§goto(addr110);
                           }
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr115);
         }
         §§goto(addr47);
      }
      
      public function §=!T§() : b2Vec2
      {
         return this.§`3§;
      }
      
      public function §=!K§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`3§.SetV(param1);
         }
      }
      
      public function §4!Y§() : Number
      {
         return b2internal:: !c;
      }
      
      public function §8&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            § !c§ = param1;
         }
      }
   }
}
