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
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §while§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §,!P§:Number;
      
      b2internal var §&!5§:b2Vec2;
      
      b2internal var §[!G§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §[!"§:b2EdgeShape;
      
      b2internal var §5M§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§while§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  addr447:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     addr441:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        while(true)
                        {
                           this.§&!5§ = new b2Vec2();
                           addr427:
                           while(!_loc4_)
                           {
                              this.§[!G§ = new b2Vec2();
                           }
                        }
                     }
                  }
                  addr382:
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  this.m_v1 = param1;
                  loop13:
                  while(true)
                  {
                     this.m_v2 = param2;
                     loop14:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           continue loop13;
                        }
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(this.§[!G§);
                           §§push(this.m_v2.x);
                           if(_loc3_ || param2)
                           {
                              §§push(this.m_v1.x);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr333:
                                 §§push(§§pop() - §§pop());
                                 §§push(this.m_v2.y);
                                 if(_loc3_ || param2)
                                 {
                                    addr343:
                                    §§push(§§pop() - this.m_v1.y);
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 loop15:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          this.§,!P§ = this.§[!G§.Normalize();
                                          loop16:
                                          while(!_loc4_)
                                          {
                                             §§push(this.§&!5§);
                                             §§push(this.§[!G§.y);
                                             §§push(this.§[!G§.x);
                                             if(!_loc4_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             loop17:
                                             while(true)
                                             {
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop16;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(this.m_coreV1);
                                                §§push(b2Settings.b2_toiSlop);
                                                if(_loc3_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr179:
                                                      §§push(this.§&!5§.x);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§[!G§.x);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_ || this)
                                                               {
                                                                  addr200:
                                                                  §§push(this.m_v1.x);
                                                                  if(!(_loc4_ && param2))
                                                                  {
                                                                     addr211:
                                                                     addr210:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(b2Settings.b2_toiSlop);
                                                                     if(_loc4_ && param1)
                                                                     {
                                                                     }
                                                                     addr261:
                                                                     §§pop().Set(§§pop(),§§pop() + this.m_v1.y);
                                                                     addr257:
                                                                     loop18:
                                                                     for(; !(_loc4_ && _loc3_); while(true)
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop18;
                                                                     },continue loop14)
                                                                     {
                                                                        addr269:
                                                                        if(_loc3_ || param2)
                                                                        {
                                                                           §§push(this.m_coreV2);
                                                                           §§push(b2Settings.b2_toiSlop);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr84:
                                                                                 §§push(this.§&!5§.x);
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    §§push(this.§[!G§.x);
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr115:
                                                                                             §§push(this.m_v2.x);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr121:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(b2Settings.b2_toiSlop);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr151:
                                                                                                   §§pop().Set(§§pop(),§§pop() + this.m_v2.y);
                                                                                                   addr147:
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             §§push(this.§&!5§.y);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() + this.§[!G§.y);
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                   addr144:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr147);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr151);
                                                                                             }
                                                                                             §§goto(addr144);
                                                                                          }
                                                                                          §§goto(addr121);
                                                                                       }
                                                                                       §§goto(addr151);
                                                                                    }
                                                                                    §§goto(addr144);
                                                                                 }
                                                                                 §§goto(addr151);
                                                                              }
                                                                              §§goto(addr115);
                                                                           }
                                                                           §§goto(addr84);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§5M§ = null;
                                                                              break loop18;
                                                                              §§goto(addr269);
                                                                           }
                                                                           addr399:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§[!"§ = null;
                                                                        addr375:
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§goto(addr382);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.m_cornerDir1 = new b2Vec2();
                                                                                 addr415:
                                                                                 while(true)
                                                                                 {
                                                                                    this.m_cornerDir2 = new b2Vec2();
                                                                                    break loop15;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              addr421:
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                        §§goto(addr262);
                                                                     }
                                                                     addr262:
                                                                  }
                                                                  §§push(-§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.§&!5§.y);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        addr243:
                                                                        §§push(§§pop() - this.§[!G§.y);
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           addr254:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr257);
                                                                           }
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr441);
                                          }
                                          §§goto(addr427);
                                       }
                                       §§goto(addr415);
                                    }
                                    break;
                                    addr58:
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    super();
                                    addr403:
                                    while(true)
                                    {
                                       §0!,§ = b2internal::=!E;
                                       §§goto(addr399);
                                    }
                                 }
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr333);
                        }
                        §§goto(addr403);
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        this.m_cornerDir1 = this.§&!5§;
                        while(_loc3_)
                        {
                           §§push(this.m_cornerDir2);
                           §§push(this.§&!5§.x);
                           if(!(_loc4_ && this))
                           {
                              §§push(-§§pop());
                           }
                           §§push(this.§&!5§.y);
                           if(_loc3_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().Set(§§pop(),§§pop());
                           if(_loc4_ && param2)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              §§goto(addr58);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr375);
                     }
                     §§goto(addr447);
                  }
               }
            }
         }
         §§goto(addr421);
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
         if(!_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc18_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc19_ || this)
            {
               §§push(§§pop() - param2.p1.y);
               if(!(_loc18_ && param2))
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc4_ = param3.R;
               §§push(param3.position.x);
               if(!_loc18_)
               {
                  §§push(_loc4_.col1.x);
                  if(!(_loc18_ && param3))
                  {
                     §§push(this.m_v1.x);
                     if(!(_loc18_ && param3))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc19_)
                        {
                           addr98:
                           §§push(_loc4_.col2.x);
                           if(_loc19_)
                           {
                              addr103:
                              §§push(§§pop() * this.m_v1.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc19_ || param3)
                        {
                           addr116:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(param3.position.y);
                        if(!(_loc18_ && this))
                        {
                           §§push(_loc4_.col1.y);
                           if(_loc19_ || param1)
                           {
                              §§push(this.m_v1.x);
                              if(_loc19_ || this)
                              {
                                 addr166:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(_loc4_.col2.y);
                                    if(_loc19_ || param2)
                                    {
                                       §§push(§§pop() * this.m_v1.y);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc18_ && param2))
                                 {
                                    addr175:
                                    var _loc8_:Number = §§pop();
                                    §§push(param3.position.y);
                                    if(_loc19_ || this)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!(_loc18_ && param3))
                                       {
                                          §§push(this.m_v2.x);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc19_)
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(!_loc18_)
                                                {
                                                   addr209:
                                                   §§push(§§pop() * this.m_v2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc19_ || param2)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc19_)
                                                   {
                                                      addr225:
                                                      §§push(§§pop() - _loc8_);
                                                      if(!_loc18_)
                                                      {
                                                         addr228:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§push(param3.position.x);
                                                      if(_loc19_)
                                                      {
                                                         §§push(_loc4_.col1.x);
                                                         if(_loc19_)
                                                         {
                                                            §§push(this.m_v2.x);
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc18_)
                                                               {
                                                                  addr248:
                                                                  §§push(_loc4_.col2.x);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr253:
                                                                     §§push(§§pop() * this.m_v2.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     addr265:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc18_ && param3))
                                                                     {
                                                                        addr274:
                                                                        §§push(§§pop() - _loc7_);
                                                                        if(_loc19_ || param1)
                                                                        {
                                                                           addr282:
                                                                           §§push(-§§pop());
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              addr290:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(100 * Number.MIN_VALUE);
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc5_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr322:
                                                                                    §§push(§§pop() * _loc10_);
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc19_ || param2)
                                                                                          {
                                                                                             addr348:
                                                                                             §§push(Number(§§pop()));
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr348);
                                                                                    }
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          if(!(_loc18_ && param2))
                                                                                          {
                                                                                             §§push(param2.p1);
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc18_ && param2))
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               addr860:
                                                                                                               §§push(param2.p1.y);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  addr862:
                                                                                                                  loop47:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr864:
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc14_ = §§pop();
                                                                                                                           addr865:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              if(_loc19_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       addr840:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          addr841:
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr842:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr843:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      continue loop43;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr846:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr836:
                                                                                                                              }
                                                                                                                              §§goto(addr846);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop47;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr861:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               while(!(_loc18_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  while(!(_loc18_ && param3))
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
                                                                                                                                    if(_loc19_ || param2)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(param2.§"!7§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   addr773:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr409);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr779);
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr779);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr797);
                                                                                                                                             if(!(_loc19_ || param1))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr701);
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr843);
                                                                                                                                    }
                                                                                                                                    §§goto(addr779);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr773);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr842);
                                                                                                               }
                                                                                                               §§goto(addr839);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr846);
                                                                                                      }
                                                                                                      §§goto(addr786);
                                                                                                   }
                                                                                                   §§goto(addr727);
                                                                                                }
                                                                                                §§goto(addr839);
                                                                                             }
                                                                                             §§goto(addr860);
                                                                                          }
                                                                                          §§goto(addr865);
                                                                                       }
                                                                                       addr409:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(false);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop37:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§pop();
                                                                                                if(_loc18_ && param2)
                                                                                                {
                                                                                                   break loop19;
                                                                                                }
                                                                                                §§push(_loc16_);
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc18_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(!(_loc18_ && param3))
                                                                                                      {
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            §§push(1 + _loc11_);
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc18_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     addr622:
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc19_ || param3))
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              loop28:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc18_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr653:
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   loop55:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop30:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               loop31:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.fraction = _loc15_;
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc18_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc18_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                     if(_loc18_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.normal);
                                                                                                                                                                        loop33:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           addr519:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              addr520:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     if(_loc18_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(true);
                                                                                                                                                                        continue loop3;
                                                                                                                                                                     }
                                                                                                                                                                     loop13:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        addr680:
                                                                                                                                                                        while(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           while(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              continue loop8;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(_loc19_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr797:
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr797:
                                                                                                                                                                              }
                                                                                                                                                                              addr798:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr799:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr800:
                                                                                                                                                                                    while(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop1;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr653);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr846);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               addr677:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop2;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                 if(_loc19_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop37;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr798);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr788);
                                                                                                                                                                        }
                                                                                                                                                                        addr787:
                                                                                                                                                                        addr711:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr861);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr862);
                                                                                                                                                               addr701:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr799);
                                                                                                                                                         }
                                                                                                                                                         addr674:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr683);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr663:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr779:
                                                                                                                                             while(_loc19_ || param3)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr787);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr779:
                                                                                                                                          }
                                                                                                                                          §§goto(addr864);
                                                                                                                                       }
                                                                                                                                       §§goto(addr680);
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 §§goto(addr677);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr627:
                                                                                                                        }
                                                                                                                        §§goto(addr836);
                                                                                                                     }
                                                                                                                     §§goto(addr711);
                                                                                                                  }
                                                                                                                  §§goto(addr663);
                                                                                                               }
                                                                                                               §§goto(addr841);
                                                                                                            }
                                                                                                            §§goto(addr797);
                                                                                                         }
                                                                                                         §§goto(addr840);
                                                                                                      }
                                                                                                      §§goto(addr622);
                                                                                                   }
                                                                                                   §§goto(addr800);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr627);
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr665);
                                                                                 }
                                                                                 §§goto(addr845);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr348);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr228);
                                                }
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr209);
                                       }
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr175);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr98);
               }
               §§goto(addr116);
            }
            §§goto(addr64);
         }
         §§goto(addr41);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!(_loc8_ && this))
         {
            §§push(param2.position);
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc3_.col1);
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc8_)
                     {
                        §§push(this.m_v1);
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr506:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr517:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       addr519:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr520:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr285:
                                 if(!(_loc9_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(this.m_v2);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc9_)
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(_loc3_.col2);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         addr340:
                                                         §§push(this.m_v2);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc9_ || param1)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr355:
                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                  loop38:
                                                                  while(!_loc8_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        while(_loc9_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop39:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       loop41:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                loop42:
                                                                                                while(_loc9_ || this)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      §§push(param1.§=!H§);
                                                                                                      loop43:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         loop44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            loop45:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§6P§);
                                                                                                               loop46:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  loop47:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     loop48:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop42;
                                                                                                                              }
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§=!H§);
                                                                                                                                             continue loop43;
                                                                                                                                          }
                                                                                                                                          addr187:
                                                                                                                                          if(!(_loc9_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr123:
                                                                                                                                          §§push(param1.§6P§);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(param1.§=!H§);
                                                                                                                                          if(_loc8_ && param2)
                                                                                                                                          {
                                                                                                                                             continue loop43;
                                                                                                                                          }
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             if(_loc9_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   loop50:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§6P§);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop46;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  addr126:
                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     addr134:
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop48;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop48;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr123);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               break loop50;
                                                                                                                                                            }
                                                                                                                                                            addr220:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§=!H§);
                                                                                                                                                               addr239:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  addr240:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     addr241:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§6P§);
                                                                                                                                                                        addr219:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr220);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr237:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr219);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr187);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr240);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr179:
                                                                                                                                                if(_loc8_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop44;
                                                                                                                                                }
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                             }
                                                                                                                                             §§goto(addr187);
                                                                                                                                          }
                                                                                                                                          §§goto(addr239);
                                                                                                                                       }
                                                                                                                                       §§goto(addr219);
                                                                                                                                    }
                                                                                                                                    §§goto(addr522);
                                                                                                                                 }
                                                                                                                                 §§goto(addr461);
                                                                                                                              }
                                                                                                                              §§goto(addr396);
                                                                                                                           }
                                                                                                                           §§goto(addr391);
                                                                                                                        }
                                                                                                                        §§goto(addr126);
                                                                                                                        §§push(_loc7_);
                                                                                                                     }
                                                                                                                     §§goto(addr37);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr237);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(_loc3_.col2);
                                                                                                      while(_loc9_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr428);
                                                                                                         }
                                                                                                         §§goto(addr441);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                      addr418:
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr229);
                                                                                                }
                                                                                                addr229:
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop39;
                                                                                       }
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          §§goto(addr449);
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                       addr446:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr453);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr446);
                                                                        }
                                                                        addr445:
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr445);
                                                                  }
                                                                  addr356:
                                                               }
                                                               §§goto(addr520);
                                                            }
                                                            §§goto(addr433);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr486);
                                             }
                                             §§goto(addr356);
                                          }
                                          §§goto(addr521);
                                       }
                                       §§goto(addr441);
                                    }
                                    §§goto(addr340);
                                 }
                                 §§goto(addr398);
                              }
                           }
                           §§goto(addr521);
                        }
                     }
                     §§goto(addr522);
                  }
               }
            }
         }
         §§goto(addr489);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.§3,§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               while(!(_loc3_ && param2))
               {
                  param1.I = 0;
                  if(!_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
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
            if(!(_loc10_ && param2))
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc10_ && param1))
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§#!K§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§#!K§(param3,this.m_v2);
            §§push(b2Math.§8n§(param1,_loc6_));
            if(_loc11_ || param1)
            {
               §§push(§§pop() - param2);
               if(!(_loc10_ && param1))
               {
                  addr84:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§8n§(param1,_loc7_));
               if(_loc11_ || param1)
               {
                  §§push(§§pop() - param2);
                  if(_loc11_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               if(!_loc10_)
               {
                  §§push(_loc8_);
                  if(_loc11_ || param3)
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
                              §§push(0);
                              if(_loc11_)
                              {
                                 continue loop0;
                              }
                              loop8:
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc9_);
                                       if(_loc11_ || param1)
                                       {
                                          §§push(-§§pop());
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(_loc8_);
                                             if(_loc11_ || param2)
                                             {
                                                §§push(_loc9_);
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc11_ || param3)
                                                   {
                                                      addr567:
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc11_)
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(_loc11_)
                                                         {
                                                            addr574:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc11_ || param2)
                                                            {
                                                               addr582:
                                                               §§push(_loc8_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr593:
                                                                     §§push(§§pop() - _loc9_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr597:
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           addr607:
                                                                           §§push(§§pop() * _loc7_.x);
                                                                        }
                                                                        §§pop().x = §§pop() + §§pop();
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§goto(addr636);
                                                                           }
                                                                           §§push(_loc6_);
                                                                           §§push(_loc9_);
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc11_ || param3)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!(_loc10_ && param3))
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                addr488:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr491:
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      addr499:
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         addr507:
                                                                                                         §§push(§§pop() - _loc9_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr511:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc11_ || param2)
                                                                                                            {
                                                                                                               addr521:
                                                                                                               §§push(§§pop() * _loc7_.y);
                                                                                                            }
                                                                                                            §§pop().y = §§pop() + §§pop();
                                                                                                            loop5:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr238:
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param4);
                                                                                                                  §§push(_loc5_.x);
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     if(!(_loc10_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr263:
                                                                                                                           §§push(§§pop() + _loc7_.x);
                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 3);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        loop7:
                                                                                                                        while(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.y);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    addr213:
                                                                                                                                    §§push(§§pop() + _loc7_.y);
                                                                                                                                    if(_loc11_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / 3);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    if(_loc11_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(0.5);
                                                                                                                                       if(_loc10_ && param3)
                                                                                                                                       {
                                                                                                                                          break loop6;
                                                                                                                                       }
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    addr638:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             addr290:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc11_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr322:
                                                                                                                                                         §§push(_loc6_.y);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               addr329:
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  addr332:
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc9_);
                                                                                                                                                                     if(_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        addr350:
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        if(_loc11_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr347:
                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop() + §§pop();
                                                                                                                                                                        break loop7;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr350);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr347);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr329);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr332);
                                                                                                                                                }
                                                                                                                                                §§goto(addr350);
                                                                                                                                             }
                                                                                                                                             §§goto(addr332);
                                                                                                                                          }
                                                                                                                                          §§goto(addr322);
                                                                                                                                       }
                                                                                                                                       §§goto(addr290);
                                                                                                                                    }
                                                                                                                                    addr441:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr213);
                                                                                                                        }
                                                                                                                        while(_loc11_)
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr410:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr413:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr419:
                                                                                                                                                            §§push(§§pop() - _loc9_);
                                                                                                                                                            if(!(_loc10_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr439:
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               if(_loc11_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr436:
                                                                                                                                                                  §§push(_loc7_.x);
                                                                                                                                                               }
                                                                                                                                                               §§pop().x = §§pop() + §§pop();
                                                                                                                                                               §§goto(addr441);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr439);
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr439);
                                                                                                                                                }
                                                                                                                                                §§goto(addr436);
                                                                                                                                             }
                                                                                                                                             §§goto(addr413);
                                                                                                                                          }
                                                                                                                                          §§goto(addr410);
                                                                                                                                       }
                                                                                                                                       §§goto(addr419);
                                                                                                                                    }
                                                                                                                                    §§goto(addr439);
                                                                                                                                 }
                                                                                                                                 §§goto(addr413);
                                                                                                                              }
                                                                                                                              §§goto(addr439);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 addr634:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr633:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr370:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr263);
                                                                                                               }
                                                                                                               addr195:
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr521);
                                                                                                      }
                                                                                                      §§goto(addr511);
                                                                                                   }
                                                                                                   §§goto(addr521);
                                                                                                }
                                                                                                §§goto(addr511);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr499);
                                                                                    }
                                                                                    §§goto(addr507);
                                                                                 }
                                                                                 §§goto(addr488);
                                                                              }
                                                                              §§goto(addr511);
                                                                           }
                                                                           §§goto(addr491);
                                                                        }
                                                                     }
                                                                     §§goto(addr607);
                                                                  }
                                                                  §§goto(addr597);
                                                               }
                                                            }
                                                            §§goto(addr597);
                                                         }
                                                         §§goto(addr607);
                                                      }
                                                      §§goto(addr597);
                                                   }
                                                   §§goto(addr574);
                                                }
                                                §§goto(addr593);
                                             }
                                             §§goto(addr567);
                                          }
                                          §§goto(addr582);
                                       }
                                       §§goto(addr597);
                                    }
                                 }
                                 addr636:
                                 return 0;
                              }
                           }
                           continue;
                        }
                        §§goto(addr633);
                     }
                  }
                  §§goto(addr634);
               }
               §§goto(addr638);
            }
            §§goto(addr84);
         }
         §§goto(addr36);
      }
      
      public function §="5§() : Number
      {
         return this.§,!P§;
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
      
      public function §<!I§() : b2Vec2
      {
         return this.§&!5§;
      }
      
      public function §>r§() : b2Vec2
      {
         return this.§[!G§;
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
      
      public function §3!!§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(!(_loc3_ && this))
            {
               §§push(this.m_coreV1.x);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && this))
                  {
                     addr55:
                     §§push(_loc2_.col2.x);
                     if(_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop().y);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    addr99:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr116:
                                          addr114:
                                          §§push(this.m_coreV1.x);
                                          if(_loc4_ || param1)
                                          {
                                             §§goto(addr157);
                                          }
                                          addr157:
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push(_loc2_.col2.y);
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr152:
                                                §§push(§§pop() * this.m_coreV1.y);
                                             }
                                          }
                                          return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr157);
            }
            §§goto(addr55);
         }
         §§goto(addr99);
      }
      
      public function §4"+§() : b2EdgeShape
      {
         return this.§[!"§;
      }
      
      public function §-!,§() : b2EdgeShape
      {
         return this.§5M§;
      }
      
      public function §@p§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!_loc9_)
         {
            §§push(_loc4_.col1.x);
            if(_loc10_)
            {
               §§push(this.m_coreV1.x);
               if(_loc10_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_ || this)
                  {
                     addr64:
                     §§push(_loc4_.col2.x);
                     if(_loc10_ || param1)
                     {
                        addr59:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc10_)
                     {
                        addr68:
                        var _loc5_:Number = §§pop();
                        §§push(param1.position.y);
                        if(_loc10_ || this)
                        {
                           §§push(_loc4_.col1.y);
                           if(_loc10_)
                           {
                              §§push(this.m_coreV1.x);
                              if(_loc10_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc10_ || param3)
                                 {
                                    addr112:
                                    §§push(_loc4_.col2.y);
                                    if(_loc10_ || this)
                                    {
                                       addr107:
                                       §§push(§§pop() * this.m_coreV1.y);
                                    }
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    if(_loc10_ || param2)
                                    {
                                       addr121:
                                       var _loc6_:Number = §§pop();
                                       §§push(param1.position.x);
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(_loc4_.col1.x);
                                          if(_loc10_)
                                          {
                                             §§push(this.m_coreV2.x);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc9_)
                                                {
                                                   addr150:
                                                   §§push(_loc4_.col2.x);
                                                   if(!_loc9_)
                                                   {
                                                      addr159:
                                                      §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc10_)
                                                {
                                                   addr164:
                                                   var _loc7_:Number = §§pop();
                                                   §§push(param1.position.y);
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc4_.col1.y);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(this.m_coreV2.x);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr193:
                                                               §§push(_loc4_.col2.y);
                                                               if(_loc10_)
                                                               {
                                                                  addr202:
                                                                  §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc10_ || param3)
                                                            {
                                                               addr211:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc10_ || param3)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           §§push(param3);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 addr338:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(_loc7_);
                                                                                 if(_loc10_ || param3)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc10_ || param2)
                                                                                    {
                                                                                       addr373:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr357:
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr370:
                                                                                             §§push(§§pop() * param3);
                                                                                          }
                                                                                       }
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          §§push(this.§while§);
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§while§);
                                                                                                      loop5:
                                                                                                      while(_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc9_ && this)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         if(_loc10_ || param3)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr265:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§while§);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                     §§goto(addr265);
                                                                                                                  }
                                                                                                                  while(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr221);
                                                                                                                  }
                                                                                                                  addr221:
                                                                                                                  addr281:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§while§);
                                                                                                                     addr376:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        addr377:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr374:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§while§);
                                                                                                                  break loop5;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                      }
                                                                                                   }
                                                                                                   addr275:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr374);
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr373);
                                                                           }
                                                                           §§goto(addr370);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr64);
               }
               §§goto(addr59);
            }
            §§goto(addr64);
         }
         §§goto(addr68);
      }
      
      b2internal function §^!Q§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§5M§ = param1;
         }
         loop0:
         do
         {
            this.m_coreV1 = param2;
            while(true)
            {
               this.m_cornerDir1 = param3;
               while(!_loc6_)
               {
                  this.m_cornerConvex1 = param4;
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc6_);
         
      }
      
      b2internal function §1g§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§[!"§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               loop2:
               while(_loc6_ || param2)
               {
                  this.m_cornerConvex2 = param4;
                  if(!(_loc5_ && this))
                  {
                     addr45:
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           this.m_cornerDir2 = param3;
                           continue loop2;
                           §§goto(addr45);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
   }
}
