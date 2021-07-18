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
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §?D§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §6z§:Number;
      
      b2internal var §@!Q§:b2Vec2;
      
      b2internal var §94§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §@h§:b2EdgeShape;
      
      b2internal var §&X§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§?D§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§@!Q§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§94§ = new b2Vec2();
                              loop6:
                              while(true)
                              {
                                 this.m_cornerDir1 = new b2Vec2();
                                 loop7:
                                 while(true)
                                 {
                                    this.m_cornerDir2 = new b2Vec2();
                                    loop8:
                                    while(true)
                                    {
                                       super();
                                       loop9:
                                       for(; !_loc3_; if(_loc4_ || param1)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(this.§@!Q§);
                                             §§push(this.§94§.y);
                                             §§push(this.§94§.x);
                                             if(!_loc3_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             do
                                             {
                                                §§push(this.m_coreV1);
                                                §§push(b2Settings.b2_toiSlop);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.§@!Q§.x);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§94§.x);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(this.m_v1.x);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr269:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(b2Settings.b2_toiSlop);
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(this.§@!Q§.y);
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              addr296:
                                                                              §§push(§§pop() - this.§94§.y);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr309:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr305:
                                                                                    §§push(this.m_v1.y);
                                                                                 }
                                                                                 §§pop().Set(§§pop(),§§pop());
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(this.m_coreV2);
                                                                                       §§push(b2Settings.b2_toiSlop);
                                                                                       if(!(_loc3_ && param2))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(this.§@!Q§.x);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                §§push(this.§94§.x);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      addr144:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(this.m_v2.x);
                                                                                                         if(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            addr158:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            §§push(b2Settings.b2_toiSlop);
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr170:
                                                                                                                  §§push(this.§@!Q§.y);
                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.§94§.y);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr186:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc4_ || param1)
                                                                                                                        {
                                                                                                                           addr194:
                                                                                                                           §§push(this.m_v2.y);
                                                                                                                        }
                                                                                                                        §§pop().Set(§§pop(),§§pop());
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr186);
                                                                                                            }
                                                                                                            §§goto(addr194);
                                                                                                         }
                                                                                                         §§goto(addr170);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr158);
                                                                                                }
                                                                                                §§goto(addr186);
                                                                                             }
                                                                                             §§goto(addr144);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr158);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                addr402:
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                   §§push(this.§94§);
                                                                                                   §§push(this.m_v2.x);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(this.m_v1.x);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr373:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         §§push(this.m_v2.y);
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            addr383:
                                                                                                            §§push(§§pop() - this.m_v1.y);
                                                                                                         }
                                                                                                         §§pop().Set(§§pop(),§§pop());
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§goto(addr383);
                                                                                                   }
                                                                                                   §§goto(addr373);
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr342);
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                       addr340:
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr309);
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                }
                                                §§goto(addr269);
                                             }
                                             while(_loc3_ && _loc3_);
                                             
                                             return;
                                          }
                                          continue loop3;
                                       })
                                       {
                                          §3c§ = b2internal::"?;
                                          while(true)
                                          {
                                             this.§&X§ = null;
                                             addr428:
                                             while(_loc4_)
                                             {
                                                this.§@h§ = null;
                                                while(_loc4_)
                                                {
                                                   continue loop0;
                                                   if(_loc4_ || param2)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop2;
                                                if(_loc4_ || param1)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           if(!(_loc4_ || param1))
                           {
                              continue;
                           }
                           this.§6z§ = this.§94§.Normalize();
                           §§goto(addr340);
                        }
                     }
                  }
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr409);
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
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         §§push(param2.p2.x);
         if(_loc18_ || param3)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc19_ && param1))
         {
            §§push(§§pop() - param2.p1.y);
            if(!(_loc19_ && param2))
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
            if(!(_loc19_ && param3))
            {
               §§push(this.m_v1.x);
               if(!(_loc19_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc18_ || param3)
                  {
                     addr117:
                     §§push(_loc4_.col2.x);
                     if(!(_loc19_ && param3))
                     {
                        addr131:
                        §§push(§§pop() + §§pop() * this.m_v1.y);
                     }
                     §§goto(addr131);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc19_)
                  {
                     addr135:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc18_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc18_ || param3)
                     {
                        §§push(this.m_v1.x);
                        if(!(_loc19_ && this))
                        {
                           addr180:
                           §§push(§§pop() * §§pop());
                           if(!_loc19_)
                           {
                              §§push(_loc4_.col2.y);
                              if(_loc18_ || param2)
                              {
                                 §§push(§§pop() * this.m_v1.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc18_)
                           {
                              addr184:
                              var _loc8_:Number = §§pop();
                              §§push(param3.position.y);
                              if(!_loc19_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(_loc18_ || param3)
                                 {
                                    §§push(this.m_v2.x);
                                    if(_loc18_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc19_)
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(_loc18_ || param3)
                                          {
                                             addr223:
                                             §§push(§§pop() * this.m_v2.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_ && param1)
                                          {
                                          }
                                          addr239:
                                          §§push(§§pop() - §§pop());
                                          if(!_loc19_)
                                          {
                                             addr243:
                                             var _loc9_:Number = §§pop();
                                             §§push(param3.position.x);
                                             if(!_loc19_)
                                             {
                                                §§push(_loc4_.col1.x);
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(this.m_v2.x);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         addr267:
                                                         §§push(_loc4_.col2.x);
                                                         if(_loc18_ || param2)
                                                         {
                                                            addr281:
                                                            §§push(§§pop() + §§pop() * this.m_v2.y);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               addr309:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  §§push(_loc7_);
                                                               }
                                                               var _loc10_:Number = §§pop();
                                                               §§push(100 * Number.MIN_VALUE);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc5_);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              addr345:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    addr357:
                                                                                    §§push(Number(§§pop()));
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       §§push(param2.p1);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc18_ || param3)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         addr809:
                                                                                                         §§push(param2.p1.y);
                                                                                                         loop50:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr812:
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_ = §§pop();
                                                                                                                     addr814:
                                                                                                                     loop51:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        loop38:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 addr791:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    addr792:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr790:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                    loop17:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       addr771:
                                                                                                                                       loop56:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          loop24:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             loop25:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                loop26:
                                                                                                                                                while(!§§pop())
                                                                                                                                                {
                                                                                                                                                   loop2:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            loop4:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr730:
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop15;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     addr730:
                                                                                                                                                                  }
                                                                                                                                                                  loop5:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     loop23:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        loop18:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop19:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 loop20:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr758:
                                                                                                                                                                                       loop6:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                             loop7:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                loop8:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                   loop9:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                      loop10:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_ && param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop23;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop11:
                                                                                                                                                                                                            for(; !_loc19_; loop36:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        loop37:
                                                                                                                                                                                                                        for(; _loc18_; §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_))),if(!(_loc18_ || param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        },if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop36;
                                                                                                                                                                                                                        },if(_loc18_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(param1.normal);
                                                                                                                                                                                                                              loop45:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                 addr510:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                                                                    addr511:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       addr512:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                          addr513:
                                                                                                                                                                                                                                          while(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr690);
                                                                                                                                                                                                                        },§§goto(addr619))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop4;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              param1.fraction = _loc15_;
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr618);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                            })
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               loop55:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                  loop41:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc19_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop26;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop42:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(_loc19_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc19_ && param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc18_ || param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(1 + _loc11_);
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc18_ || param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop42;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr730);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                              addr690:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                           addr614:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop41;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr682:
                                                                                                                                                                                                                        addr613:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              addr619:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_ && param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr618:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr418);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr417:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr627);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param2.§79§);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                               if(_loc19_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc18_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                  continue loop2;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr730);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr693:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr790);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr791);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr792);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr758);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr417);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr775:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      break loop24;
                                                                                                                                                   }
                                                                                                                                                   continue loop51;
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
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr693);
                                                                                                         §§goto(addr775);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr757);
                                                                                                }
                                                                                                §§goto(addr812);
                                                                                             }
                                                                                             §§goto(addr613);
                                                                                          }
                                                                                          §§goto(addr642);
                                                                                       }
                                                                                       §§goto(addr809);
                                                                                    }
                                                                                    §§goto(addr814);
                                                                                 }
                                                                                 addr418:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr431:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(_loc18_ || param3)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                break loop26;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr682);
                                                                                       }
                                                                                       §§goto(addr614);
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr672);
                                                                           }
                                                                           §§goto(addr771);
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§goto(addr309);
                                                               }
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr309);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc18_)
                                       {
                                          §§goto(addr239);
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr184);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr184);
               }
               §§goto(addr131);
            }
            §§goto(addr117);
         }
         §§goto(addr135);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!_loc8_)
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
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(param2.position);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               loop17:
                                                               while(_loc9_ || _loc3_)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(!(_loc9_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        loop20:
                                                                        while(_loc9_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(!_loc8_)
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              loop22:
                                                                              while(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§push(this.m_v1);
                                                                                    if(!(_loc9_ || param1))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    addr504:
                                                                                 }
                                                                                 loop24:
                                                                                 while(_loc9_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr514:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr515:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             addr516:
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                §§push(param2.position);
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                       }
                                                                                       addr309:
                                                                                       if(!(_loc9_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(this.m_v2);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(_loc8_ && _loc3_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§goto(addr333);
                                                                                                §§push(§§pop() * §§pop());
                                                                                                continue loop20;
                                                                                             }
                                                                                             loop32:
                                                                                             while(_loc9_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop33:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.col2);
                                                                                                   while(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.m_v2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop39:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop40:
                                                                                                                     while(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           addr452:
                                                                                                                           loop42:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param2.position);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop().y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.col1);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ && param1)
                                                                                                                                          {
                                                                                                                                             addr379:
                                                                                                                                             break;
                                                                                                                                             addr379:
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr309);
                                                                                                                                          }
                                                                                                                                          while(!_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             while(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                continue loop41;
                                                                                                                                             }
                                                                                                                                             §§goto(addr514);
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    addr423:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       §§push(this.m_v2);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr428);
                                                                                                                                 }
                                                                                                                                 §§goto(addr515);
                                                                                                                                 addr238:
                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          loop52:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ && param1)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§ 1§);
                                                                                                                                                      addr267:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         addr268:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr269:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§,e§);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr265:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§ 1§);
                                                                                                                                                   loop53:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      addr226:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         loop55:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§,e§);
                                                                                                                                                            loop56:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  loop57:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        loop58:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr112:
                                                                                                                                                                              }
                                                                                                                                                                              loop59:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc8_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr238);
                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                    addr236:
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr382);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop40;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop55;
                                                                                                                                                                           addr87:
                                                                                                                                                                           loop60:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§,e§);
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(_loc9_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr32:
                                                                                                                                                                                                return;
                                                                                                                                                                                                addr66:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr169:
                                                                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr178:
                                                                                                                                                                                                   if(_loc8_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(!_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                         §§goto(addr178);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                      addr393:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(param1.§ 1§);
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop53;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr192:
                                                                                                                                                                                                      §§pop().y = _loc5_;
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc8_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1.§,e§);
                                                                                                                                                                                                            break loop60;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr193:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr267);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr233);
                                                                                                                                                                                                   §§goto(addr236);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr265);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr269);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr32);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr193);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop56;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr103);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr101:
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop58;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop56;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr101);
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr516);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           §§goto(addr233);
                                                                                                                                                                        }
                                                                                                                                                                        addr232:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr112);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr231:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr232);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr231);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr379);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop39;
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop7;
                                                                              if(_loc8_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc9_ || param1))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 §§goto(addr169);
                                                                              }
                                                                              §§push(param1.§ 1§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          §§goto(addr87);
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                              §§goto(addr187);
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop4;
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
               if(!(_loc9_ || this))
               {
                  continue;
               }
               §§push(§§pop().x);
               if(!(_loc8_ && _loc3_))
               {
                  §§goto(addr423);
                  §§push(_loc3_.col1);
               }
               §§goto(addr451);
            }
         }
         §§goto(addr66);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            param1.§@!V§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            param1.§9o§ = 0;
            if(!(_loc4_ && this))
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc11_)
         {
            §§push(param2);
            if(_loc11_)
            {
               addr26:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc11_)
               {
                  addr30:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§&B§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§&B§(param3,this.m_v2);
               §§push(b2Math.§9-§(param1,_loc6_));
               if(_loc11_ || this)
               {
                  §§push(§§pop() - param2);
                  if(!(_loc10_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§9-§(param1,_loc7_));
               if(!(_loc10_ && param1))
               {
                  §§push(§§pop() - param2);
                  if(!(_loc10_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               if(_loc11_)
               {
                  §§push(_loc8_);
                  if(_loc11_)
                  {
                     §§push(0);
                     loop0:
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(_loc9_);
                           loop1:
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 §§push(0);
                                 if(!(_loc10_ && this))
                                 {
                                    if(!_loc11_)
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                §§push(_loc9_);
                                                if(!(_loc10_ && param2))
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc11_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  addr456:
                                                                  §§push(_loc6_.x);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr460:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc11_ || param3)
                                                                        {
                                                                           addr471:
                                                                           §§push(_loc8_);
                                                                           if(!(_loc10_ && param3))
                                                                           {
                                                                              addr479:
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr494:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                 }
                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!(_loc10_ && param3))
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc11_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc11_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc11_ || this)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         addr364:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr367:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr370:
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc11_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc9_);
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc11_ || param3)
                                                                                                                     {
                                                                                                                        addr397:
                                                                                                                        §§push(§§pop() * _loc7_.y);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr397);
                                                                                                            }
                                                                                                         }
                                                                                                         addr399:
                                                                                                         §§pop().y = §§pop();
                                                                                                         while(!(_loc11_ || this))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                            §§goto(addr399);
                                                                                                         }
                                                                                                         addr407:
                                                                                                         loop5:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param4);
                                                                                                            §§push(_loc5_.x);
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc6_.x);
                                                                                                               if(_loc11_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     addr270:
                                                                                                                     §§push(§§pop() + _loc7_.x);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr273:
                                                                                                                        §§push(§§pop() / 3);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     §§goto(addr400);
                                                                                                                     addr231:
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(!(_loc10_ && param3))
                                                                                                                     {
                                                                                                                        §§push(0.5);
                                                                                                                        if(_loc10_ && param2)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr578:
                                                                                                                        if(!param1)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        loop4:
                                                                                                                        for(; _loc10_; §§pop().x = §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(!(_loc10_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc11_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr615:
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                if(_loc11_ || this)
                                                                                                                                                {
                                                                                                                                                   addr624:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   addr627:
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr630:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr633:
                                                                                                                                                         §§push(§§pop() - _loc9_);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(!(_loc10_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr647:
                                                                                                                                                               §§push(§§pop() * _loc7_.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr647);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr647);
                                                                                                                                             }
                                                                                                                                             §§goto(addr627);
                                                                                                                                          }
                                                                                                                                          §§goto(addr630);
                                                                                                                                       }
                                                                                                                                       §§goto(addr633);
                                                                                                                                    }
                                                                                                                                    §§goto(addr624);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr615);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(_loc6_);
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                       {
                                                                                                                                          addr522:
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr571:
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr542:
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                          {
                                                                                                                                             addr550:
                                                                                                                                             §§push(§§pop() - _loc9_);
                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                             {
                                                                                                                                                addr570:
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(!(_loc10_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr569:
                                                                                                                                                   §§push(§§pop() * _loc7_.y);
                                                                                                                                                }
                                                                                                                                                §§goto(addr571);
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr569);
                                                                                                                                       }
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(_loc11_ || param3)
                                                                                                                                       {
                                                                                                                                          §§goto(addr542);
                                                                                                                                       }
                                                                                                                                       §§goto(addr570);
                                                                                                                                    }
                                                                                                                                    §§goto(addr542);
                                                                                                                                 }
                                                                                                                                 §§goto(addr550);
                                                                                                                              }
                                                                                                                              §§goto(addr542);
                                                                                                                           }
                                                                                                                           §§goto(addr522);
                                                                                                                        }
                                                                                                                        §§goto(addr571);
                                                                                                                     }
                                                                                                                     §§goto(addr578);
                                                                                                                  }
                                                                                                                  addr572:
                                                                                                               }
                                                                                                               §§goto(addr270);
                                                                                                            }
                                                                                                            §§goto(addr273);
                                                                                                         }
                                                                                                         addr400:
                                                                                                         addr240:
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§goto(addr367);
                                                                                                }
                                                                                                §§goto(addr370);
                                                                                             }
                                                                                             §§goto(addr397);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr364);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                              }
                                                                              §§goto(addr494);
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr494);
                                                                     }
                                                                  }
                                                                  §§goto(addr471);
                                                               }
                                                               §§goto(addr494);
                                                            }
                                                            §§goto(addr460);
                                                         }
                                                         §§goto(addr479);
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                }
                                                §§goto(addr456);
                                             }
                                             addr427:
                                          }
                                          else
                                          {
                                             §§goto(addr572);
                                          }
                                          §§goto(addr578);
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr670);
                              }
                              §§goto(addr669);
                           }
                           return §§pop();
                        }
                        §§goto(addr668);
                     }
                  }
                  §§goto(addr669);
               }
               §§goto(addr427);
            }
            §§goto(addr30);
         }
         §§goto(addr26);
      }
      
      public function §;!E§() : Number
      {
         return this.§6z§;
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
      
      public function §]!I§() : b2Vec2
      {
         return this.§@!Q§;
      }
      
      public function §7!;§() : b2Vec2
      {
         return this.§94§;
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
      
      public function §9!0§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_.col1.x);
            if(_loc3_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     addr54:
                     §§push(_loc2_.col2.x);
                     if(!_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop().y);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    addr93:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(!_loc4_)
                                    {
                                       addr98:
                                       §§push(_loc2_.col1.y);
                                       if(!_loc4_)
                                       {
                                          addr105:
                                          §§push(this.m_coreV1.x);
                                          if(!(_loc4_ && this))
                                          {
                                             addr113:
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_ || _loc3_)
                                             {
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr98);
               }
               addr141:
               §§push(_loc2_.col2.y);
               if(!_loc4_)
               {
                  addr136:
                  §§push(§§pop() * this.m_coreV1.y);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop() + (§§pop() + §§pop()));
            }
            §§goto(addr54);
         }
         §§goto(addr93);
      }
      
      public function §=[§() : b2EdgeShape
      {
         return this.§@h§;
      }
      
      public function §1o§() : b2EdgeShape
      {
         return this.§&X§;
      }
      
      public function §&F§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!_loc10_)
         {
            §§push(_loc4_.col1.x);
            if(_loc9_ || this)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc10_ && param2))
               {
                  addr58:
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     addr61:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc9_ || param1)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc10_)
                     {
                        §§push(this.m_coreV1.x);
                        if(!(_loc10_ && param3))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              addr91:
                              §§push(_loc4_.col2.y);
                              if(!_loc10_)
                              {
                                 addr96:
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc9_ || this)
                           {
                              addr109:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param1.position.x);
                           if(_loc9_ || param2)
                           {
                              §§push(_loc4_.col1.x);
                              if(_loc9_ || this)
                              {
                                 §§push(this.m_coreV2.x);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       addr144:
                                       §§push(_loc4_.col2.x);
                                       if(_loc9_ || this)
                                       {
                                          addr154:
                                          §§push(§§pop() * this.m_coreV2.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc10_ && param2))
                                    {
                                       addr167:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(param1.position.y);
                                    if(_loc9_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!_loc10_)
                                       {
                                          §§push(this.m_coreV2.x);
                                          if(_loc9_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc10_ && param2))
                                             {
                                                addr207:
                                                §§push(_loc4_.col2.y);
                                                if(_loc9_)
                                                {
                                                   addr212:
                                                   §§push(§§pop() * this.m_coreV2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_ || param3)
                                             {
                                                addr225:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!(_loc10_ && param2))
                                             {
                                                §§push(_loc5_);
                                                if(!(_loc10_ && param2))
                                                {
                                                   §§push(param2);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_ || param2)
                                                      {
                                                         addr317:
                                                         §§push(_loc6_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(param3);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc9_ || this)
                                                               {
                                                                  addr332:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc7_);
                                                                  if(_loc10_ && param2)
                                                                  {
                                                                  }
                                                                  addr356:
                                                                  §§push(_loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr369:
                                                                     §§push(§§pop() * param3);
                                                                  }
                                                                  if(§§pop() <= §§pop() + §§pop())
                                                                  {
                                                                     §§push(this.§?D§);
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(this.§?D§);
                                                                                    do
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      loop4:
                                                                                                      for(; !(_loc9_ || this); §§pop().y = §§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§?D§);
                                                                                                            addr281:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               addr282:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          addr375:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    while(§§push(this.§?D§), _loc10_);
                                                                                    
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr373:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr375);
                                                                              }
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§push(param2);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc10_ && param3)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                   }
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr377);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr109);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr58);
         }
         §§goto(addr61);
      }
      
      b2internal function §,=§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§&X§ = param1;
            loop0:
            while(true)
            {
               this.m_coreV1 = param2;
               while(true)
               {
                  this.m_cornerDir1 = param3;
                  loop2:
                  while(_loc6_ || param3)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.m_cornerConvex1 = param4;
                        if(_loc6_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      b2internal function §'!L§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§@h§ = param1;
         }
         while(true)
         {
            this.m_coreV2 = param2;
            while(_loc6_ || param2)
            {
               this.m_cornerDir2 = param3;
               do
               {
                  this.m_cornerConvex2 = param4;
               }
               while(!_loc6_);
               
               if(!_loc5_)
               {
                  return;
               }
            }
         }
      }
   }
}
