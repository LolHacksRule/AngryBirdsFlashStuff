package §=!!§
{
   import §!§.b2AABB;
   import §!§.b2RayCastInput;
   import §!§.b2RayCastOutput;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §?!J§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var § !V§:Number;
      
      b2internal var §!!f§:b2Vec2;
      
      b2internal var §4!d§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §^!j§:b2EdgeShape;
      
      b2internal var §@8§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§?!J§ = new b2Vec2();
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
                        addr446:
                        while(true)
                        {
                           this.§!!f§ = new b2Vec2();
                           continue loop0;
                        }
                        loop18:
                        for(; _loc4_ || param2; while(_loc4_ || param1)
                        {
                           this.m_cornerDir1 = this.§!!f§;
                           while(!(_loc3_ && param1))
                           {
                              §§push(this.m_cornerDir2);
                              §§push(this.§!!f§.x);
                              if(!_loc3_)
                              {
                                 §§push(-§§pop());
                              }
                              §§push(this.§!!f§.y);
                              if(_loc4_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().Set(§§pop(),§§pop());
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 §§goto(addr49);
                              }
                              else
                              {
                                 §§goto(addr258);
                              }
                           }
                        })
                        {
                           §§push(this.m_coreV1);
                           §§push(b2Settings.b2_toiSlop);
                           if(!_loc3_)
                           {
                              §§push(-§§pop());
                              if(!_loc3_)
                              {
                                 §§push(this.§!!f§.x);
                                 if(!_loc3_)
                                 {
                                    §§push(this.§4!d§.x);
                                    if(!(_loc3_ && param2))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(this.m_v1.x);
                                             if(_loc4_)
                                             {
                                                addr202:
                                                §§push(§§pop() + §§pop());
                                                §§push(b2Settings.b2_toiSlop);
                                                if(!_loc3_)
                                                {
                                                   addr206:
                                                   §§push(-§§pop());
                                                   if(!(_loc3_ && param2))
                                                   {
                                                      §§push(this.§!!f§.y);
                                                      if(_loc4_ || param1)
                                                      {
                                                         addr234:
                                                         §§push(§§pop() - this.§4!d§.y);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr258:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr256:
                                                               §§push(§§pop() + this.m_v1.y);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            while(!(_loc3_ && param2))
                                                            {
                                                               §§push(this.m_coreV2);
                                                               §§push(b2Settings.b2_toiSlop);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(this.§!!f§.x);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this.§4!d§.x);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(this.m_v2.x);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr121:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(b2Settings.b2_toiSlop);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§push(this.§!!f§.y);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§4!d§.y);
                                                                                             if(!(_loc3_ && param2))
                                                                                             {
                                                                                                addr156:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr152:
                                                                                                   §§push(this.m_v2.y);
                                                                                                }
                                                                                                §§pop().Set(§§pop(),§§pop());
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§goto(addr156);
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr156);
                                                                                    }
                                                                                    §§goto(addr152);
                                                                                 }
                                                                                 §§goto(addr156);
                                                                              }
                                                                              §§goto(addr121);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                               }
                                                               §§goto(addr121);
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §5Q§ = b2internal:: 8;
                                                               while(true)
                                                               {
                                                                  this.§@8§ = null;
                                                                  while(!(_loc3_ && param2))
                                                                  {
                                                                     addr386:
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        this.§^!j§ = null;
                                                                        loop12:
                                                                        while(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              this.m_v1 = param1;
                                                                              addr358:
                                                                              while(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.m_v2 = param2;
                                                                                    addr346:
                                                                                    loop15:
                                                                                    for(; !(_loc3_ && _loc3_); while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          this.§ !V§ = this.§4!d§.Normalize();
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop15;
                                                                                    },while(true)
                                                                                    {
                                                                                       super();
                                                                                       continue loop9;
                                                                                    })
                                                                                    {
                                                                                       §§push(this.§4!d§);
                                                                                       §§push(this.m_v2.x);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(this.m_v1.x);
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             addr322:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             §§push(this.m_v2.y);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr327:
                                                                                                §§push(§§pop() - this.m_v1.y);
                                                                                             }
                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr327);
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              continue loop0;
                                                                              addr358:
                                                                           }
                                                                           §§goto(addr446);
                                                                           while(_loc4_ || param1)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(this.§!!f§);
                                                                                 §§push(this.§4!d§.y);
                                                                                 §§push(this.§4!d§.x);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().Set(§§pop(),§§pop());
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop1;
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr358);
                                                                                 }
                                                                                 §§goto(addr60);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     addr427:
                                                                     while(true)
                                                                     {
                                                                        this.m_cornerDir1 = new b2Vec2();
                                                                        continue loop2;
                                                                        §§goto(addr386);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            addr258:
                                                            addr402:
                                                         }
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr202);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr365);
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
         if(_loc18_ || this)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc19_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(!_loc19_)
         {
            §§push(§§pop() - param2.p1.y);
            if(!_loc19_)
            {
               addr63:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc4_ = param3.R;
            §§push(param3.position.x);
            if(_loc18_)
            {
               §§push(_loc4_.col1.x);
               if(_loc18_)
               {
                  §§push(this.m_v1.x);
                  if(_loc18_)
                  {
                     addr107:
                     §§push(§§pop() * §§pop());
                     if(_loc18_ || this)
                     {
                        §§push(_loc4_.col2.x);
                        if(!(_loc19_ && this))
                        {
                           §§push(§§pop() * this.m_v1.y);
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc19_ && param1))
                     {
                        addr115:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc19_ && param1))
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc18_)
                        {
                           §§push(this.m_v1.x);
                           if(!(_loc19_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc18_)
                              {
                                 addr145:
                                 §§push(_loc4_.col2.y);
                                 if(_loc18_)
                                 {
                                    addr154:
                                    §§push(§§pop() + §§pop() * this.m_v1.y);
                                 }
                                 §§goto(addr154);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc18_ || param3)
                              {
                                 addr164:
                                 var _loc8_:Number = §§pop();
                                 §§push(param3.position.y);
                                 if(_loc18_ || this)
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(_loc18_)
                                    {
                                       §§push(this.m_v2.x);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc19_)
                                          {
                                             addr188:
                                             §§push(_loc4_.col2.y);
                                             if(_loc18_ || this)
                                             {
                                                addr198:
                                                §§push(§§pop() * this.m_v2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc18_)
                                             {
                                                addr217:
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_ || this)
                                                {
                                                   §§push(_loc8_);
                                                }
                                                var _loc9_:Number = §§pop();
                                                §§push(param3.position.x);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc4_.col1.x);
                                                   if(_loc18_)
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         addr264:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc19_ && param3))
                                                         {
                                                            §§push(_loc4_.col2.x);
                                                            if(!(_loc19_ && this))
                                                            {
                                                               §§push(§§pop() * this.m_v2.y);
                                                            }
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc19_ && param3))
                                                         {
                                                            addr273:
                                                            §§push(§§pop() - _loc7_);
                                                            if(!_loc19_)
                                                            {
                                                               addr276:
                                                               §§push(-§§pop());
                                                               if(!_loc18_)
                                                               {
                                                               }
                                                               addr280:
                                                               var _loc10_:* = §§pop();
                                                               §§push(100 * Number.MIN_VALUE);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc5_);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(_loc19_ && param2)
                                                                           {
                                                                           }
                                                                           addr323:
                                                                           var _loc12_:* = §§pop();
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       §§push(param2.p1);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(!(_loc19_ && param2))
                                                                                                      {
                                                                                                         addr812:
                                                                                                         §§push(param2.p1.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc19_ && param2))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc14_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop30:
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
                                                                                                                                          addr808:
                                                                                                                                          loop44:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             loop6:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_ && param3)
                                                                                                                                                   {
                                                                                                                                                      continue loop44;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  while(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr383);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ || param3))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr748);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr752);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr797);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop44;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(_loc19_ && param1)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr721);
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
                                                                                                      §§goto(addr776);
                                                                                                   }
                                                                                                   §§goto(addr669);
                                                                                                }
                                                                                                §§goto(addr747);
                                                                                             }
                                                                                             §§goto(addr711);
                                                                                          }
                                                                                          §§goto(addr808);
                                                                                       }
                                                                                       §§goto(addr812);
                                                                                    }
                                                                                    §§goto(addr527);
                                                                                 }
                                                                                 addr383:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                if(_loc18_ || param3)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(!(_loc19_ && param2))
                                                                                                   {
                                                                                                      if(!(_loc18_ || param3))
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(_loc19_ && this)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      §§push(1 + _loc11_);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            loop12:
                                                                                                            for(; !_loc19_; while(true)
                                                                                                            {
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            },return §§pop())
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     loop23:
                                                                                                                     while(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           break loop3;
                                                                                                                        }
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           loop32:
                                                                                                                           while(_loc18_)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              addr606:
                                                                                                                              §§push(_loc12_);
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             addr620:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                addr621:
                                                                                                                                                addr798:
                                                                                                                                                while(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   param1.fraction = _loc15_;
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr620:
                                                                                                                                          }
                                                                                                                                          addr493:
                                                                                                                                          if(!(_loc18_ || param2))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ || param3)
                                                                                                                                          {
                                                                                                                                             _loc17_ = §§pop();
                                                                                                                                             loop47:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.normal);
                                                                                                                                                loop48:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(_loc18_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr446:
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(_loc19_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop() / §§pop();
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(true);
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop48;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr621);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop47;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr513);
                                                                                                                                                         addr473:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr472:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      §§goto(addr473);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr669:
                                                                                                                                             while(_loc18_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                break loop18;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                break loop23;
                                                                                                                                             }
                                                                                                                                             addr775:
                                                                                                                                             addr669:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr751:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       addr751:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc19_ && param3)
                                                                                                                                       {
                                                                                                                                          continue loop36;
                                                                                                                                       }
                                                                                                                                       if(!(_loc18_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop45;
                                                                                                                                       }
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          break loop32;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr752:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr606);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       break loop12;
                                                                                                                                    }
                                                                                                                                    continue loop35;
                                                                                                                                 }
                                                                                                                                 §§goto(addr773);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr775);
                                                                                                                           }
                                                                                                                           addr602:
                                                                                                                        }
                                                                                                                        §§goto(addr620);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc19_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                              {
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    §§goto(addr669);
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                       addr721:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr677);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr669);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr586:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                  }
                                                                                                                  addr797:
                                                                                                               }
                                                                                                               §§goto(addr798);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc19_ && param1)
                                                                                                               {
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               §§goto(addr586);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr607);
                                                                                                      }
                                                                                                      §§goto(addr772);
                                                                                                   }
                                                                                                   §§goto(addr606);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§goto(addr751);
                                                                                                   §§push(_loc14_);
                                                                                                }
                                                                                                addr748:
                                                                                             }
                                                                                             §§goto(addr602);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr398);
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr751);
                                                                           }
                                                                           §§goto(addr669);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           addr318:
                                                                           §§push(-§§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr280);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr276);
                                             }
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!_loc18_)
                                          {
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr164);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr107);
            }
            §§goto(addr115);
         }
         §§goto(addr63);
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
         if(_loc9_ || param1)
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
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
                           if(_loc9_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr516:
                                 addr372:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                 }
                                 if(!(_loc9_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() + §§pop());
                                 loop47:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       addr382:
                                       if(!(_loc8_ && param2))
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(Number(§§pop()));
                                             loop48:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop49:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr214:
                                                   loop50:
                                                   while(_loc9_ || param1)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                         loop51:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr226:
                                                               if(_loc9_ || param2)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(param1.§&1§);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        addr191:
                                                                        addr160:
                                                                        loop53:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr192:
                                                                           addr438:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§3!E§);
                                                                                             addr182:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                addr183:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr184:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr132:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop47;
                                                                                                            }
                                                                                                            continue loop48;
                                                                                                         }
                                                                                                         continue loop50;
                                                                                                      }
                                                                                                      continue loop53;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr205:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2.position);
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                addr443:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.col1);
                                                                                                   addr445:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         §§push(this.m_v1);
                                                                                                         if(!(_loc9_ || param2))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc8_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.col2);
                                                                                                               addr473:
                                                                                                               while(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                               }
                                                                                                               §§goto(addr516);
                                                                                                            }
                                                                                                            addr471:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.m_v1);
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr492:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr493:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        addr494:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr495:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              addr496:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr394:
                                                                                                                                 §§push(param2.position);
                                                                                                                                 addr397:
                                                                                                                                 while(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    break loop47;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr491:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            addr530:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr531:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr532:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr533:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr534:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr493);
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr234:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§&1§);
                                                                                    addr236:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr237:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr238:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§3!E§);
                                                                                             addr209:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                addr210:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr211:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr132);
                                                                              }
                                                                              §§goto(addr211);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param2.position);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc9_ || param2))
                                                                                 {
                                                                                    continue loop47;
                                                                                 }
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       §§push(_loc3_.col1);
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_v2);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop43:
                                                                                                         while(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(_loc3_.col2);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(this.m_v2);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      break loop51;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr481);
                                                                                                                                                }
                                                                                                                                                addr353:
                                                                                                                                             }
                                                                                                                                             §§goto(addr530);
                                                                                                                                          }
                                                                                                                                          §§goto(addr491);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr432:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             break loop43;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr431:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr431);
                                                                                                                                    }
                                                                                                                                    addr430:
                                                                                                                                 }
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr432);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        addr428:
                                                                                                                        addr330:
                                                                                                                     }
                                                                                                                     §§goto(addr353);
                                                                                                                  }
                                                                                                                  §§goto(addr473);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr428);
                                                                                                               }
                                                                                                               addr427:
                                                                                                            }
                                                                                                            §§goto(addr532);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr434:
                                                                                                            while(!_loc8_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break loop50;
                                                                                                            }
                                                                                                            §§goto(addr495);
                                                                                                         }
                                                                                                         addr312:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                             addr419:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§goto(addr427);
                                                                                                         §§push(_loc3_.col2);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                      break loop51;
                                                                                                   }
                                                                                                   §§goto(addr473);
                                                                                                   addr423:
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr529);
                                                                                          }
                                                                                       }
                                                                                       while(_loc9_ || param1)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          while(!(_loc8_ && param2))
                                                                                          {
                                                                                             §§goto(addr419);
                                                                                             §§push(this.m_v2);
                                                                                             if(!(_loc9_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr493);
                                                                                             }
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr445);
                                                                                       addr402:
                                                                                    }
                                                                                    §§goto(addr533);
                                                                                 }
                                                                                 §§goto(addr494);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        if(!(_loc9_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           addr170:
                                                                           §§push(_loc5_);
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              loop66:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§3!E§);
                                                                                 addr116:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             addr127:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr37);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop66;
                                                                                             }
                                                                                             §§goto(addr184);
                                                                                          }
                                                                                          addr126:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr209);
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr182);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr191);
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§push(_loc7_);
                                                            addr147:
                                                            break;
                                                            if(!(_loc9_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(param1.§&1§);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop49;
                                                                                    }
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       §§push(param1.§3!E§);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc9_ || param2))
                                                                                                      {
                                                                                                         §§goto(addr127);
                                                                                                      }
                                                                                                      addr37:
                                                                                                   }
                                                                                                   continue;
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr210);
                                                                                             }
                                                                                             §§goto(addr183);
                                                                                          }
                                                                                          §§goto(addr126);
                                                                                       }
                                                                                       §§goto(addr116);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 §§goto(addr211);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr158:
                                                                                 §§goto(addr160);
                                                                                 §§push(param1.§&1§);
                                                                              }
                                                                              §§goto(addr191);
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr160);
                                                               }
                                                               §§goto(addr158);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               §§goto(addr363);
                                                            }
                                                            §§goto(addr423);
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                      §§goto(addr534);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      §§goto(addr438);
                                                      §§goto(addr214);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr443);
                                       }
                                       break;
                                    }
                                    §§goto(addr434);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr402);
                                    §§goto(addr382);
                                 }
                              }
                           }
                           §§goto(addr527);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.§#!3§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               while(!_loc3_)
               {
                  param1.I = 0;
                  if(!_loc3_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc11_ && param1))
         {
            §§push(param2);
            if(_loc10_)
            {
               addr30:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc10_ || this)
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§#@§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§#@§(param3,this.m_v2);
            §§push(b2Math.§,w§(param1,_loc6_));
            if(!(_loc11_ && param1))
            {
               §§push(§§pop() - param2);
               if(!(_loc11_ && param2))
               {
                  addr78:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§,w§(param1,_loc7_));
               if(_loc10_)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param3)
                  {
                     addr95:
                     §§push(Number(§§pop()));
                  }
                  var _loc9_:* = §§pop();
                  if(_loc10_ || param2)
                  {
                     §§push(_loc8_);
                     loop0:
                     while(true)
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc9_);
                              loop2:
                              do
                              {
                                 §§push(0);
                                 if(!(_loc11_ && param2))
                                 {
                                    if(_loc11_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       while(true)
                                       {
                                          if(_loc10_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                §§push(_loc9_);
                                                if(!(_loc11_ && param1))
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc10_ || param2)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§push(_loc6_.x);
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        addr466:
                                                                        §§push(_loc8_);
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           addr474:
                                                                           §§push(_loc8_);
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(_loc10_ || param2)
                                                                              {
                                                                              }
                                                                              addr503:
                                                                              §§pop().x = §§pop() + §§pop() * §§pop();
                                                                              addr501:
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 §§push(_loc9_);
                                                                                 if(_loc10_ || param3)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr345:
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      addr354:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr357:
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc10_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc11_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr377:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!(_loc11_ && param3))
                                                                                                                  {
                                                                                                                     addr385:
                                                                                                                     §§push(_loc7_.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && param1))
                                                                                                                     {
                                                                                                                        addr397:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(_loc10_ || param2)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 addr289:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc10_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.x);
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc11_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          return 0;
                                                                                                                                       }
                                                                                                                                       addr685:
                                                                                                                                       §§push(param4);
                                                                                                                                       §§push(_loc5_.y);
                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(_loc10_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc7_.y);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() / 3);
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / 3);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr289);
                                                                                                                           §§goto(addr397);
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                        addr259:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           addr683:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              addr684:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                 {
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!(_loc11_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(!(_loc11_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!(_loc11_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr643:
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr665:
                                                                                                                                                               §§pop().x = §§pop() + §§pop();
                                                                                                                                                               while(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop9;
                                                                                                                                                                  §§goto(addr665);
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!(_loc11_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr518:
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(_loc10_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(!(_loc11_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              if(!(_loc11_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr579:
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr259);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr580:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr578:
                                                                                                                                                                                 §§goto(addr579);
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(!(_loc11_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - _loc9_);
                                                                                                                                                                                    if(!_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       if(_loc11_ && param3)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr578);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr577:
                                                                                                                                                                                    §§goto(addr578);
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr577);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc7_.y);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr578);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr577);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr579);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr518);
                                                                                                                                                               addr666:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr665);
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(!(_loc11_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr654:
                                                                                                                                                            §§push(§§pop() - _loc9_);
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr661:
                                                                                                                                                                  §§push(_loc7_.x);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr665);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr665);
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr643);
                                                                                                                                                }
                                                                                                                                                §§goto(addr654);
                                                                                                                                             }
                                                                                                                                             §§goto(addr661);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr643);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr682:
                                                                                                                     }
                                                                                                                     §§goto(addr685);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 §§goto(addr345);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr499:
                                                                              §§goto(addr501);
                                                                              §§push(_loc7_.x);
                                                                           }
                                                                        }
                                                                        §§goto(addr499);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                            §§goto(addr499);
                                                         }
                                                         §§goto(addr503);
                                                      }
                                                      §§goto(addr474);
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr503);
                                             }
                                             addr415:
                                          }
                                          §§goto(addr580);
                                          if(!(_loc10_ || this))
                                          {
                                             continue;
                                          }
                                          if(!_loc11_)
                                          {
                                             §§push(0.5);
                                             if(!(_loc10_ || param2))
                                             {
                                                continue loop2;
                                             }
                                             if(!(_loc10_ || param3))
                                             {
                                                §§goto(addr683);
                                             }
                                             §§push(_loc6_.x);
                                             if(_loc10_ || this)
                                             {
                                                §§push(_loc5_.x);
                                                if(!(_loc11_ && param3))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(_loc5_.y);
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  addr176:
                                                                  §§push(_loc6_.y);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr180:
                                                                     §§push(_loc5_.y);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr187:
                                                                           §§push(_loc7_.x);
                                                                           if(_loc11_)
                                                                           {
                                                                           }
                                                                           addr195:
                                                                           §§push(§§pop() * (§§pop() - §§pop() * §§pop()));
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     §§goto(addr195);
                                                                     §§push(§§pop() - _loc5_.x);
                                                                  }
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                   }
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr666);
                                       }
                                    }
                                    §§goto(addr397);
                                 }
                                 §§goto(addr684);
                              }
                              while(!_loc10_);
                              
                              if(!_loc11_)
                              {
                                 return §§pop();
                              }
                              continue loop0;
                           }
                           §§goto(addr682);
                        }
                     }
                  }
                  §§goto(addr415);
               }
               §§goto(addr95);
            }
            §§goto(addr78);
         }
         §§goto(addr30);
      }
      
      public function §>!3§() : Number
      {
         return this.§ !V§;
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
      
      public function §+!_§() : b2Vec2
      {
         return this.§!!f§;
      }
      
      public function § t§() : b2Vec2
      {
         return this.§4!d§;
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
      
      public function §5!l§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(!_loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr80:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    addr84:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_)
                                    {
                                       addr89:
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_)
                                       {
                                          addr96:
                                          §§push(this.m_coreV1.x);
                                          if(_loc4_)
                                          {
                                             addr99:
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_ || param1)
                                             {
                                             }
                                             §§goto(addr127);
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr80);
                  }
                  addr127:
                  §§push(_loc2_.col2.y);
                  if(!_loc3_)
                  {
                     addr122:
                     §§push(§§pop() * this.m_coreV1.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop() + (§§pop() + §§pop()));
               }
               §§goto(addr96);
            }
            §§goto(addr89);
         }
         §§goto(addr84);
      }
      
      public function §[!c§() : b2EdgeShape
      {
         return this.§^!j§;
      }
      
      public function §@`§() : b2EdgeShape
      {
         return this.§@8§;
      }
      
      public function §[!L§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc10_)
         {
            §§push(_loc4_.col1.x);
            if(!_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_ || this)
                  {
                     addr44:
                     §§push(_loc4_.col2.x);
                     if(_loc10_ || this)
                     {
                        addr58:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr58);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc9_)
                  {
                     addr62:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(!_loc9_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc10_)
                     {
                        §§push(this.m_coreV1.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc9_ && param2))
                           {
                              addr102:
                              §§push(_loc4_.col2.y);
                              if(_loc10_ || param2)
                              {
                                 addr97:
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc10_ || param3)
                              {
                                 addr111:
                                 var _loc6_:Number = §§pop();
                                 §§push(param1.position.x);
                                 if(_loc10_ || param3)
                                 {
                                    §§push(_loc4_.col1.x);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(this.m_coreV2.x);
                                       if(!_loc9_)
                                       {
                                          addr155:
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_)
                                          {
                                             §§push(_loc4_.col2.x);
                                             if(_loc10_ || param2)
                                             {
                                                §§push(§§pop() * this.m_coreV2.y);
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc10_)
                                          {
                                             addr159:
                                             var _loc7_:Number = §§pop();
                                             §§push(param1.position.y);
                                             if(!_loc9_)
                                             {
                                                §§push(_loc4_.col1.y);
                                                if(!_loc9_)
                                                {
                                                   §§push(this.m_coreV2.x);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         addr193:
                                                         §§push(_loc4_.col2.y);
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            addr203:
                                                            §§push(§§pop() * this.m_coreV2.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr212:
                                                         var _loc8_:Number = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        §§push(param3);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              addr323:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(_loc7_);
                                                                              if(_loc10_ || param3)
                                                                              {
                                                                              }
                                                                              addr347:
                                                                              §§push(_loc8_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr362:
                                                                                 if(§§pop() <= §§pop() + §§pop() * param3)
                                                                                 {
                                                                                    §§push(this.§?!J§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(this.§?!J§);
                                                                                                      loop3:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         if(_loc10_ || param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr276:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                               addr283:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr364:
                                                                                                            }
                                                                                                            loop11:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§?!J§);
                                                                                                               addr366:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  addr367:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§?!J§);
                                                                                                      addr274:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         addr275:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            §§goto(addr276);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr367);
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§push(param2);
                                                                           if(!(_loc9_ && param3))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 §§goto(addr347);
                                                                              }
                                                                              §§goto(addr362);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr111);
               }
               §§goto(addr58);
            }
            §§goto(addr44);
         }
         §§goto(addr62);
      }
      
      b2internal function §0!=§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§@8§ = param1;
            do
            {
               this.m_coreV1 = param2;
               do
               {
                  this.m_cornerDir1 = param3;
                  do
                  {
                     this.m_cornerConvex1 = param4;
                  }
                  while(_loc6_ && this);
                  
               }
               while(!(_loc5_ || this));
               
            }
            while(!_loc5_);
            
         }
      }
      
      b2internal function §=<§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§^!j§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               addr49:
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         while(true)
         {
            this.m_cornerDir2 = param3;
            while(!_loc6_)
            {
               this.m_cornerConvex2 = param4;
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr56);
      }
   }
}
