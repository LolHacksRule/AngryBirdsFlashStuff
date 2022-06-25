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
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §;!o§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §^!q§:Number;
      
      b2internal var §6!P§:b2Vec2;
      
      b2internal var §5!D§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §1!#§:b2EdgeShape;
      
      b2internal var §#!T§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§;!o§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     while(!_loc4_)
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§6!P§ = new b2Vec2();
                           while(true)
                           {
                              this.§5!D§ = new b2Vec2();
                              addr411:
                              addr271:
                              while(true)
                              {
                                 this.m_cornerDir1 = new b2Vec2();
                                 continue loop4;
                              }
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              §§push(this.m_coreV2);
                              §§push(b2Settings.b2_toiSlop);
                              if(_loc3_ || param2)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.§6!P§.x);
                                    if(!_loc4_)
                                    {
                                       §§push(this.§5!D§.x);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_)
                                             {
                                                §§push(this.m_v2.x);
                                                if(_loc3_)
                                                {
                                                   addr122:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(b2Settings.b2_toiSlop);
                                                   if(_loc4_ && this)
                                                   {
                                                   }
                                                   addr162:
                                                   §§pop().Set(§§pop(),§§pop());
                                                   loop20:
                                                   while(!_loc4_)
                                                   {
                                                      this.m_cornerDir1 = this.§6!P§;
                                                      loop21:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop20;
                                                         }
                                                         addr63:
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  this.§^!q§ = this.§5!D§.Normalize();
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     §§push(this.§6!P§);
                                                                     §§push(this.§5!D§.y);
                                                                     §§push(this.§5!D§.x);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§pop().Set(§§pop(),§§pop());
                                                                     while(!_loc4_)
                                                                     {
                                                                        §§push(this.m_coreV1);
                                                                        §§push(b2Settings.b2_toiSlop);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              §§push(this.§6!P§.x);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§5!D§.x);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr219:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr227:
                                                                                          §§push(this.m_v1.x);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr233:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             §§push(b2Settings.b2_toiSlop);
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                             }
                                                                                             addr245:
                                                                                             §§push(this.§6!P§.y);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() - this.§5!D§.y);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr256:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc3_ || param2)
                                                                                                   {
                                                                                                      addr267:
                                                                                                      §§push(§§pop() + this.m_v1.y);
                                                                                                   }
                                                                                                   §§pop().Set(§§pop(),§§pop());
                                                                                                   break loop20;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 §§goto(addr256);
                                                                              }
                                                                              §§goto(addr219);
                                                                           }
                                                                        }
                                                                        §§goto(addr227);
                                                                        §§goto(addr63);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§#!T§ = null;
                                                                        addr373:
                                                                        while(!_loc4_)
                                                                        {
                                                                           this.§1!#§ = null;
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §3r§ = b2internal::=n;
                                                                     §§goto(addr380);
                                                                     §§goto(addr301);
                                                                  }
                                                                  addr301:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.m_v1 = param1;
                                                                  addr356:
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     this.m_v2 = param2;
                                                                     break loop21;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                            while(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  super();
                                                                  §§goto(addr384);
                                                               }
                                                            }
                                                            continue loop2;
                                                            addr338:
                                                            addr390:
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      while(!_loc4_)
                                                      {
                                                         §§push(this.§5!D§);
                                                         §§push(this.m_v2.x);
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§push(this.m_v1.x);
                                                            if(!_loc4_)
                                                            {
                                                               addr328:
                                                               §§push(§§pop() - §§pop());
                                                               §§push(this.m_v2.y);
                                                               if(!_loc4_)
                                                               {
                                                                  addr333:
                                                                  §§push(§§pop() - this.m_v1.y);
                                                               }
                                                               §§pop().Set(§§pop(),§§pop());
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   continue;
                                                }
                                                §§push(-§§pop());
                                                if(_loc3_ || param2)
                                                {
                                                   §§push(this.§6!P§.y);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + this.§5!D§.y);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_ && param1)
                                                         {
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      addr161:
                                                      §§goto(addr162);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§push(this.m_v2.y);
                                             }
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr122);
                                 }
                              }
                              §§goto(addr122);
                           }
                        }
                        if(_loc3_ || param1)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr392);
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
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc19_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc18_)
            {
               §§push(§§pop() - param2.p1.y);
               if(!_loc19_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc4_ = param3.R;
               §§push(param3.position.x);
               if(_loc18_)
               {
                  §§push(_loc4_.col1.x);
                  if(!_loc19_)
                  {
                     §§push(this.m_v1.x);
                     if(!_loc19_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc19_)
                        {
                           addr87:
                           §§push(_loc4_.col2.x);
                           if(!_loc19_)
                           {
                              addr82:
                              §§push(§§pop() * this.m_v1.y);
                           }
                           §§push(§§pop() + (§§pop() + §§pop()));
                           if(!(_loc19_ && this))
                           {
                              addr95:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(param3.position.y);
                           if(_loc18_)
                           {
                              §§push(_loc4_.col1.y);
                              if(_loc18_)
                              {
                                 §§push(this.m_v1.x);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc19_)
                                    {
                                       addr130:
                                       §§push(_loc4_.col2.y);
                                       if(!(_loc19_ && param2))
                                       {
                                          addr125:
                                          §§push(§§pop() * this.m_v1.y);
                                       }
                                       §§push(§§pop() + (§§pop() + §§pop()));
                                       if(!(_loc19_ && param2))
                                       {
                                          addr138:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(param3.position.y);
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc18_ || param2)
                                          {
                                             §§push(this.m_v2.x);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc19_ && param1))
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(!_loc19_)
                                                   {
                                                      addr178:
                                                      §§push(§§pop() * this.m_v2.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         addr189:
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc18_ || param2)
                                                         {
                                                            addr197:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         §§push(param3.position.x);
                                                         if(_loc18_)
                                                         {
                                                            §§push(_loc4_.col1.x);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§push(this.m_v2.x);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(_loc4_.col2.x);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr227:
                                                                        §§push(§§pop() * this.m_v2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                     }
                                                                     addr238:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!_loc19_)
                                                                        {
                                                                           addr250:
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
                                                                              if(_loc18_ || param2)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc10_);
                                                                                       if(_loc18_ || param2)
                                                                                       {
                                                                                       }
                                                                                       addr308:
                                                                                       var _loc12_:* = §§pop();
                                                                                       if(_loc18_ || param2)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   §§push(param2.p1);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc18_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc18_ || param2)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc18_ || param2)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr764:
                                                                                                                     §§push(param2.p1.y);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        loop34:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr768:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    addr744:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc19_ && param2)
                                                                                                                                             {
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                addr756:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   addr757:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      break loop26;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr748:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                §§push(0);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc19_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr726:
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr741:
                                                                                                                                                                     loop53:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2.§%[§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_ && param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop34;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr685:
                                                                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                                                                    loop22:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       for(; !§§pop(); continue loop22)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr378);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr691);
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr685);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                    addr686:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr704);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr686);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr726);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr748);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr756);
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
                                                                                                                  §§goto(addr377);
                                                                                                               }
                                                                                                               §§goto(addr768);
                                                                                                            }
                                                                                                            §§goto(addr582);
                                                                                                         }
                                                                                                         §§goto(addr632);
                                                                                                      }
                                                                                                      §§goto(addr744);
                                                                                                   }
                                                                                                   §§goto(addr764);
                                                                                                }
                                                                                                §§goto(addr741);
                                                                                             }
                                                                                             addr378:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop55:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc19_ && param3)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  break loop23;
                                                                                                               }
                                                                                                               §§push(_loc16_);
                                                                                                               if(!(_loc19_ && param2))
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(1 + _loc11_);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                              {
                                                                                                                                 addr529:
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       while(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(_loc19_ && this)
                                                                                                                                          {
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                                addr560:
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(_loc19_ && param3)
                                                                                                                                                {
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                loop42:
                                                                                                                                                while(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      while(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         loop16:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               continue loop27;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc18_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue loop25;
                                                                                                                                                            }
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop51;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ || param2))
                                                                                                                                                               {
                                                                                                                                                                  continue loop19;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr633:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              break loop42;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        addr691:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    loop37:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       addr704:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          addr705:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr713:
                                                                                                                                                                                          loop46:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr714:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                addr715:
                                                                                                                                                                                                loop13:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                                                                   addr716:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      addr601:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr703:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr756);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr757);
                                                                                                                                                                              }
                                                                                                                                                                              addr700:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr703);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr715);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr529);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      addr580:
                                                                                                                                                      addr582:
                                                                                                                                                   }
                                                                                                                                                   loop4:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               param1.fraction = _loc15_;
                                                                                                                                                               loop6:
                                                                                                                                                               for(; !_loc19_; while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  if(!(_loc18_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr468);
                                                                                                                                                               })
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop4;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.normal);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           addr458:
                                                                                                                                                                           addr468:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              addr459:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 continue loop6;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§push(param1.normal);
                                                                                                                                                                           if(!(_loc18_ || param3))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr441:
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(_loc19_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr716);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr458);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr459);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr441);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr560);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr598:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr714);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr633);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         continue loop40;
                                                                                                                                                      }
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr704);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr598);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                       addr544:
                                                                                                                                    }
                                                                                                                                    §§goto(addr713);
                                                                                                                                 }
                                                                                                                                 §§goto(addr625);
                                                                                                                              }
                                                                                                                              §§goto(addr568);
                                                                                                                           }
                                                                                                                           §§goto(addr705);
                                                                                                                        }
                                                                                                                        §§goto(addr700);
                                                                                                                     }
                                                                                                                     §§goto(addr529);
                                                                                                                  }
                                                                                                                  §§goto(addr601);
                                                                                                               }
                                                                                                               §§goto(addr580);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr553);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr544);
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr632);
                                                                                       }
                                                                                       §§goto(addr755);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                    }
                                                                                    addr306:
                                                                                    §§goto(addr308);
                                                                                    §§push(Number(§§pop()));
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§push(-§§pop());
                                                                                 if(_loc18_ || param3)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§goto(addr238);
                                                                     §§push(_loc7_);
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr87);
               }
               §§goto(addr95);
            }
            §§goto(addr53);
         }
         §§goto(addr40);
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
         if(_loc8_)
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               while(true)
               {
                  §§push(_loc3_.col1);
                  while(true)
                  {
                     §§push(§§pop().x);
                     while(true)
                     {
                        §§push(this.m_v1);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(!(_loc9_ && this))
                           {
                              §§push(§§pop() * §§pop());
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr535:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                 }
                                 addr240:
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    loop68:
                                    while(true)
                                    {
                                       §§push(param1.§>h§);
                                       loop66:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          loop67:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             loop62:
                                             while(true)
                                             {
                                                §§push(param1.§^!z§);
                                                loop64:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   loop63:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      loop65:
                                                      while(true)
                                                      {
                                                         loop56:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_ || param2)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(param1.§>h§);
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(param1.§>h§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc7_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr64:
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop67;
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    loop57:
                                                                                    while(_loc8_ || param1)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop68;
                                                                                       }
                                                                                       §§push(param1.§^!z§);
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§goto(addr31);
                                                                                             }
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2.position);
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2.position);
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   while(_loc8_ || param2)
                                                                                                   {
                                                                                                      §§push(_loc3_.col1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         addr475:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.m_v1);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop().x);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop20:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_.col2);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.m_v1);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop25:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr494:
                                                                                                                                    addr543:
                                                                                                                                    while(_loc8_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          §§goto(addr503);
                                                                                                                                          addr216:
                                                                                                                                          if(!(_loc8_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ || param2))
                                                                                                                                             {
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                §§goto(addr240);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr457:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr458:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr459:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         addr460:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr253:
                                                                                                                                                            §§push(param2.position);
                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         continue loop15;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr457:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr536:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.m_v1);
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr539);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               if(_loc9_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr327);
                                                                                                               }
                                                                                                               §§goto(addr371);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr543);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr503:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop59:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_ || param2)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   break loop57;
                                                                                                }
                                                                                                loop54:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop63;
                                                                                                   }
                                                                                                   §§pop().x = §§pop();
                                                                                                   loop55:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ || param1))
                                                                                                      {
                                                                                                         continue loop62;
                                                                                                      }
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         continue loop56;
                                                                                                      }
                                                                                                      §§goto(addr387);
                                                                                                      addr133:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ && param2)
                                                                                                         {
                                                                                                            continue loop55;
                                                                                                         }
                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(param1.§^!z§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     continue loop59;
                                                                                                                  }
                                                                                                                  addr158:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        continue loop54;
                                                                                                                     }
                                                                                                                     continue loop64;
                                                                                                                  }
                                                                                                                  §§goto(addr154);
                                                                                                               }
                                                                                                               addr154:
                                                                                                               §§goto(addr460);
                                                                                                               addr87:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                            §§goto(addr253);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop65;
                                                                                                            }
                                                                                                            §§goto(addr158);
                                                                                                            §§push(param1.§^!z§);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ || param1))
                                                                                                      {
                                                                                                         continue loop66;
                                                                                                      }
                                                                                                      §§push(_loc6_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         §§goto(addr193);
                                                                                                         §§goto(addr64);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr87);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr31:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr132:
                                                                                 §§pop().y = §§pop();
                                                                              }
                                                                           }
                                                                           §§goto(addr133);
                                                                        }
                                                                        §§goto(addr475);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            §§goto(addr132);
                                                            §§push(_loc5_);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr184);
                                 §§push(param1.§>h§);
                              }
                           }
                           §§goto(addr536);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr505);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            param1.§&q§ = 0;
            do
            {
               param1.center.SetV(this.m_v1);
               do
               {
                  param1.§6_§ = 0;
               }
               while(!(_loc3_ || this));
               
            }
            while(_loc4_);
            
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc11_ || this)
         {
            §§push(param2);
            if(!(_loc10_ && this))
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc11_)
               {
                  addr40:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§%!r§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§%!r§(param3,this.m_v2);
               §§push(b2Math.§#D§(param1,_loc6_));
               if(!(_loc10_ && param2))
               {
                  §§push(§§pop() - param2);
                  if(!(_loc10_ && param2))
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(b2Math.§#D§(param1,_loc7_));
                  if(_loc11_ || param1)
                  {
                     §§push(§§pop() - param2);
                     if(!_loc10_)
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc11_)
                     {
                        §§push(_loc8_);
                        while(true)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 §§push(_loc9_);
                                 do
                                 {
                                    §§push(0);
                                    if(!_loc10_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             §§push(_loc9_);
                                             if(_loc11_)
                                             {
                                                §§push(-§§pop());
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc11_ || param2)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr418:
                                                               §§push(_loc6_.x);
                                                               if(!_loc10_)
                                                               {
                                                                  addr422:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     addr425:
                                                                     §§push(_loc8_);
                                                                     if(_loc11_)
                                                                     {
                                                                        addr428:
                                                                        §§push(_loc8_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(_loc11_)
                                                                           {
                                                                              addr446:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 addr443:
                                                                                 §§push(_loc7_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 §§push(_loc9_);
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr311:
                                                                                       §§push(_loc8_);
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc11_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr337:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc11_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!(_loc10_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr365:
                                                                                                                     §§push(§§pop() * _loc7_.y);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr365);
                                                                                                      }
                                                                                                      addr367:
                                                                                                      §§pop().y = §§pop();
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr367);
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                           }
                                                                           §§goto(addr446);
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§goto(addr446);
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         §§goto(addr422);
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                   §§goto(addr428);
                                                }
                                                §§goto(addr418);
                                             }
                                             §§goto(addr446);
                                             if(_loc10_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc11_ || param3)
                                             {
                                                §§push(param4);
                                                §§push(_loc5_.y);
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc7_.y);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() / 3);
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr614);
                                             }
                                          }
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr615);
                                 }
                                 while(!(_loc11_ || this));
                                 
                                 return §§pop();
                              }
                              §§goto(addr613);
                           }
                           §§goto(addr615);
                           if(_loc10_ && param3)
                           {
                              continue;
                           }
                           §§push(_loc6_.x);
                           if(!_loc10_)
                           {
                              §§push(_loc5_.x);
                              if(_loc11_ || this)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc11_)
                                 {
                                    §§push(_loc7_.y);
                                    if(_loc11_ || this)
                                    {
                                       §§push(_loc5_.y);
                                       if(!(_loc10_ && param3))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc10_ && param2))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc11_ || param2)
                                             {
                                                addr169:
                                                §§push(_loc6_.y);
                                                if(_loc11_ || this)
                                                {
                                                   addr178:
                                                   §§push(_loc5_.y);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc11_)
                                                      {
                                                         addr185:
                                                         §§push(_loc7_.x);
                                                         if(!_loc10_)
                                                         {
                                                            addr189:
                                                            §§push(§§pop() - _loc5_.x);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   §§goto(addr189);
                                                }
                                                addr194:
                                                §§goto(addr195);
                                                §§push(§§pop() * (§§pop() - §§pop()));
                                             }
                                             §§goto(addr194);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr618);
                  }
                  §§goto(addr96);
               }
               §§goto(addr79);
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      public function §,!H§() : Number
      {
         return this.§^!q§;
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
      
      public function §'p§() : b2Vec2
      {
         return this.§6!P§;
      }
      
      public function § !P§() : b2Vec2
      {
         return this.§5!D§;
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
      
      public function §1%§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc4_ || this)
         {
            §§push(_loc2_.col1.x);
            if(_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc3_)
                     {
                        §§push(this.m_coreV1);
                        if(!_loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_ || param1)
                                 {
                                    addr89:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ || this)
                                    {
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_ || param1)
                                       {
                                          addr121:
                                          §§push(this.m_coreV1.x);
                                          if(_loc4_)
                                          {
                                             addr124:
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_ && _loc2_)
                                             {
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr137);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr142);
            }
            addr142:
            §§push(_loc2_.col2.y);
            if(_loc4_)
            {
               addr137:
               §§push(§§pop() * this.m_coreV1.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() + (§§pop() + §§pop()));
         }
         §§goto(addr89);
      }
      
      public function §1!P§() : b2EdgeShape
      {
         return this.§1!#§;
      }
      
      public function §=!`§() : b2EdgeShape
      {
         return this.§#!T§;
      }
      
      public function §-!"§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc9_)
         {
            §§push(_loc4_.col1.x);
            if(_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(_loc9_ || param2)
               {
                  addr58:
                  §§push(§§pop() * §§pop());
                  if(!(_loc10_ && param3))
                  {
                     §§push(_loc4_.col2.x);
                     if(!_loc10_)
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
                  if(!(_loc10_ && param3))
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc9_)
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc9_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              addr91:
                              §§push(_loc4_.col2.y);
                              if(!_loc10_)
                              {
                                 addr100:
                                 §§push(§§pop() + §§pop() * this.m_coreV1.y);
                              }
                              §§goto(addr100);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc9_ || this)
                           {
                              addr110:
                              var _loc6_:Number = §§pop();
                              §§push(param1.position.x);
                              if(!(_loc10_ && param1))
                              {
                                 §§push(_loc4_.col1.x);
                                 if(_loc9_)
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc10_ && param1))
                                       {
                                          addr139:
                                          §§push(_loc4_.col2.x);
                                          if(!(_loc10_ && param3))
                                          {
                                             addr149:
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_)
                                       {
                                          addr157:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(param1.position.y);
                                       if(_loc9_ || param1)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc9_)
                                          {
                                             §§push(this.m_coreV2.x);
                                             if(!(_loc10_ && param3))
                                             {
                                                addr217:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc10_ && this))
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      §§push(§§pop() * this.m_coreV2.y);
                                                   }
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr226:
                                                   var _loc8_:Number = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(param3);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr347:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(!_loc9_)
                                                                        {
                                                                        }
                                                                        addr382:
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           §§push(this.§;!o§);
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc9_ || param1);
                                                                                    while(§§pop())
                                                                                    {
                                                                                       §§push(this.§;!o§);
                                                                                       loop3:
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          while(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr230:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§;!o§);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr286:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§;!o§);
                                                                                                            }
                                                                                                            addr387:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            addr306:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr230);
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                addr386:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                }
                                                                                                §§goto(addr387);
                                                                                             }
                                                                                             §§goto(addr306);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr385);
                                                                        }
                                                                     }
                                                                     §§push(param2);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                           }
                                                                           addr381:
                                                                           §§goto(addr382);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§push(§§pop() * param3);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr110);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr58);
         }
         §§goto(addr61);
      }
      
      b2internal function §5!o§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§#!T§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
               loop1:
               while(_loc5_ || param1)
               {
                  while(true)
                  {
                     this.m_cornerDir1 = param3;
                     do
                     {
                        this.m_cornerConvex1 = param4;
                     }
                     while(_loc6_ && param1);
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      b2internal function §<"!§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§1!#§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     this.m_cornerDir2 = param3;
                     do
                     {
                        this.m_cornerConvex2 = param4;
                     }
                     while(!(_loc5_ || param2));
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
   }
}
