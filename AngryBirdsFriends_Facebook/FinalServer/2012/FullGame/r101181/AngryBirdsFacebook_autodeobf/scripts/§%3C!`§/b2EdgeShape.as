package §<!`§
{
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §55§.b2AABB;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §]!!§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §+!@§:Number;
      
      b2internal var §9+§:b2Vec2;
      
      b2internal var §4!$§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §=e§:b2EdgeShape;
      
      b2internal var §>c§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§]!!§ = new b2Vec2();
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
                     addr451:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        addr445:
                        while(true)
                        {
                           this.§9+§ = new b2Vec2();
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr380);
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
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(_loc19_ || param3)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc18_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc19_)
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
         if(!_loc18_)
         {
            §§push(_loc4_.col1.x);
            if(_loc19_)
            {
               §§push(this.m_v1.x);
               if(_loc19_)
               {
                  addr103:
                  §§push(§§pop() * §§pop());
                  if(!_loc18_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc18_ && param3))
                     {
                        §§push(§§pop() * this.m_v1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc19_ || param3)
                  {
                     addr112:
                     var _loc7_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc18_ && param2))
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc18_)
                        {
                           §§push(this.m_v1.x);
                           if(!(_loc18_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc19_ || param3)
                              {
                                 addr146:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc18_)
                                 {
                                    addr155:
                                    §§push(§§pop() + §§pop() * this.m_v1.y);
                                 }
                                 §§goto(addr155);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc18_ && this))
                              {
                                 addr164:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param3.position.y);
                              if(!(_loc18_ && this))
                              {
                                 §§push(_loc4_.col1.y);
                                 if(!_loc18_)
                                 {
                                    §§push(this.m_v2.x);
                                    if(_loc19_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          addr194:
                                          §§push(_loc4_.col2.y);
                                          if(!_loc18_)
                                          {
                                             addr203:
                                             §§push(§§pop() + §§pop() * this.m_v2.y);
                                             if(!(_loc18_ && param2))
                                             {
                                                addr223:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc18_ && param2))
                                                {
                                                   §§push(_loc8_);
                                                }
                                                var _loc9_:Number = §§pop();
                                                §§push(param3.position.x);
                                                if(_loc19_)
                                                {
                                                   §§push(_loc4_.col1.x);
                                                   if(!(_loc18_ && param3))
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_)
                                                         {
                                                            §§push(_loc4_.col2.x);
                                                            if(!(_loc18_ && this))
                                                            {
                                                               addr262:
                                                               §§push(§§pop() + §§pop() * this.m_v2.y);
                                                               if(!_loc19_)
                                                               {
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  addr281:
                                                                  §§push(-§§pop());
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     addr280:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(100 * Number.MIN_VALUE);
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc5_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() * _loc10_);
                                                                              if(!_loc19_)
                                                                              {
                                                                              }
                                                                              addr329:
                                                                              var _loc12_:* = §§pop();
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc18_ && param3))
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc19_ || param2)
                                                                                       {
                                                                                          §§push(param2.p1);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            addr805:
                                                                                                            §§push(param2.p1.y);
                                                                                                         }
                                                                                                         loop52:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            addr790:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     addr795:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        addr796:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr794:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr799:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc15_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              continue loop52;
                                                                                                                           }
                                                                                                                           §§push(0);
                                                                                                                           for(; _loc19_ || param2; while(_loc19_ || param3)
                                                                                                                           {
                                                                                                                              if(!(_loc18_ && param3))
                                                                                                                              {
                                                                                                                                 §§goto(addr750);
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr808);
                                                                                                                           })
                                                                                                                           {
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
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(param2.§,!§);
                                                                                                                                                   while(_loc19_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr399);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr734);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr732:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr755);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr795);
                                                                                                                                                }
                                                                                                                                                §§goto(addr759);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr732);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr794);
                                                                                                                        }
                                                                                                                        continue loop52;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr810:
                                                                                                      }
                                                                                                      §§goto(addr806);
                                                                                                   }
                                                                                                   §§goto(addr799);
                                                                                                }
                                                                                                §§goto(addr795);
                                                                                             }
                                                                                             §§goto(addr790);
                                                                                          }
                                                                                          §§goto(addr805);
                                                                                       }
                                                                                       §§goto(addr810);
                                                                                    }
                                                                                    addr399:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(false);
                                                                                       if(_loc18_ && param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop25:
                                                                                                while(_loc19_ || param2)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   while(_loc19_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            if(!(_loc19_ || param3))
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(!(_loc18_ && param2))
                                                                                                               {
                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                  {
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(1 + _loc11_);
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr757:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop17:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr759:
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop51;
                                                                                                                                    }
                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                    loop19:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       addr655:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr755:
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   loop21:
                                                                                                                                                   while(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop22:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         addr674:
                                                                                                                                                         while(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                            while(!(_loc18_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop9;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               addr609:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop41;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        addr635:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                              continue loop19;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop48;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop48;
                                                                                                                                                                        addr635:
                                                                                                                                                                     }
                                                                                                                                                                     loop38:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc19_ || param3))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop18;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr623:
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 continue loop22;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop21;
                                                                                                                                                                              §§goto(addr623);
                                                                                                                                                                           }
                                                                                                                                                                           addr624:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              addr807:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 break loop38;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr806:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr809:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(!(_loc18_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr609);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop15;
                                                                                                                                                   }
                                                                                                                                                   addr755:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                   }
                                                                                                                                                   addr750:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr755);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr673);
                                                                                                                                          }
                                                                                                                                          §§goto(addr809);
                                                                                                                                       }
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop51;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr807);
                                                                                                                  }
                                                                                                                  §§goto(addr757);
                                                                                                               }
                                                                                                               §§goto(addr674);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr594:
                                                                                                               if(_loc18_ && param3)
                                                                                                               {
                                                                                                                  continue loop50;
                                                                                                               }
                                                                                                               §§goto(addr602);
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                            }
                                                                                                            §§goto(addr677);
                                                                                                         }
                                                                                                         §§goto(addr655);
                                                                                                      }
                                                                                                      §§goto(addr614);
                                                                                                      if(_loc18_ && param3)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(param1.normal);
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         addr473:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            addr474:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               addr475:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  §§goto(addr638);
                                                                                                               }
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§goto(addr602);
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       if(_loc19_ || param3)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop43;
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr795);
                                                                              }
                                                                              §§goto(addr754);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              addr319:
                                                                              §§push(-§§pop());
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 addr327:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr329);
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            §§goto(addr262);
                                                            §§push(_loc7_);
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr280);
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(!_loc19_)
                                             {
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr112);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr103);
         }
         §§goto(addr112);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
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
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(param2.position);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.col1);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  loop18:
                                                                  while(!_loc9_)
                                                                  {
                                                                     §§push(this.m_v1);
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(§§pop().x);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.col2);
                                                                           addr459:
                                                                           while(!(_loc9_ && param2))
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              while(_loc8_ || param1)
                                                                              {
                                                                                 §§push(this.m_v1);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr484:
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop7;
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ && _loc3_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc3_.col2);
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             addr430:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop11;
                                                                                       addr425:
                                                                                    }
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr436:
                                                                                                while(_loc8_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   loop41:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.position);
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      while(_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc3_.col1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  break loop41;
                                                                                                               }
                                                                                                               §§push(_loc3_.col1);
                                                                                                               addr294:
                                                                                                               break;
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop42:
                                                                                                                     for(; _loc8_; while(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           break loop41;
                                                                                                                        }
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr209);
                                                                                                                           §§push(param1.§!8§);
                                                                                                                        }
                                                                                                                        §§goto(addr248);
                                                                                                                        §§goto(addr138);
                                                                                                                     })
                                                                                                                     {
                                                                                                                        §§push(this.m_v2);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop43:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.col2);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          addr342:
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(this.m_v2);
                                                                                                                                             if(_loc8_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      break loop34;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop45:
                                                                                                                                                      while(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            addr370:
                                                                                                                                                         }
                                                                                                                                                         while(_loc8_ || param2)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               addr226:
                                                                                                                                                               while(_loc8_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               continue loop39;
                                                                                                                                                            }
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr138:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc8_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop45;
                                                                                                                                                                  continue loop45;
                                                                                                                                                               }
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                   addr364:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr429);
                                                                                                                                             }
                                                                                                                                             §§goto(addr430);
                                                                                                                                          }
                                                                                                                                          while(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             §§goto(addr342);
                                                                                                                                          }
                                                                                                                                          continue loop5;
                                                                                                                                          addr487:
                                                                                                                                       }
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    §§goto(addr364);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           §§goto(addr364);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              §§goto(addr425);
                                                                                                                           }
                                                                                                                           addr395:
                                                                                                                        }
                                                                                                                        §§goto(addr429);
                                                                                                                     }
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr484);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr459);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     §§goto(addr487);
                                                                  }
                                                                  continue loop3;
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
               }
            }
         }
         §§goto(addr379);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            param1.§7!^§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               while(!(_loc4_ && this))
               {
                  param1.§^s§ = 0;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
         }
         §§goto(addr54);
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
            if(_loc11_ || param1)
            {
               addr31:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc11_)
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§2C§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§2C§(param3,this.m_v2);
            §§push(b2Math.§+'§(param1,_loc6_));
            if(_loc11_ || param1)
            {
               §§push(§§pop() - param2);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§+'§(param1,_loc7_));
            if(_loc11_)
            {
               §§push(§§pop() - param2);
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc10_)
            {
               §§push(_loc8_);
               if(_loc11_)
               {
                  §§push(0);
                  if(!_loc10_)
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
                                    if(!(_loc10_ && param3))
                                    {
                                       if(_loc11_ || param2)
                                       {
                                          §§push(_loc7_);
                                          §§push(_loc9_);
                                          if(_loc11_)
                                          {
                                             §§push(-§§pop());
                                             if(_loc11_ || param3)
                                             {
                                                §§push(_loc8_);
                                                if(_loc11_)
                                                {
                                                   §§push(_loc9_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr404:
                                                            §§push(_loc6_.x);
                                                            if(_loc11_ || param3)
                                                            {
                                                               addr413:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc11_ || param2)
                                                               {
                                                                  addr421:
                                                                  §§push(_loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr424:
                                                                     §§push(_loc8_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr427:
                                                                        §§push(§§pop() - _loc9_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr442:
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              addr439:
                                                                              §§push(_loc7_.x);
                                                                           }
                                                                           §§pop().x = §§pop() + §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              §§push(_loc9_);
                                                                              if(_loc11_ || param3)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc11_ || param2)
                                                                                                {
                                                                                                   addr299:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      addr307:
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc11_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc9_);
                                                                                                            if(_loc11_ || param3)
                                                                                                            {
                                                                                                               addr343:
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr340:
                                                                                                                  §§push(_loc7_.y);
                                                                                                               }
                                                                                                               §§pop().y = §§pop() + §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr214);
                                                                                                               }
                                                                                                               addr345:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr343);
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr343);
                                                                           }
                                                                           addr444:
                                                                        }
                                                                        §§goto(addr442);
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§goto(addr442);
                                                                  }
                                                                  §§goto(addr439);
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                            §§goto(addr424);
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                      §§goto(addr442);
                                                   }
                                                   §§goto(addr427);
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr442);
                                          }
                                          §§goto(addr404);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr654);
                                          }
                                          addr653:
                                       }
                                       §§goto(addr654);
                                    }
                                    §§goto(addr530);
                                 }
                                 §§goto(addr444);
                              }
                              addr214:
                              while(true)
                              {
                                 §§push(param4);
                                 §§push(_loc5_.x);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(_loc6_.x);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc10_)
                                       {
                                          addr234:
                                          §§push(§§pop() + _loc7_.x);
                                          if(_loc11_ || this)
                                          {
                                             addr242:
                                             §§push(§§pop() / 3);
                                          }
                                       }
                                       §§pop().x = §§pop();
                                       continue loop2;
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr242);
                                 continue loop10;
                              }
                              addr175:
                              return §§pop();
                           }
                           §§goto(addr655);
                        }
                     }
                     §§goto(addr653);
                  }
                  §§goto(addr655);
               }
               §§goto(addr654);
            }
            §§goto(addr343);
         }
         §§goto(addr31);
      }
      
      public function §`!@§() : Number
      {
         return this.§+!@§;
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
      
      public function §8e§() : b2Vec2
      {
         return this.§9+§;
      }
      
      public function §&!S§() : b2Vec2
      {
         return this.§4!$§;
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
      
      public function §@&§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc3_)
         {
            §§push(_loc2_.col1.x);
            if(_loc3_ || _loc2_)
            {
               §§push(this.m_coreV1.x);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.m_coreV1);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop().y);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_)
                              {
                                 addr84:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr92:
                                    addr93:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ && param1)
                                    {
                                    }
                                    §§goto(addr152);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr113:
                                    §§push(this.m_coreV1.x);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr141:
                                          §§push(_loc2_.col2.y);
                                          if(!_loc4_)
                                          {
                                             addr150:
                                             §§push(§§pop() + §§pop() * this.m_coreV1.y);
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 addr152:
                                 return new §§pop().b2Vec2(§§pop(),§§pop());
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr152);
               }
               §§goto(addr141);
            }
            §§goto(addr92);
         }
         §§goto(addr93);
      }
      
      public function §5!u§() : b2EdgeShape
      {
         return this.§=e§;
      }
      
      public function §^"A§() : b2EdgeShape
      {
         return this.§>c§;
      }
      
      public function §`!X§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && param1))
         {
            §§push(_loc4_.col1.x);
            if(_loc9_ || param1)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc10_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_ || param2)
                  {
                     addr73:
                     §§push(_loc4_.col2.x);
                     if(!(_loc10_ && param3))
                     {
                        addr68:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc9_)
                     {
                        addr76:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param1.position.y);
                     if(_loc9_)
                     {
                        §§push(_loc4_.col1.y);
                        if(!(_loc10_ && param2))
                        {
                           §§push(this.m_coreV1.x);
                           if(!(_loc10_ && this))
                           {
                              addr121:
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc10_ && param1))
                              {
                                 addr129:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param1.position.x);
                              if(_loc9_)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(!_loc10_)
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(!(_loc10_ && param2))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_)
                                       {
                                          addr164:
                                          §§push(_loc4_.col2.x);
                                          if(_loc9_)
                                          {
                                             addr159:
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(_loc9_)
                                          {
                                             addr168:
                                             var _loc7_:Number = §§pop();
                                             §§push(param1.position.y);
                                             if(_loc9_)
                                             {
                                                §§push(_loc4_.col1.y);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(this.m_coreV2.x);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr222:
                                                         §§push(_loc4_.col2.y);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr217:
                                                            §§push(§§pop() * this.m_coreV2.y);
                                                         }
                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                         if(!_loc10_)
                                                         {
                                                            addr225:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc9_)
                                                            {
                                                               §§push(param2);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     addr322:
                                                                     §§push(_loc6_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(param3);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              addr337:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(_loc7_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr350:
                                                                                 §§push(param2);
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    addr372:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       addr366:
                                                                                       §§push(_loc8_);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(§§pop() * param3);
                                                                                       }
                                                                                    }
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       §§push(this.§]!!§);
                                                                                       loop0:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§]!!§);
                                                                                                      loop3:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ && param3)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§]!!§);
                                                                                                               if(!(_loc10_ && param2))
                                                                                                               {
                                                                                                                  break loop3;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr230:
                                                                                                         addr247:
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                      addr270:
                                                                                                      §§pop().y = §§pop();
                                                                                                      if(_loc10_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!(_loc10_ && param1))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr230);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§]!!§);
                                                                                                                  addr375:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     addr376:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        addr377:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§]!!§);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr373:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               addr311:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr312:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr230);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr310:
                                                                                                         }
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      §§goto(addr312);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr168);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr73);
               }
               §§goto(addr68);
            }
            §§goto(addr73);
         }
         §§goto(addr76);
      }
      
      b2internal function §%E§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§>c§ = param1;
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
                  while(!_loc5_);
                  
               }
               while(_loc6_);
               
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      b2internal function §+T§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§=e§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               loop2:
               while(_loc5_ || param1)
               {
                  this.m_cornerConvex2 = param4;
                  if(_loc5_)
                  {
                     addr54:
                     if(_loc6_)
                     {
                        while(true)
                        {
                           this.m_cornerDir2 = param3;
                           continue loop2;
                           §§goto(addr54);
                        }
                        addr73:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
