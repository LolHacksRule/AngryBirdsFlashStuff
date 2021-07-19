package §"!9§
{
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.b2AABB;
   import §5!o§.b2RayCastInput;
   import §5!o§.b2RayCastOutput;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §`,§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var § [§:Number;
      
      b2internal var §]!?§:b2Vec2;
      
      b2internal var §3q§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §5%§:b2EdgeShape;
      
      b2internal var §?2§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§`,§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  loop2:
                  for(; !_loc4_; while(!(_loc4_ && this))
                  {
                     this.m_v1 = param1;
                     §§goto(addr398);
                     §§goto(addr316);
                  })
                  {
                     this.m_coreV1 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§]!?§ = new b2Vec2();
                           while(true)
                           {
                              this.§3q§ = new b2Vec2();
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
                                       while(true)
                                       {
                                          §="1§ = b2internal::;!O;
                                          addr398:
                                          while(!(_loc4_ && this))
                                          {
                                             continue loop4;
                                             while(!(_loc4_ && param1))
                                             {
                                                §§push(this.m_cornerDir2);
                                                §§push(this.§]!?§.x);
                                                if(!_loc4_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§push(this.§]!?§.y);
                                                if(!_loc4_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                   continue loop8;
                                                   addr166:
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§ [§ = this.§3q§.Normalize();
                                                      loop16:
                                                      while(_loc3_)
                                                      {
                                                         §§push(this.§]!?§);
                                                         §§push(this.§3q§.y);
                                                         §§push(this.§3q§.x);
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            addr309:
                                                            if(_loc4_ && param1)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  addr434:
                                                                  while(true)
                                                                  {
                                                                     this.§?2§ = null;
                                                                     addr429:
                                                                     while(true)
                                                                     {
                                                                        this.§5%§ = null;
                                                                        break loop17;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                               }
                                                               continue loop7;
                                                               addr372:
                                                            }
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.m_coreV1);
                                                            §§push(b2Settings.b2_toiSlop);
                                                            if(_loc3_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(this.§]!?§.x);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§3q§.x);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr212:
                                                                              §§push(this.m_v1.x);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr223:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(b2Settings.b2_toiSlop);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr230:
                                                                                       §§push(this.§]!?§.y);
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() - this.§3q§.y);
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             addr268:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr264:
                                                                                                §§push(this.m_v1.y);
                                                                                             }
                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr367:
                                                }
                                                §§goto(addr429);
                                                §§goto(addr269);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(this.m_coreV2);
                                 §§push(b2Settings.b2_toiSlop);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§push(-§§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(this.§]!?§.x);
                                       if(!_loc4_)
                                       {
                                          §§push(this.§3q§.x);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr111:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr119:
                                                   §§push(this.m_v2.x);
                                                   if(!_loc4_)
                                                   {
                                                      addr125:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(b2Settings.b2_toiSlop);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr137:
                                                            §§push(this.§]!?§.y);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr147:
                                                               §§push(§§pop() + this.§3q§.y);
                                                               if(_loc3_)
                                                               {
                                                                  addr165:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr161:
                                                                     §§push(this.m_v2.y);
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  §§goto(addr166);
                                                               }
                                                               §§goto(addr165);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr137);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr119);
                              }
                              if(!(_loc3_ || param1))
                              {
                                 continue;
                              }
                              §§push(this.§3q§);
                              §§push(this.m_v2.x);
                              if(!(_loc4_ && param2))
                              {
                                 §§push(this.m_v1.x);
                                 if(!_loc4_)
                                 {
                                    addr352:
                                    §§push(§§pop() - §§pop());
                                    §§push(this.m_v2.y);
                                    if(!(_loc4_ && param2))
                                    {
                                       addr362:
                                       §§push(§§pop() - this.m_v1.y);
                                    }
                                    §§pop().Set(§§pop(),§§pop());
                                    §§goto(addr367);
                                 }
                                 §§goto(addr362);
                              }
                              §§goto(addr352);
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr434);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         §§push(param2.p2.x);
         if(_loc19_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc19_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc18_ && param3))
         {
            §§push(§§pop() - param2.p1.y);
            if(!_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         _loc4_ = param3.R;
         §§push(param3.position.x);
         if(_loc19_ || param2)
         {
            §§push(_loc4_.col1.x);
            if(_loc19_)
            {
               §§push(this.m_v1.x);
               if(!_loc18_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc19_)
                  {
                     addr103:
                     §§push(_loc4_.col2.x);
                     if(_loc19_)
                     {
                        addr98:
                        §§push(§§pop() * this.m_v1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc18_)
                     {
                        addr107:
                        var _loc7_:Number = §§pop();
                        §§push(param3.position.y);
                        if(_loc19_)
                        {
                           §§push(_loc4_.col1.y);
                           if(!(_loc18_ && param3))
                           {
                              §§push(this.m_v1.x);
                              if(!_loc18_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc18_ && this))
                                 {
                                    addr136:
                                    §§push(_loc4_.col2.y);
                                    if(_loc19_ || param3)
                                    {
                                       addr146:
                                       §§push(§§pop() * this.m_v1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc18_)
                                 {
                                    addr154:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(param3.position.y);
                                 if(!_loc18_)
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(!_loc18_)
                                    {
                                       §§push(this.m_v2.x);
                                       if(_loc19_ || this)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc18_)
                                          {
                                             §§push(_loc4_.col2.y);
                                             if(_loc19_ || this)
                                             {
                                                addr189:
                                                §§push(§§pop() * this.m_v2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc19_ || param2)
                                             {
                                             }
                                             addr210:
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc18_ && param1))
                                             {
                                                addr219:
                                                var _loc9_:Number = §§pop();
                                                §§push(param3.position.x);
                                                if(!_loc18_)
                                                {
                                                   §§push(_loc4_.col1.x);
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_)
                                                         {
                                                            addr243:
                                                            §§push(_loc4_.col2.x);
                                                            if(!_loc18_)
                                                            {
                                                               addr248:
                                                               §§push(§§pop() * this.m_v2.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc18_ && param2))
                                                               {
                                                                  addr269:
                                                                  §§push(§§pop() - _loc7_);
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc18_ && param3)
                                                                     {
                                                                     }
                                                                     addr286:
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(100 * Number.MIN_VALUE);
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc5_);
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(§§pop() * _loc10_);
                                                                                 if(_loc19_ || param2)
                                                                                 {
                                                                                    addr336:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr344:
                                                                                       §§push(-§§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr342:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc12_:*;
                                                                                       §§push(_loc12_ = §§pop());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(param2.p1);
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  addr389:
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr815:
                                                                                                                     §§push(param2.p1.y);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr819:
                                                                                                                              loop62:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       loop12:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop13:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop11:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr789:
                                                                                                                                                                        while(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           break loop11;
                                                                                                                                                                        }
                                                                                                                                                                        loop59:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr791:
                                                                                                                                                                           loop41:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              addr700:
                                                                                                                                                                              addr707:
                                                                                                                                                                              while(_loc18_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop62;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2.§8"!§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                                                                             break loop11;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                          addr536:
                                                                                                                                                                                          if(_loc18_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(1 + _loc11_);
                                                                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc18_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc19_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop56:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr591:
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr610:
                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                              loop48:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop56;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                                                                         param1.fraction = _loc15_;
                                                                                                                                                                                                                                                         §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr496:
                                                                                                                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                                                                                                                               if(!(_loc19_ || this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.normal);
                                                                                                                                                                                                                                                                  loop51:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     addr479:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        addr480:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           addr481:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              continue loop51;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  addr729:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr737);
                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr729);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr758);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr656);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                          if(_loc18_ && param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr536);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr687);
                                                                                                                                                                                                                                          §§goto(addr496);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr629:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr755);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr648);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr679);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr629);
                                                                                                                                                                                                                  §§goto(addr591);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr394);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr393:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr393);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr728);
                                                                                                                                                                                                         addr727:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr690);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr742);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr611);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr752);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr752);
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
                                                                                                                                                            §§goto(addr727);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr728);
                                                                                                               }
                                                                                                               §§goto(addr686);
                                                                                                            }
                                                                                                            §§goto(addr707);
                                                                                                         }
                                                                                                         §§goto(addr749);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   §§goto(addr815);
                                                                                                }
                                                                                                §§goto(addr791);
                                                                                             }
                                                                                             addr394:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                                continue loop6;
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr689);
                                                                                       }
                                                                                       §§goto(addr819);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                               }
                                                               §§goto(addr286);
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc18_ && param2))
                                          {
                                             §§goto(addr210);
                                             §§push(_loc8_);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr103);
               }
               §§goto(addr98);
            }
            §§goto(addr103);
         }
         §§goto(addr107);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!_loc8_)
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(_loc3_.col1);
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr538:
                     while(true)
                     {
                        §§push(this.m_v1);
                        addr540:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr546:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr557:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       addr559:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr560:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                 }
                              }
                              addr544:
                           }
                           addr561:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr562:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                           }
                        }
                     }
                     addr420:
                     if(!(_loc9_ || param2))
                     {
                        continue;
                     }
                     §§push(§§pop().x);
                     loop30:
                     while(true)
                     {
                        §§push(this.m_v2);
                        loop31:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop32:
                           while(true)
                           {
                              if(_loc9_ || param2)
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop33:
                                    for(; _loc9_ || param2; if(_loc8_ && _loc3_)
                                    {
                                       continue;
                                    },if(_loc9_ || param2)
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(_loc3_.col2);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop().y);
                                             if(!(_loc8_ && param2))
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§push(this.m_v2);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!_loc8_)
                                                         {
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr475);
                                                      }
                                                      §§goto(addr474);
                                                   }
                                                   §§goto(addr465);
                                                }
                                                §§goto(addr476);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr455);
                                       }
                                       §§goto(addr544);
                                    },§§goto(addr495))
                                    {
                                       §§push(_loc3_.col2);
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(§§pop().x);
                                                while(!(_loc8_ && _loc3_))
                                                {
                                                   §§push(this.m_v2);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      addr475:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr476:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop39:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop40:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop41:
                                                                  while(_loc9_ || _loc3_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     loop42:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2.position);
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           addr259:
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    addr278:
                                                                                    §§push(_loc3_.col1);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc8_ && param1)
                                                                                             {
                                                                                                continue loop32;
                                                                                             }
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   continue loop39;
                                                                                                }
                                                                                                loop44:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   if(!(_loc8_ && this))
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop45:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop46:
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               loop47:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  loop48:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        continue loop44;
                                                                                                                     }
                                                                                                                     addr492:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.col1);
                                                                                                                        addr494:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           addr495:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.m_v1);
                                                                                                                              if(!(_loc9_ || param2))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop().x);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 break loop33;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr107:
                                                                                                                     loop56:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!(_loc9_ || param2))
                                                                                                                        {
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr120:
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc8_ && param2)
                                                                                                                           {
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop42;
                                                                                                                                 }
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr137:
                                                                                                                                    §§push(param1.§8! §);
                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                    {
                                                                                                                                       addr145:
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc8_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       addr153:
                                                                                                                                       loop61:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§;R§);
                                                                                                                                          addr98:
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             addr100:
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             while(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr32);
                                                                                                                                                   }
                                                                                                                                                   continue loop61;
                                                                                                                                                }
                                                                                                                                                §§goto(addr100);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   continue loop42;
                                                                                                                                                }
                                                                                                                                                addr209:
                                                                                                                                                addr209:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr208:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr209);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr153:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          break loop56;
                                                                                                                                          §§goto(addr137);
                                                                                                                                       }
                                                                                                                                       addr179:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param2.position);
                                                                                                                                    break loop42;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr153);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(param1.§8! §);
                                                                                                                              if(_loc9_ || this)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(param1.§;R§);
                                                                                                                                                if(!(_loc8_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr104);
                                                                                                                                                            }
                                                                                                                                                            addr32:
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr101);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr157:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr158);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr181:
                                                                                                                                             addr524:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr157);
                                                                                                                                                      §§push(param1.§;R§);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr244:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§8! §);
                                                                                                                                                         addr246:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            addr247:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr244:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr209);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr208);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param2.position);
                                                                                                                                                addr396:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(_loc8_ && param1)
                                                                                                                                                   {
                                                                                                                                                      break loop48;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc8_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.col1);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr420);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr494);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr538);
                                                                                                                                                      addr413:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      break loop41;
                                                                                                                                                   }
                                                                                                                                                   continue loop42;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr209);
                                                                                                                                          }
                                                                                                                                          §§goto(addr98);
                                                                                                                                       }
                                                                                                                                       §§goto(addr247);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr145);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr246);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr137);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr137);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           §§goto(addr524);
                                                                                                                        }
                                                                                                                        addr217:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        §§goto(addr181);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop40;
                                                                                                         }
                                                                                                         addr388:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr538);
                                                                                                      }
                                                                                                      §§goto(addr540);
                                                                                                   }
                                                                                                   §§goto(addr562);
                                                                                                }
                                                                                                addr376:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.m_v1);
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr520:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr521:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr522:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr523);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr363:
                                                                                                      if(_loc8_ && param2)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr373:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr376);
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§goto(addr505);
                                                                                                      }
                                                                                                      §§goto(addr560);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr559);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                §§goto(addr244);
                                                                                             }
                                                                                             §§goto(addr179);
                                                                                             §§push(param1.§8! §);
                                                                                          }
                                                                                          §§goto(addr521);
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§goto(addr413);
                                                                                 }
                                                                                 §§goto(addr522);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr396);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr492);
                                                                        §§goto(addr259);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr565);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr561);
                                                addr465:
                                             }
                                             break;
                                          }
                                          addr508:
                                          while(true)
                                          {
                                             §§goto(addr509);
                                          }
                                       }
                                       §§goto(addr546);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr508);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr520);
                           }
                           §§goto(addr557);
                        }
                     }
                  }
               }
               §§goto(addr563);
            }
         }
         §§goto(addr244);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            param1.§5d§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            param1.I = 0;
            if(_loc3_ || param1)
            {
               if(!(_loc4_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc10_ || param1)
         {
            §§push(param2);
            if(_loc10_ || param3)
            {
               addr35:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc10_)
               {
                  addr39:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§>!C§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§>!C§(param3,this.m_v2);
               §§push(b2Math.§@!y§(param1,_loc6_));
               if(_loc10_ || param2)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param3)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§@!y§(param1,_loc7_));
               if(_loc10_)
               {
                  §§push(§§pop() - param2);
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               if(_loc10_ || param3)
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     §§push(0);
                     if(!(_loc11_ && param1))
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(_loc9_);
                           loop1:
                           while(_loc10_)
                           {
                              §§push(0);
                              if(!_loc11_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(!(_loc11_ && param3))
                                       {
                                          §§push(_loc7_);
                                          §§push(_loc9_);
                                          if(_loc10_)
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc11_ && this))
                                             {
                                                §§push(_loc8_);
                                                if(!(_loc11_ && param3))
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc11_)
                                                         {
                                                            addr418:
                                                            §§push(_loc6_.x);
                                                            if(_loc10_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc10_)
                                                               {
                                                               }
                                                               addr457:
                                                               §§pop().x = §§pop();
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§push(_loc9_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr278:
                                                                              §§push(_loc8_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             addr304:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc11_ && param1))
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc10_ || param3)
                                                                                                {
                                                                                                   addr320:
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc11_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                      if(_loc10_ || param2)
                                                                                                      {
                                                                                                      }
                                                                                                      addr354:
                                                                                                      §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                      addr352:
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         if(_loc10_ || param2)
                                                                                                         {
                                                                                                            addr366:
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               §§push(_loc5_.x);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc10_ || param3)
                                                                                                                     {
                                                                                                                        addr251:
                                                                                                                        §§push(§§pop() + _loc7_.x);
                                                                                                                        if(_loc11_ && param3)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr261:
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc11_ && this)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.y);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(!(_loc11_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    addr217:
                                                                                                                                    §§push(§§pop() + _loc7_.y);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() / 3);
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr217);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc10_ || param1)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              addr682:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr683);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr545:
                                                                                                                           §§pop().y = §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr685);
                                                                                                                        addr546:
                                                                                                                     }
                                                                                                                     §§goto(addr261);
                                                                                                                     §§push(§§pop() / 3);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr251);
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                            addr231:
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc10_ || param3)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc11_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(!(_loc11_ && param3))
                                                                                                                        {
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           if(_loc10_ || param2)
                                                                                                                           {
                                                                                                                              addr510:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc11_ && param2))
                                                                                                                              {
                                                                                                                                 addr518:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc10_ || param3)
                                                                                                                                 {
                                                                                                                                    addr526:
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr529:
                                                                                                                                       §§push(§§pop() - _loc9_);
                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             addr543:
                                                                                                                                             §§push(§§pop() * _loc7_.y);
                                                                                                                                          }
                                                                                                                                          §§goto(addr545);
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr543);
                                                                                                                              }
                                                                                                                              §§goto(addr545);
                                                                                                                           }
                                                                                                                           §§goto(addr526);
                                                                                                                        }
                                                                                                                        §§goto(addr518);
                                                                                                                     }
                                                                                                                     §§goto(addr510);
                                                                                                                  }
                                                                                                                  §§goto(addr529);
                                                                                                               }
                                                                                                               §§goto(addr510);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                      addr661:
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr350:
                                                                                                      §§goto(addr352);
                                                                                                      §§push(_loc7_.y);
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                                §§goto(addr350);
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     addr465:
                                                                  }
                                                                  §§goto(addr546);
                                                               }
                                                            }
                                                            addr428:
                                                            §§push(_loc8_);
                                                            if(!(_loc11_ && param3))
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  addr445:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     addr455:
                                                                     §§push(§§pop() * _loc7_.x);
                                                                  }
                                                                  §§goto(addr457);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr455);
                                                            }
                                                            §§goto(addr445);
                                                         }
                                                         §§push(_loc8_);
                                                         if(!_loc11_)
                                                         {
                                                            §§goto(addr428);
                                                         }
                                                         §§goto(addr455);
                                                      }
                                                      §§goto(addr428);
                                                   }
                                                   §§goto(addr445);
                                                }
                                                §§goto(addr428);
                                             }
                                             §§goto(addr457);
                                          }
                                          §§goto(addr418);
                                       }
                                       §§goto(addr661);
                                    }
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr684);
                           }
                           continue;
                        }
                        §§goto(addr682);
                     }
                     §§goto(addr684);
                  }
               }
               §§goto(addr465);
            }
            §§goto(addr39);
         }
         §§goto(addr35);
      }
      
      public function §]"3§() : Number
      {
         return this.§ [§;
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
      
      public function §"I§() : b2Vec2
      {
         return this.§]!?§;
      }
      
      public function §9i§() : b2Vec2
      {
         return this.§3q§;
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
      
      public function §;"4§(param1:b2Transform) : b2Vec2
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
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(!_loc4_)
                        {
                           §§push(§§pop().y);
                           if(!_loc4_)
                           {
                              addr100:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 addr74:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    addr82:
                                    addr83:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ && param1)
                                    {
                                    }
                                    §§goto(addr137);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(!_loc3_)
                                 {
                                 }
                                 addr111:
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr131:
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                                 addr137:
                                 return new §§pop().b2Vec2(§§pop(),§§pop());
                                 §§push(§§pop() + (§§pop() + §§pop()));
                              }
                              §§push(this.m_coreV1.x);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ && param1)
                                 {
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr82);
               }
               §§goto(addr74);
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      public function §+!D§() : b2EdgeShape
      {
         return this.§5%§;
      }
      
      public function §3!M§() : b2EdgeShape
      {
         return this.§?2§;
      }
      
      public function §!!B§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && param1))
         {
            §§push(_loc4_.col1.x);
            if(_loc9_ || param2)
            {
               §§push(this.m_coreV1.x);
               if(_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     addr58:
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        addr53:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc9_ || param1)
                     {
                        addr66:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param1.position.y);
                     if(_loc9_ || this)
                     {
                        §§push(_loc4_.col1.y);
                        if(!(_loc10_ && param2))
                        {
                           §§push(this.m_coreV1.x);
                           if(!(_loc10_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc10_ && param2))
                              {
                                 addr116:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc10_)
                                 {
                                    addr111:
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(!_loc10_)
                                 {
                                    addr119:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(param1.position.x);
                                 if(_loc9_)
                                 {
                                    §§push(_loc4_.col1.x);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(this.m_coreV2.x);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_ || this)
                                          {
                                             addr149:
                                             §§push(_loc4_.col2.x);
                                             if(!(_loc10_ && this))
                                             {
                                                addr159:
                                                §§push(§§pop() * this.m_coreV2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc9_ || this)
                                          {
                                             addr172:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(param1.position.y);
                                          if(_loc9_)
                                          {
                                             §§push(_loc4_.col1.y);
                                             if(_loc9_)
                                             {
                                                §§push(this.m_coreV2.x);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      addr207:
                                                      §§push(_loc4_.col2.y);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr217:
                                                         §§push(§§pop() * this.m_coreV2.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc9_ || param3)
                                                   {
                                                      addr230:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc9_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(param3);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        addr341:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           addr350:
                                                                           §§push(param2);
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                              }
                                                                              addr377:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 §§push(this.§`,§);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr297:
                                                                                          addr260:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                §§push(this.§`,§);
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr310:
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr240:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§`,§);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr245:
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr240:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr382:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§`,§);
                                                                                                   }
                                                                                                   addr382:
                                                                                                }
                                                                                                addr309:
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   continue loop5;
                                                                                                   addr308:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§push(_loc8_);
                                                                                          if(_loc10_ && param2)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc10_ && param2)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§`,§);
                                                                                                         addr380:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            addr381:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               §§goto(addr382);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr378:
                                                                                                   }
                                                                                                   §§goto(addr240);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           addr376:
                                                                           §§goto(addr377);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§push(_loc8_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr376);
                                                                           §§push(§§pop() * param3);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr382);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr58);
               }
               §§goto(addr53);
            }
            §§goto(addr58);
         }
         §§goto(addr66);
      }
      
      b2internal function §<x§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§?2§ = param1;
         }
         loop0:
         while(true)
         {
            this.m_coreV1 = param2;
            do
            {
               this.m_cornerDir1 = param3;
               continue loop0;
            }
            while(_loc6_);
            
            return;
         }
      }
      
      b2internal function §+!P§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5%§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  §§goto(addr64);
               }
            }
         }
         addr64:
         while(true)
         {
            this.m_cornerConvex2 = param4;
            if(!_loc5_)
            {
               if(!_loc5_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr49:
      }
   }
}
