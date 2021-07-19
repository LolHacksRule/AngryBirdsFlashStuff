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
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §!!w§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §<!H§:Number;
      
      b2internal var §?!A§:b2Vec2;
      
      b2internal var §&U§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §2"&§:b2EdgeShape;
      
      b2internal var §]v§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!!w§ = new b2Vec2();
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
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop4:
                        for(; _loc4_ || param2; while(_loc4_ || this)
                        {
                           this.m_cornerDir1 = new b2Vec2();
                           loop7:
                           while(true)
                           {
                              this.m_cornerDir2 = new b2Vec2();
                              continue loop0;
                              addr263:
                              if(!(_loc4_ || param1))
                              {
                                 continue;
                              }
                              §§push(this.m_coreV2);
                              §§push(b2Settings.b2_toiSlop);
                              if(_loc4_)
                              {
                                 §§push(-§§pop());
                                 if(_loc4_ || param2)
                                 {
                                    addr92:
                                    §§push(this.§?!A§.x);
                                    if(!(_loc3_ && param2))
                                    {
                                       §§push(this.§&U§.x);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc4_)
                                          {
                                             addr115:
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_)
                                             {
                                                §§push(this.m_v2.x);
                                                if(_loc4_ || param2)
                                                {
                                                   addr129:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(b2Settings.b2_toiSlop);
                                                   if(_loc4_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§?!A§.y);
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(§§pop() + this.§&U§.y);
                                                            if(_loc4_)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr155:
                                                                  §§push(this.m_v2.y);
                                                               }
                                                               §§pop().Set(§§pop(),§§pop());
                                                               loop20:
                                                               while(!(_loc3_ && param2))
                                                               {
                                                                  this.m_cornerDir1 = this.§?!A§;
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr67:
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr261:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr344:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    this.§<!H§ = this.§&U§.Normalize();
                                                                                    break loop20;
                                                                                 }
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(this.§&U§);
                                                                                    §§push(this.m_v2.x);
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§push(this.m_v1.x);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr322:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          §§push(this.m_v2.y);
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             §§push(§§pop() - this.m_v1.y);
                                                                                          }
                                                                                       }
                                                                                       §§pop().Set(§§pop(),§§pop());
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 addr337:
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop2;
                                                                              addr284:
                                                                           }
                                                                           §§goto(addr263);
                                                                           §§goto(addr67);
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  loop14:
                                                                  while(!(_loc3_ && this))
                                                                  {
                                                                     addr358:
                                                                     if(!(_loc3_ && param2))
                                                                     {
                                                                        this.m_v2 = param2;
                                                                        §§goto(addr344);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§2"&§ = null;
                                                                           break loop14;
                                                                           §§goto(addr358);
                                                                        }
                                                                        addr391:
                                                                     }
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        addr400:
                                                                        while(true)
                                                                        {
                                                                           §0w§ = b2internal::0";
                                                                           break loop12;
                                                                        }
                                                                     }
                                                                     break;
                                                                     §§goto(addr351);
                                                                  }
                                                                  addr351:
                                                                  while(true)
                                                                  {
                                                                     this.§]v§ = null;
                                                                     §§goto(addr391);
                                                                     §§goto(addr370);
                                                                  }
                                                                  addr370:
                                                               }
                                                               while(!_loc3_)
                                                               {
                                                                  §§push(this.§?!A§);
                                                                  §§push(this.§&U§.y);
                                                                  §§push(this.§&U§.x);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  §§goto(addr284);
                                                                  §§goto(addr160);
                                                               }
                                                               addr160:
                                                               §§goto(addr438);
                                                            }
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr92);
                           }
                           if(!(_loc3_ && this))
                           {
                              return;
                              addr59:
                           }
                        })
                        {
                           this.§?!A§ = new b2Vec2();
                           while(true)
                           {
                              this.§&U§ = new b2Vec2();
                              continue loop4;
                           }
                        }
                     }
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§push(this.m_coreV1);
                     §§push(b2Settings.b2_toiSlop);
                     if(!(_loc3_ && this))
                     {
                        §§push(-§§pop());
                        if(_loc4_ || this)
                        {
                           §§push(this.§?!A§.x);
                           if(_loc4_)
                           {
                              §§push(this.§&U§.x);
                              if(!(_loc3_ && param2))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc3_)
                                    {
                                       addr209:
                                       §§push(this.m_v1.x);
                                       if(_loc4_ || param1)
                                       {
                                          addr220:
                                          §§push(§§pop() + §§pop());
                                          §§push(b2Settings.b2_toiSlop);
                                          if(_loc4_)
                                          {
                                             §§push(-§§pop());
                                             if(_loc4_ || this)
                                             {
                                                §§push(this.§?!A§.y);
                                                if(!_loc3_)
                                                {
                                                   addr247:
                                                   §§push(§§pop() - this.§&U§.y);
                                                   if(_loc4_)
                                                   {
                                                      addr260:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr256:
                                                         §§push(this.m_v1.y);
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      §§goto(addr261);
                                                   }
                                                   §§goto(addr260);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr260);
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr260);
                                    }
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr256);
                        }
                     }
                     §§goto(addr209);
                  }
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.m_v1 = param1;
                     §§goto(addr351);
                  }
                  §§goto(addr59);
               }
               while(!(_loc3_ && param1))
               {
                  super();
                  §§goto(addr400);
               }
            }
         }
         §§goto(addr386);
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
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         §§push(param2.p2.x);
         if(_loc19_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc19_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(!(_loc18_ && this))
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
            if(_loc19_)
            {
               §§push(_loc4_.col1.x);
               if(!(_loc18_ && this))
               {
                  §§push(this.m_v1.x);
                  if(_loc19_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && this))
                     {
                        addr93:
                        §§push(_loc4_.col2.x);
                        if(_loc19_)
                        {
                           addr98:
                           §§push(§§pop() * this.m_v1.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc19_)
                     {
                        addr106:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc18_ && this))
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc19_)
                        {
                           §§push(this.m_v1.x);
                           if(!_loc18_)
                           {
                              addr141:
                              §§push(§§pop() * §§pop());
                              if(_loc19_)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop() * this.m_v1.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc18_)
                              {
                                 addr144:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param3.position.y);
                              if(_loc19_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(_loc19_ || param2)
                                 {
                                    §§push(this.m_v2.x);
                                    if(_loc19_ || this)
                                    {
                                       addr196:
                                       §§push(§§pop() * §§pop());
                                       if(_loc19_)
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(_loc19_ || param2)
                                          {
                                             §§push(§§pop() * this.m_v2.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc19_)
                                       {
                                          addr200:
                                          §§push(§§pop() - _loc8_);
                                          if(_loc18_ && param2)
                                          {
                                          }
                                          addr209:
                                          var _loc9_:* = §§pop();
                                          §§push(param3.position.x);
                                          if(!_loc18_)
                                          {
                                             §§push(_loc4_.col1.x);
                                             if(_loc19_)
                                             {
                                                §§push(this.m_v2.x);
                                                if(_loc19_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(_loc4_.col2.x);
                                                      if(_loc19_ || this)
                                                      {
                                                         addr248:
                                                         §§push(§§pop() * this.m_v2.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_)
                                                      {
                                                      }
                                                      addr259:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc19_ || this)
                                                      {
                                                         addr267:
                                                         §§push(-§§pop());
                                                         if(_loc19_)
                                                         {
                                                            addr271:
                                                            var _loc10_:Number = §§pop();
                                                            §§push(100 * Number.MIN_VALUE);
                                                            if(_loc19_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc5_);
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc19_ || param3)
                                                                     {
                                                                        §§push(§§pop() * _loc10_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr301:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc18_ && param3))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 addr317:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(param2.p1);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc18_ && param2))
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   addr369:
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(_loc19_ || param2)
                                                                                                   {
                                                                                                      addr795:
                                                                                                      §§push(param2.p1.y);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc14_ = §§pop();
                                                                                                                  addr800:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        addr773:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           loop6:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop7:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             addr758:
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
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param2.§7"?§);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc19_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop7;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 while(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr379);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr713);
                                                                                                                                                                              }
                                                                                                                                                                              addr710:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr773);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr726);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr710);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr796:
                                                                                                   }
                                                                                                   §§goto(addr600);
                                                                                                }
                                                                                                §§goto(addr753);
                                                                                             }
                                                                                             §§goto(addr589);
                                                                                          }
                                                                                          §§goto(addr758);
                                                                                       }
                                                                                       §§goto(addr796);
                                                                                    }
                                                                                    §§goto(addr795);
                                                                                 }
                                                                                 §§goto(addr800);
                                                                              }
                                                                              addr379:
                                                                              loop46:
                                                                              while(true)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop40;
                                                                                    }
                                                                                    loop47:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§pop();
                                                                                       loop48:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc19_ || param2))
                                                                                          {
                                                                                             continue loop43;
                                                                                          }
                                                                                          §§push(_loc16_);
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                             addr515:
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      if(!(_loc18_ && param3))
                                                                                                      {
                                                                                                         addr726:
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(1 + _loc11_);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            addr727:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr727);
                                                                                                         }
                                                                                                         addr726:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc19_ || param3))
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         addr753:
                                                                                                         addr753:
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            loop1:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc18_ && param2)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  if(_loc18_ && param3)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  §§push(-§§pop());
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(!(_loc19_ || this))
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc18_ && param2)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 addr646:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc19_ || param2)
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          continue loop39;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc19_ || this)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                                loop50:
                                                                                                                                                while(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(_loc19_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      addr599:
                                                                                                                                                      addr599:
                                                                                                                                                      loop32:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                         addr600:
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            param1.fraction = _loc15_;
                                                                                                                                                            loop34:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                                               if(_loc18_ && param3)
                                                                                                                                                               {
                                                                                                                                                                  continue loop32;
                                                                                                                                                               }
                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop45;
                                                                                                                                                               }
                                                                                                                                                               §§push(param1.normal);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  addr460:
                                                                                                                                                                  addr474:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     addr461:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        continue loop34;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(param1.normal);
                                                                                                                                                                  if(!(_loc19_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr443:
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop34;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              while(_loc18_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              return §§pop();
                                                                                                                                                                              addr401:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop33;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr460);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr461);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr443);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop48;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                continue loop46;
                                                                                                                                             }
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          continue loop47;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr724:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr725:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr726);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr515);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr646);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           if(!(_loc19_ || param2))
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           §§push(-§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr724);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr713:
                                                                                                                     }
                                                                                                                     §§goto(addr725);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr561:
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§goto(addr564);
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr646);
                                                                                                }
                                                                                                §§goto(addr723);
                                                                                             }
                                                                                             §§goto(addr645);
                                                                                          }
                                                                                          §§goto(addr599);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr655);
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc19_)
                                                   {
                                                      §§goto(addr259);
                                                      §§push(_loc7_);
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr271);
                                       }
                                       §§goto(addr209);
                                       §§push(Number(§§pop()));
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc18_ && this))
                                    {
                                       §§goto(addr196);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr200);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr98);
               }
               §§goto(addr93);
            }
            §§goto(addr106);
         }
         §§goto(addr41);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(_loc8_ || this)
         {
            §§push(param2.position);
            loop0:
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
                     if(_loc8_)
                     {
                        §§push(this.m_v1);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc9_)
                                    {
                                       §§push(this.m_v1);
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr569:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             §§push(this.m_v1);
                                             if(!(_loc8_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(§§pop().y);
                                             loop21:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop22:
                                                while(_loc8_ || param1)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop25:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            loop26:
                                                            while(true)
                                                            {
                                                               §§push(param2.position);
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.col1);
                                                                     loop29:
                                                                     while(!_loc9_)
                                                                     {
                                                                        §§push(§§pop().x);
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
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(_loc3_.col2);
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             addr459:
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             addr391:
                                                                                             §§push(this.m_v2);
                                                                                             continue loop21;
                                                                                             if(!(_loc8_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr406:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop41:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         addr423:
                                                                                                         loop42:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc9_ && param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc7_ = §§pop();
                                                                                                               loop43:
                                                                                                               while(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  loop44:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr253:
                                                                                                                        if(!(_loc8_ || _loc3_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(_loc6_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           addr465:
                                                                                                                           addr465:
                                                                                                                           addr498:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc8_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    break loop44;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr513:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col2);
                                                                                                                                 addr515:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.m_v1);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!(_loc8_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              §§goto(addr513);
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           §§push(_loc7_);
                                                                                                                           addr151:
                                                                                                                           continue loop3;
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     continue loop42;
                                                                                                                     addr133:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc9_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop44;
                                                                                                                        }
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        if(_loc9_ && param2)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§goto(addr151);
                                                                                                                     }
                                                                                                                     loop47:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 §§push(param1.§2!1§);
                                                                                                                                 loop49:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    addr222:
                                                                                                                                    addr102:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       addr223:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop55:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop49;
                                                                                                                                       }
                                                                                                                                       addr109:
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       loop54:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr36);
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                addr203:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§2!1§);
                                                                                                                                                         continue loop55;
                                                                                                                                                      }
                                                                                                                                                      addr276:
                                                                                                                                                      while(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§<!@§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            addr281:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr292:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§2!1§);
                                                                                                                                                                  addr244:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     break loop54;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr223);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr118:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          §§goto(addr109);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr246:
                                                                                                                                          while(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr133);
                                                                                                                                          }
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr246);
                                                                                                                              }
                                                                                                                              §§goto(addr133);
                                                                                                                              addr181:
                                                                                                                              if(_loc9_ && param2)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr190:
                                                                                                                              §§push(param1.§<!@§);
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr200:
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    §§goto(addr203);
                                                                                                                                 }
                                                                                                                                 §§goto(addr280);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop47;
                                                                                                                                    §§goto(addr190);
                                                                                                                                 }
                                                                                                                                 addr229:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr281);
                                                                                                                        }
                                                                                                                        §§goto(addr246);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc8_ || this))
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        continue loop27;
                                                                                                                     }
                                                                                                                     §§goto(addr253);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     break loop43;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param2.position);
                                                                                                                  addr492:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.col1);
                                                                                                                        addr497:
                                                                                                                        addr313:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr498);
                                                                                                                        }
                                                                                                                        if(_loc9_ && param2)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(_loc3_.col1);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              §§push(this.m_v2);
                                                                                                                              if(_loc9_ && param2)
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    continue loop41;
                                                                                                                                 }
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              §§goto(addr406);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr571:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 break loop42;
                                                                                                                              }
                                                                                                                              addr571:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr497);
                                                                                                                        }
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr487);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr573);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr462:
                                                                                                      while(_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                      addr462:
                                                                                                   }
                                                                                                   §§goto(addr465);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr569);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             §§goto(addr462);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr462);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr465);
                                                                              }
                                                                           }
                                                                           if(_loc9_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc8_ || param1))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              §§goto(addr181);
                                                                           }
                                                                           §§push(param1.§<!@§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 for(; _loc8_; §§pop().y = §§pop(),if(_loc9_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 },if(!(_loc9_ && param1))
                                                                                 {
                                                                                    addr36:
                                                                                    return;
                                                                                 },§§goto(addr292))
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§push(param1.§2!1§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!(_loc9_ && param2))
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                             §§goto(addr110);
                                                                                          }
                                                                                          §§goto(addr244);
                                                                                       }
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr181);
                                                                                 }
                                                                                 §§goto(addr118);
                                                                              }
                                                                              §§goto(addr200);
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr570:
                                                while(true)
                                                {
                                                   §§goto(addr571);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr570);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr571);
                  }
               }
            }
         }
         §§goto(addr574);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.§[]§ = 0;
         }
         while(true)
         {
            param1.§`C§.SetV(this.m_v1);
            while(!(_loc4_ && param1))
            {
               param1.I = 0;
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc10_ || param3)
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
               var _loc6_:b2Vec2 = b2Math.§=&§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§=&§(param3,this.m_v2);
               §§push(b2Math.§<"E§(param1,_loc6_));
               if(!_loc11_)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param3)
                  {
                     addr73:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(b2Math.§<"E§(param1,_loc7_));
                  if(_loc10_)
                  {
                     §§push(§§pop() - param2);
                     if(_loc10_)
                     {
                        addr85:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc11_)
                     {
                        §§push(_loc8_);
                        loop0:
                        while(true)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    §§push(_loc9_);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr619:
                                       loop11:
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc9_);
                                                if(!(_loc11_ && param1))
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc10_ || param2)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc11_ && param3))
                                                            {
                                                               addr561:
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§push(_loc6_.x);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        addr571:
                                                                        §§push(_loc8_);
                                                                        if(_loc10_)
                                                                        {
                                                                           addr574:
                                                                           §§push(_loc8_);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr582:
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(_loc10_ || param3)
                                                                              {
                                                                                 addr597:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                 }
                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    §§push(_loc9_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          addr471:
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc11_ && param2))
                                                                                                {
                                                                                                   addr485:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc10_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr500:
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc10_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc9_);
                                                                                                                  if(!(_loc11_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr526:
                                                                                                                        §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr526);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         loop7:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               §§push(_loc5_.x);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr241:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_.x);
                                                                                                                     }
                                                                                                                     §§pop().x = §§pop() / 3;
                                                                                                                     loop10:
                                                                                                                     while(!(_loc11_ && param2))
                                                                                                                     {
                                                                                                                        addr251:
                                                                                                                        if(_loc10_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(param4);
                                                                                                                              §§push(_loc5_.y);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(!(_loc11_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr209:
                                                                                                                                       §§push(§§pop() + _loc7_.y);
                                                                                                                                       if(_loc10_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 3);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(0.5);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          break loop9;
                                                                                                                                       }
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       if(!(_loc11_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.x);
                                                                                                                                          if(!(_loc11_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_.y);
                                                                                                                                                if(_loc10_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.y);
                                                                                                                                                   if(!(_loc11_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(!(_loc11_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr146:
                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                            if(_loc10_ || param3)
                                                                                                                                                            {
                                                                                                                                                               addr155:
                                                                                                                                                               §§push(_loc5_.y);
                                                                                                                                                               if(!(_loc11_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr180:
                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                     if(_loc10_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        addr176:
                                                                                                                                                                        §§push(§§pop() - _loc5_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr180);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr176);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr180);
                                                                                                                                                         }
                                                                                                                                                         addr182:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         addr355:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!(_loc10_ || param3))
                                                                                                                                                            {
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop9;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ || param3))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr620);
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!(_loc11_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(_loc10_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!(_loc11_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              if(!(_loc11_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc11_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr422:
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr425:
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          if(!(_loc11_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr433:
                                                                                                                                                                                             §§push(§§pop() - _loc9_);
                                                                                                                                                                                             if(!(_loc11_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr453:
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr450:
                                                                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      if(!_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr283:
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                  if(_loc10_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc11_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr313:
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           if(_loc10_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr324:
                                                                                                                                                                                                                                 §§push(§§pop() - _loc9_);
                                                                                                                                                                                                                                 if(_loc10_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr339:
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr336:
                                                                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                    break loop10;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr339);
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr339);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr336);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr313);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr339);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr324);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr283);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr339);
                                                                                                                                                                                                   §§goto(addr251);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr455:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr453);
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr453);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr450);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr422);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr453);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr433);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr425);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr453);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr422);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr180);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr176);
                                                                                                                                                }
                                                                                                                                                §§goto(addr155);
                                                                                                                                             }
                                                                                                                                             §§goto(addr146);
                                                                                                                                          }
                                                                                                                                          §§goto(addr180);
                                                                                                                                       }
                                                                                                                                       §§goto(addr146);
                                                                                                                                    }
                                                                                                                                    §§goto(addr182);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr209);
                                                                                                                           }
                                                                                                                           §§goto(addr364);
                                                                                                                        }
                                                                                                                        §§goto(addr455);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                        §§goto(addr244);
                                                                                                                     }
                                                                                                                     addr244:
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr241);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr526);
                                                                                                   }
                                                                                                   §§goto(addr500);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr526);
                                                                                          }
                                                                                          §§goto(addr485);
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    §§goto(addr471);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr597);
                                                                  }
                                                               }
                                                               §§goto(addr571);
                                                            }
                                                            §§goto(addr574);
                                                         }
                                                         §§goto(addr582);
                                                      }
                                                      §§goto(addr561);
                                                   }
                                                }
                                                §§goto(addr571);
                                             }
                                          }
                                          §§goto(addr620);
                                       }
                                    }
                                 }
                                 §§goto(addr620);
                              }
                              else
                              {
                                 §§push(_loc9_);
                              }
                              §§goto(addr355);
                           }
                           §§goto(addr619);
                        }
                     }
                     addr620:
                     return 0;
                  }
                  §§goto(addr85);
               }
               §§goto(addr73);
            }
            §§goto(addr39);
         }
         §§goto(addr35);
      }
      
      public function §#!i§() : Number
      {
         return this.§<!H§;
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
      
      public function §0!V§() : b2Vec2
      {
         return this.§?!A§;
      }
      
      public function §!"6§() : b2Vec2
      {
         return this.§&U§;
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
      
      public function §?!m§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_.col1.x);
            if(_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc4_ || _loc2_)
                     {
                        addr55:
                        §§push(this.m_coreV1);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop().y);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || this)
                              {
                                 addr85:
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr89:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ || param1)
                                    {
                                       addr99:
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_ || param1)
                                       {
                                          addr111:
                                          §§push(this.m_coreV1.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc3_ && param1))
                                             {
                                                addr127:
                                                §§push(_loc2_.col2.y);
                                                if(!_loc4_)
                                                {
                                                }
                                                return new §§pop().b2Vec2(§§pop(),§§pop() + (§§pop() + §§pop()));
                                                addr147:
                                             }
                                          }
                                          §§goto(addr147);
                                          §§push(§§pop() * this.m_coreV1.y);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr99);
               }
               §§goto(addr55);
            }
            §§goto(addr127);
         }
         §§goto(addr89);
      }
      
      public function §<+§() : b2EdgeShape
      {
         return this.§2"&§;
      }
      
      public function § 5§() : b2EdgeShape
      {
         return this.§]v§;
      }
      
      public function §,!u§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc10_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(!_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc9_)
               {
                  addr59:
                  §§push(§§pop() * §§pop());
                  if(_loc10_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc9_ && param2))
                     {
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc9_ && this))
                  {
                     addr68:
                     var _loc5_:Number = §§pop();
                     §§push(param1.position.y);
                     if(_loc10_ || param2)
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc9_)
                        {
                           §§push(this.m_coreV1.x);
                           if(!(_loc9_ && param3))
                           {
                              addr112:
                              §§push(§§pop() * §§pop());
                              if(!_loc9_)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc9_ && param1))
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param1.position.x);
                              if(!_loc9_)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(_loc10_)
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(!(_loc9_ && param2))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc10_ || this)
                                       {
                                          addr165:
                                          §§push(_loc4_.col2.x);
                                          if(_loc10_ || param1)
                                          {
                                             addr160:
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(_loc10_ || param1)
                                          {
                                             addr174:
                                             var _loc7_:Number = §§pop();
                                             §§push(param1.position.y);
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(_loc4_.col1.y);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(this.m_coreV2.x);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         addr218:
                                                         §§push(_loc4_.col2.y);
                                                         if(_loc10_)
                                                         {
                                                            addr227:
                                                            §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc9_)
                                                      {
                                                         addr231:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(param2);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  addr338:
                                                                  §§push(_loc6_);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§push(param3);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr363:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(_loc7_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr366:
                                                                              §§push(param2);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    addr382:
                                                                                    §§push(_loc8_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr397:
                                                                                       §§push(§§pop() + §§pop() * param3);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              §§push(this.§!!w§);
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ || param2)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(this.§!!w§);
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!(_loc10_ || this))
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         loop4:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            addr316:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param3))
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr399:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§!!w§);
                                                                                                               }
                                                                                                            }
                                                                                                            addr314:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         addr402:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr403:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr314);
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr403);
                                                                                          }
                                                                                          §§goto(addr316);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr402);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr399);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr403);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr174);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr68);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr59);
         }
         §§goto(addr68);
      }
      
      b2internal function §`!P§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§]v§ = param1;
         }
         while(true)
         {
            this.m_coreV1 = param2;
            while(!_loc6_)
            {
               this.m_cornerDir1 = param3;
               while(!(_loc6_ && param2))
               {
                  this.m_cornerConvex1 = param4;
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      b2internal function §'"-§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§2"&§ = param1;
            loop0:
            while(true)
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  loop2:
                  while(!(_loc5_ && param3))
                  {
                     while(true)
                     {
                        this.m_cornerConvex2 = param4;
                        if(_loc6_ || param1)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
   }
}
