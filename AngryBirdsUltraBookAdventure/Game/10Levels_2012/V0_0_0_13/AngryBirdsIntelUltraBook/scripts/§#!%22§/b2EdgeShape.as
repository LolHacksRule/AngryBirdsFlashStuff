package §#!"§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.b2AABB;
   import §'s§.b2RayCastInput;
   import §'s§.b2RayCastOutput;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §2m§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §8!R§:Number;
      
      b2internal var §9O§:b2Vec2;
      
      b2internal var §3"§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §<!0§:b2EdgeShape;
      
      b2internal var §@7§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§2m§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        continue loop1;
                        loop15:
                        for(; _loc4_ || param2; while(true)
                        {
                           if(!(_loc4_ || param1))
                           {
                              continue loop15;
                           }
                           if(_loc4_)
                           {
                              §§goto(addr296);
                           }
                           §§goto(addr370);
                           §§goto(addr75);
                        },§§goto(addr394))
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           this.§8!R§ = this.§3"§.Normalize();
                           loop16:
                           while(true)
                           {
                              §§push(this.§9O§);
                              §§push(this.§3"§.y);
                              §§push(this.§3"§.x);
                              if(!_loc3_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().Set(§§pop(),§§pop());
                              loop17:
                              while(true)
                              {
                                 §§push(this.m_coreV1);
                                 §§push(b2Settings.b2_toiSlop);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(this.§9O§.x);
                                       if(_loc4_)
                                       {
                                          §§push(this.§3"§.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr228:
                                                   §§push(this.m_v1.x);
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr249:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(b2Settings.b2_toiSlop);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc4_)
                                                         {
                                                            §§push(this.§9O§.y);
                                                            if(_loc4_)
                                                            {
                                                               addr262:
                                                               §§push(§§pop() - this.§3"§.y);
                                                               if(_loc4_ || this)
                                                               {
                                                                  addr285:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc3_ && param2))
                                                                  {
                                                                     addr281:
                                                                     §§push(this.m_v1.y);
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  continue loop15;
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr281);
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr228);
                                 while(true)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       if(_loc4_)
                                       {
                                          addr173:
                                          if(_loc3_ && _loc3_)
                                          {
                                             break;
                                          }
                                          this.m_cornerDir1 = this.§9O§;
                                          continue;
                                       }
                                       continue loop16;
                                    }
                                    continue loop17;
                                 }
                                 while(!_loc3_)
                                 {
                                    this.m_v2 = param2;
                                    while(true)
                                    {
                                       §§push(this.§3"§);
                                       §§push(this.m_v2.x);
                                       if(_loc4_)
                                       {
                                          §§push(this.m_v1.x);
                                          if(!_loc3_)
                                          {
                                             addr340:
                                             §§push(§§pop() - §§pop());
                                             §§push(this.m_v2.y);
                                             if(_loc4_ || param2)
                                             {
                                                addr350:
                                                §§push(§§pop() - this.m_v1.y);
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             continue loop15;
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr438);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr432);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(!_loc19_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc19_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.y);
            if(!_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         _loc4_ = param3.R;
         §§push(param3.position.x);
         if(!(_loc19_ && param2))
         {
            §§push(_loc4_.col1.x);
            if(!_loc19_)
            {
               §§push(this.m_v1.x);
               if(!(_loc19_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc19_)
                  {
                     addr92:
                     §§push(_loc4_.col2.x);
                     if(!(_loc19_ && param1))
                     {
                        addr106:
                        §§push(§§pop() + §§pop() * this.m_v1.y);
                     }
                     §§goto(addr106);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc19_)
                  {
                     addr110:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc18_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc18_ || param1)
                     {
                        §§push(this.m_v1.x);
                        if(!_loc19_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc18_)
                           {
                              addr135:
                              §§push(_loc4_.col2.y);
                              if(_loc18_)
                              {
                                 addr140:
                                 §§push(§§pop() * this.m_v1.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc19_)
                           {
                              addr148:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param3.position.y);
                           if(!_loc19_)
                           {
                              §§push(_loc4_.col1.y);
                              if(!_loc19_)
                              {
                                 §§push(this.m_v2.x);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc18_ || this)
                                    {
                                       addr173:
                                       §§push(_loc4_.col2.y);
                                       if(_loc18_)
                                       {
                                          addr182:
                                          §§push(§§pop() + §§pop() * this.m_v2.y);
                                          if(!_loc19_)
                                          {
                                             addr185:
                                             §§push(§§pop() + §§pop());
                                             if(_loc18_ || param1)
                                             {
                                                addr194:
                                                §§push(§§pop() - _loc8_);
                                                if(!_loc18_)
                                                {
                                                }
                                                addr198:
                                                var _loc9_:* = §§pop();
                                                §§push(param3.position.x);
                                                if(_loc18_ || param3)
                                                {
                                                   §§push(_loc4_.col1.x);
                                                   if(_loc18_)
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(_loc18_ || param3)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            addr232:
                                                            §§push(_loc4_.col2.x);
                                                            if(!_loc19_)
                                                            {
                                                               addr241:
                                                               §§push(§§pop() + §§pop() * this.m_v2.y);
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  addr249:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     addr253:
                                                                     §§push(§§pop() - _loc7_);
                                                                     if(_loc19_)
                                                                     {
                                                                     }
                                                                     addr260:
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(100 * Number.MIN_VALUE);
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc5_);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc18_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc19_ && param2))
                                                                              {
                                                                                 addr304:
                                                                                 §§push(§§pop() + §§pop() * _loc10_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr307:
                                                                                    §§push(-§§pop());
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                    }
                                                                                    addr311:
                                                                                    var _loc12_:* = §§pop();
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                §§push(param2.p1);
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr767:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      addr768:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr769:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr770:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr461);
                                                                                 }
                                                                                 §§goto(addr311);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr307);
                                                                  }
                                                                  §§push(-§§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§goto(addr260);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr198);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr148);
               }
               §§goto(addr106);
            }
            §§goto(addr92);
         }
         §§goto(addr110);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!(_loc9_ && this))
         {
            §§push(param2.position);
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc3_.col1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop3:
                     while(true)
                     {
                        §§push(this.m_v1);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(param2.position);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               while(!(_loc9_ && param1))
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(!(_loc8_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              loop22:
                                                                              while(_loc8_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_v1);
                                                                                    if(!(_loc8_ || param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    loop24:
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop26:
                                                                                          while(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                addr522:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2.position);
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr388:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.col1);
                                                                                                         addr390:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc8_ || param2)
                                                                                                            {
                                                                                                               §§push(this.m_v2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr401:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ || param2))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr443:
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           while(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col2);
                                                                                                                                 while(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    while(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_v2);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          addr437:
                                                                                                                                          while(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             while(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                                 addr424:
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           continue loop26;
                                                                                                                           addr413:
                                                                                                                        }
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr454:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  addr293:
                                                                                                                  §§push(this.m_v2);
                                                                                                                  continue loop5;
                                                                                                                  if(_loc9_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           §§push(_loc3_.col2);
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_v2);
                                                                                                                                       if(_loc8_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr427);
                                                                                                                                                }
                                                                                                                                                §§goto(addr440);
                                                                                                                                             }
                                                                                                                                             addr354:
                                                                                                                                          }
                                                                                                                                          §§goto(addr437);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                                 addr339:
                                                                                                                              }
                                                                                                                              §§goto(addr354);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr424);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr318:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                     §§goto(addr443);
                                                                                                                  }
                                                                                                                  §§goto(addr339);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr413);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                     if(_loc9_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr293);
                                                                     }
                                                                     §§goto(addr371);
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
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc9_ && this)
               {
                  continue;
               }
               §§goto(addr253);
               §§push(§§pop().y);
            }
         }
         §§goto(addr178);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            param1.§7_§ = 0;
            while(true)
            {
               param1.§>r§.SetV(this.m_v1);
               while(!_loc4_)
               {
                  param1.§8D§ = 0;
                  if(_loc3_ || this)
                  {
                     return;
                     addr59:
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc10_)
         {
            §§push(param2);
            if(_loc11_ || this)
            {
               addr31:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc10_ && param1))
               {
                  addr40:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§?!L§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§?!L§(param3,this.m_v2);
               §§push(b2Math.§2&§(param1,_loc6_));
               if(_loc11_)
               {
                  §§push(§§pop() - param2);
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§2&§(param1,_loc7_));
               if(!(_loc10_ && this))
               {
                  §§push(§§pop() - param2);
                  if(!(_loc10_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               if(!(_loc10_ && param1))
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     §§push(0);
                     if(_loc11_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(_loc9_);
                           while(true)
                           {
                              §§push(0);
                              if(_loc11_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc10_ && param3))
                                    {
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(_loc7_);
                                          §§push(_loc9_);
                                          if(_loc11_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc10_)
                                             {
                                                addr406:
                                                §§push(_loc8_);
                                                if(_loc11_)
                                                {
                                                   §§push(_loc9_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr420:
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc11_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(!(_loc10_ && param3))
                                                            {
                                                               addr432:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc11_)
                                                               {
                                                                  addr435:
                                                                  §§push(_loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        §§push(§§pop() - _loc9_);
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           addr455:
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr458:
                                                                              §§push(_loc7_.x);
                                                                           }
                                                                           §§pop().x = §§pop() + §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              §§push(_loc9_);
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc11_ || param2)
                                                                                          {
                                                                                             addr326:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc11_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr341:
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc9_);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr368:
                                                                                                            §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                            addr366:
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            addr364:
                                                                                                            §§goto(addr366);
                                                                                                            §§push(_loc7_.y);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr364);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr368);
                                                                                             }
                                                                                             §§goto(addr341);
                                                                                          }
                                                                                          §§goto(addr364);
                                                                                       }
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           addr463:
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr455);
                                                            }
                                                            §§goto(addr458);
                                                         }
                                                         §§goto(addr435);
                                                      }
                                                      §§goto(addr432);
                                                   }
                                                   §§goto(addr455);
                                                }
                                                §§goto(addr420);
                                             }
                                             §§goto(addr455);
                                          }
                                          §§goto(addr406);
                                       }
                                       §§goto(addr624);
                                    }
                                    §§goto(addr463);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr634);
                           }
                        }
                        §§goto(addr632);
                     }
                     §§goto(addr634);
                     if(_loc11_ || param3)
                     {
                        return §§pop();
                     }
                  }
               }
               §§goto(addr376);
            }
            §§goto(addr40);
         }
         §§goto(addr31);
      }
      
      public function §8`§() : Number
      {
         return this.§8!R§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §1!6§() : b2Vec2
      {
         return this.§9O§;
      }
      
      public function §09§() : b2Vec2
      {
         return this.§3"§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §6!B§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(_loc3_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc4_)
                     {
                        addr49:
                        §§push(this.m_coreV1);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop().y);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_ || param1)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc4_)
                                 {
                                    addr87:
                                    addr88:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr137);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(_loc3_)
                                 {
                                    addr110:
                                    §§push(this.m_coreV1.x);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr121:
                                          §§push(_loc2_.col2.y);
                                          if(_loc4_ && param1)
                                          {
                                          }
                                          addr136:
                                          addr137:
                                          return new §§pop().b2Vec2(§§pop(),§§pop());
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                       }
                                    }
                                    §§goto(addr136);
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                              }
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr87);
               }
               §§goto(addr49);
            }
            §§goto(addr87);
         }
         §§goto(addr88);
      }
      
      public function §08§() : b2EdgeShape
      {
         return this.§<!0§;
      }
      
      public function §4!`§() : b2EdgeShape
      {
         return this.§@7§;
      }
      
      public function §"l§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc9_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(_loc9_ || param3)
            {
               §§push(this.m_coreV1.x);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     addr53:
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        addr62:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr62);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(!(_loc10_ && param2))
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc9_ || param2)
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc9_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc10_ && param3))
                           {
                              addr116:
                              §§push(_loc4_.col2.y);
                              if(_loc9_)
                              {
                                 addr111:
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc9_ || this)
                              {
                                 addr125:
                                 var _loc6_:Number = §§pop();
                                 §§push(param1.position.x);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(_loc4_.col1.x);
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(this.m_coreV2.x);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc10_ && param3))
                                          {
                                             addr159:
                                             §§push(_loc4_.col2.x);
                                             if(_loc9_)
                                             {
                                                addr164:
                                                §§push(§§pop() * this.m_coreV2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc9_)
                                          {
                                             addr183:
                                             var _loc7_:Number = §§pop();
                                             §§push(param1.position.y);
                                             if(!(_loc10_ && param2))
                                             {
                                                §§push(_loc4_.col1.y);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(this.m_coreV2.x);
                                                   if(_loc9_)
                                                   {
                                                      addr227:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc4_.col2.y);
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            §§push(§§pop() * this.m_coreV2.y);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr230:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push(param2);
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  addr312:
                                                                  §§push(_loc6_);
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     addr320:
                                                                     §§push(param3);
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           addr347:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(_loc7_);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr350:
                                                                              §§push(param2);
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 addr367:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr364:
                                                                                       §§push(§§pop() * param3);
                                                                                    }
                                                                                 }
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    §§push(this.§2m§);
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          loop1:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(this.§2m§);
                                                                                                      loop3:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  addr372:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§2m§);
                                                                                                                     addr286:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        addr287:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr235:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§2m§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  break loop3;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr370:
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                         §§goto(addr242);
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr242:
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr235);
                                                                                                         }
                                                                                                         addr292:
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                }
                                                                                                addr280:
                                                                                             }
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr368);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr364);
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr125);
               }
               §§goto(addr62);
            }
            §§goto(addr53);
         }
         §§goto(addr66);
      }
      
      b2internal function §=C§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§@7§ = param1;
            loop0:
            while(true)
            {
               this.m_coreV1 = param2;
               while(true)
               {
                  this.m_cornerDir1 = param3;
                  while(_loc5_ || param1)
                  {
                     continue loop0;
                     this.m_cornerConvex1 = param4;
                     if(_loc5_ || this)
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      b2internal function §#e§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§<!0§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               loop1:
               while(_loc5_ || param1)
               {
                  while(true)
                  {
                     this.m_cornerDir2 = param3;
                     while(!_loc6_)
                     {
                        this.m_cornerConvex2 = param4;
                        if(_loc5_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
