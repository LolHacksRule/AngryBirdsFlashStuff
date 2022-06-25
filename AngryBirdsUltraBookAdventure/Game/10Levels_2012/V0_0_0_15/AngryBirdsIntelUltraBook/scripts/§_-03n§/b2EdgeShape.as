package §_-03n§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.b2AABB;
   import §_-gE§.b2RayCastInput;
   import §_-gE§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §_-PR§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §_-63§:Number;
      
      b2internal var §_-mm§:b2Vec2;
      
      b2internal var §_-0CV§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §_-0Eq§:b2EdgeShape;
      
      b2internal var §_-H8§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§_-PR§ = new b2Vec2();
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
                     continue loop1;
                     addr447:
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     super();
                     loop9:
                     while(true)
                     {
                        §_-1c§ = b2internal::_-Ee;
                        loop10:
                        while(true)
                        {
                           this.§_-H8§ = null;
                           loop11:
                           while(_loc4_)
                           {
                              this.§_-0Eq§ = null;
                              loop12:
                              while(true)
                              {
                                 this.m_v1 = param1;
                                 addr418:
                                 while(true)
                                 {
                                    this.m_v2 = param2;
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.§_-0CV§);
                                       §§push(this.m_v2.x);
                                       if(!(_loc3_ && param2))
                                       {
                                          §§push(this.m_v1.x);
                                          if(_loc4_ || param1)
                                          {
                                             addr393:
                                             §§push(§§pop() - §§pop());
                                             §§push(this.m_v2.y);
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr403:
                                                §§push(§§pop() - this.m_v1.y);
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             do
                                             {
                                                this.§_-63§ = this.§_-0CV§.Normalize();
                                                while(!_loc3_)
                                                {
                                                   addr359:
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§_-mm§);
                                                         §§push(this.§_-0CV§.y);
                                                         §§push(this.§_-0CV§.x);
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         while(!_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         continue loop14;
                                                         addr341:
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            this.§_-0CV§ = new b2Vec2();
                                                            continue loop0;
                                                         }
                                                         addr504:
                                                         while(true)
                                                         {
                                                            this.§_-mm§ = new b2Vec2();
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr460:
                                                   while(true)
                                                   {
                                                      this.m_cornerDir2 = new b2Vec2();
                                                      addr445:
                                                      while(!_loc3_)
                                                      {
                                                         §§goto(addr447);
                                                      }
                                                      continue loop0;
                                                      §§goto(addr359);
                                                   }
                                                }
                                                continue loop11;
                                             }
                                             while(_loc3_ && this);
                                             
                                             return;
                                             addr408:
                                          }
                                          §§goto(addr403);
                                       }
                                       §§goto(addr393);
                                    }
                                    addr180:
                                    if(_loc4_ || _loc3_)
                                    {
                                       continue loop12;
                                    }
                                 }
                              }
                           }
                           continue loop9;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr408);
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
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         §§push(param2.p2.x);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param3)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(!_loc19_)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc18_ || param1)
            {
               addr63:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc4_ = param3.R;
            §§push(param3.position.x);
            if(!_loc19_)
            {
               §§push(_loc4_.col1.x);
               if(!(_loc19_ && param1))
               {
                  §§push(this.m_v1.x);
                  if(_loc18_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc18_ || param2)
                     {
                        addr97:
                        §§push(_loc4_.col2.x);
                        if(_loc18_ || param2)
                        {
                           addr111:
                           §§push(§§pop() + §§pop() * this.m_v1.y);
                        }
                        §§goto(addr111);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc18_)
                     {
                        addr115:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc19_ && param2))
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc18_ || param2)
                        {
                           §§push(this.m_v1.x);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc19_ && param3))
                              {
                                 addr150:
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc19_ && param1))
                                 {
                                    addr160:
                                    §§push(§§pop() * this.m_v1.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc18_)
                              {
                                 addr168:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param3.position.y);
                              if(!_loc19_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(!(_loc19_ && param1))
                                 {
                                    §§push(this.m_v2.x);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc19_)
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(!_loc19_)
                                          {
                                             addr198:
                                             §§push(§§pop() * this.m_v2.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc18_)
                                          {
                                             addr205:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc19_)
                                             {
                                                addr209:
                                                §§push(§§pop() - _loc8_);
                                                if(!_loc19_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             §§push(param3.position.x);
                                             if(!_loc19_)
                                             {
                                                §§push(_loc4_.col1.x);
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(this.m_v2.x);
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§push(_loc4_.col2.x);
                                                         if(!_loc19_)
                                                         {
                                                            addr247:
                                                            §§push(§§pop() * this.m_v2.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc18_ || param2)
                                                         {
                                                         }
                                                         addr263:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc18_ || param2)
                                                         {
                                                            addr271:
                                                            §§push(-§§pop());
                                                            if(_loc18_ || param2)
                                                            {
                                                               addr279:
                                                               §§push(Number(§§pop()));
                                                            }
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
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        §§push(§§pop() * _loc10_);
                                                                        if(_loc18_)
                                                                        {
                                                                           addr320:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc19_ && param3))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 addr336:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     if(_loc18_ || param3)
                                                                     {
                                                                        §§push(_loc11_);
                                                                        if(_loc18_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(param2.p1);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(_loc18_ || param3)
                                                                                                {
                                                                                                   addr819:
                                                                                                   §§push(param2.p1.y);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc14_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr807:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc14_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr811:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                loop32:
                                                                                                                                                while(true)
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
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  while(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr388);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(_loc18_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr757);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr772);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr759);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr742:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr800);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop32;
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
                                                                                                                     §§goto(addr811);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr536);
                                                                                             }
                                                                                             §§goto(addr757);
                                                                                          }
                                                                                          §§goto(addr686);
                                                                                       }
                                                                                       §§goto(addr758);
                                                                                    }
                                                                                    §§goto(addr815);
                                                                                 }
                                                                                 §§goto(addr819);
                                                                              }
                                                                              §§goto(addr801);
                                                                           }
                                                                           addr388:
                                                                           while(true)
                                                                           {
                                                                              §§push(false);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 loop30:
                                                                                 while(!(_loc19_ && param1))
                                                                                 {
                                                                                    if(!(_loc18_ || param1))
                                                                                    {
                                                                                       continue loop25;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       addr608:
                                                                                       if(!(_loc18_ || this))
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       §§push(_loc15_);
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          if(_loc18_ || param3)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          addr686:
                                                                                          loop45:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                addr690:
                                                                                             }
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc18_ || param2))
                                                                                                      {
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      §§push(_loc16_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc18_ || param3))
                                                                                                                  {
                                                                                                                     continue loop35;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc19_ && this)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr800:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr801:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(param2.§_-r9§);
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    addr731:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr732:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr730:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr757:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    addr758:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr759:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr762:
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                §§goto(addr762);
                                                                                                                                             }
                                                                                                                                             addr763:
                                                                                                                                          }
                                                                                                                                          addr771:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr772:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr782:
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      continue loop45;
                                                                                                                                                      addr783:
                                                                                                                                                   }
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                                continue loop32;
                                                                                                                                             }
                                                                                                                                             continue loop45;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr757:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break loop30;
                                                                                                                  }
                                                                                                                  §§goto(addr420);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr730);
                                                                                                         }
                                                                                                         §§goto(addr771);
                                                                                                         addr551:
                                                                                                         if(!(_loc18_ || param2))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc18_ || param3)
                                                                                                         {
                                                                                                            if(_loc19_ && param1)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§push(1 + _loc11_);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     while(!(_loc18_ || param3))
                                                                                                                     {
                                                                                                                        §§goto(addr758);
                                                                                                                     }
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc18_ || param3))
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        if(_loc19_ && this)
                                                                                                                        {
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           for(; !(_loc19_ && param3); param1.fraction = _loc15_,if(_loc18_)
                                                                                                                           {
                                                                                                                              addr529:
                                                                                                                              if(_loc18_ || param2)
                                                                                                                              {
                                                                                                                                 break loop41;
                                                                                                                              }
                                                                                                                              continue loop13;
                                                                                                                           })
                                                                                                                           {
                                                                                                                              if(!(_loc18_ || param1))
                                                                                                                              {
                                                                                                                                 break loop25;
                                                                                                                              }
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr801);
                                                                                                                           }
                                                                                                                           addr723:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc16_);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr551);
                                                                                                                                 }
                                                                                                                                 addr587:
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    continue loop52;
                                                                                                                                 }
                                                                                                                                 §§goto(addr690);
                                                                                                                              }
                                                                                                                              §§goto(addr772);
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              if(_loc19_ && param3)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              _loc17_ = §§pop();
                                                                                                                              §§push(param1.normal);
                                                                                                                              loop1:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 addr493:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    addr494:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       addr495:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr496:
                                                                                                                                          while(!_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          §§goto(addr608);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr661);
                                                                                                                           §§goto(addr529);
                                                                                                                        }
                                                                                                                        addr661:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr587);
                                                                                                               }
                                                                                                               §§goto(addr731);
                                                                                                            }
                                                                                                            §§goto(addr763);
                                                                                                         }
                                                                                                         §§goto(addr732);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr759);
                                                                                                }
                                                                                                §§goto(addr782);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr661);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr723);
                                                                                    §§goto(addr592);
                                                                                 }
                                                                                 addr592:
                                                                              }
                                                                              addr420:
                                                                              continue loop33;
                                                                              return §§pop();
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr811);
                                                                     }
                                                                     §§goto(addr815);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§goto(addr263);
                                                         §§push(_loc7_);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr111);
               }
               §§goto(addr97);
            }
            §§goto(addr115);
         }
         §§goto(addr63);
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
         if(!(_loc9_ && param2))
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
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        if(_loc9_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(this.m_v1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr503:
                                                                              §§push(§§pop() * §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.col2);
                                                                                 addr505:
                                                                                 while(!(_loc9_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr503:
                                                                           }
                                                                           loop19:
                                                                           while(_loc8_ || _loc3_)
                                                                           {
                                                                              §§push(this.m_v1);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 loop20:
                                                                                 while(_loc8_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr549:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr550:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr551:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                addr552:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2.position);
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr440:
                                                                                       if(!(_loc8_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§push(this.m_v2);
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                loop36:
                                                                                                while(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         addr472:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            addr473:
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2.position);
                                                                                                               if(!(_loc8_ || param1))
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!(_loc8_ || this))
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  §§push(_loc3_.col1);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     while(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                     addr410:
                                                                                                                  }
                                                                                                                  if(!(_loc8_ || this))
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc8_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc9_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop36;
                                                                                                                     }
                                                                                                                     §§push(this.m_v2);
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col2);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr331:
                                                                                                                                       §§push(this.m_v2);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(_loc9_ && param2)
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || this)
                                                                                                                                       {
                                                                                                                                          addr356:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop39:
                                                                                                                                          for(; _loc8_; while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ || param2))
                                                                                                                                             {
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                             addr217:
                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr194);
                                                                                                                                                   §§push(param1.§_-Bv§);
                                                                                                                                                }
                                                                                                                                                §§goto(addr232);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.m_v2);
                                                                                                                                                   addr415:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr217);
                                                                                                                                                }
                                                                                                                                                addr413:
                                                                                                                                             }
                                                                                                                                          },continue loop12)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop40:
                                                                                                                                                for(; !(_loc9_ && param2); if(!(_loc8_ || this))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                },if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                },§§push(_loc7_),if(!(_loc8_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop39;
                                                                                                                                                },if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   addr158:
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr162:
                                                                                                                                                      §§push(param1.§_-Bv§);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr165:
                                                                                                                                                         §§pop().y = _loc5_;
                                                                                                                                                         loop55:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§_-MB§);
                                                                                                                                                                  addr110:
                                                                                                                                                                  while(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     loop54:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        addr114:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop55;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop38;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr36:
                                                                                                                                                                              loop50:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop42;
                                                                                                                                                                                 addr206:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr189:
                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr36:
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr552);
                                                                                                                                                                           continue loop54;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  loop47:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     addr178:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           addr181:
                                                                                                                                                                           while(_loc8_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr131);
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§_-MB§);
                                                                                                                                                                              continue loop47;
                                                                                                                                                                              §§goto(addr181);
                                                                                                                                                                           }
                                                                                                                                                                           addr181:
                                                                                                                                                                           continue loop15;
                                                                                                                                                                           addr198:
                                                                                                                                                                        }
                                                                                                                                                                        addr205:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr173:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr206);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr189);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         addr235:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr236:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§_-MB§);
                                                                                                                                                               addr204:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr205);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr234:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr382);
                                                                                                                                                },§§push(param1.§_-Bv§),if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr77:
                                                                                                                                                   if(_loc8_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            loop51:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§_-MB§);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr178);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr113);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr204);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr110);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           break loop51;
                                                                                                                                                                        }
                                                                                                                                                                        addr232:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr236);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr158);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr234);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               §§goto(addr198);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr235);
                                                                                                                                                         }
                                                                                                                                                         addr195:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr165);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr195);
                                                                                                                                                      §§goto(addr77);
                                                                                                                                                   }
                                                                                                                                                   addr194:
                                                                                                                                                },§§goto(addr162))
                                                                                                                                                {
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         continue loop39;
                                                                                                                                                         addr131:
                                                                                                                                                         §§goto(addr36);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr550);
                                                                                                                                                addr374:
                                                                                                                                             }
                                                                                                                                             §§goto(addr374);
                                                                                                                                          }
                                                                                                                                          while(!(_loc9_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.col2);
                                                                                                                                             while(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!(_loc8_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop35;
                                                                                                                                                }
                                                                                                                                                §§goto(addr440);
                                                                                                                                             }
                                                                                                                                             §§goto(addr505);
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                          addr421:
                                                                                                                                          addr356:
                                                                                                                                       }
                                                                                                                                       while(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          §§goto(addr421);
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    continue loop35;
                                                                                                                                 }
                                                                                                                                 §§goto(addr430);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr356);
                                                                                                                        }
                                                                                                                        §§goto(addr331);
                                                                                                                     }
                                                                                                                     §§goto(addr415);
                                                                                                                  }
                                                                                                                  §§goto(addr356);
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr374);
                                                                                                            }
                                                                                                         }
                                                                                                         addr472:
                                                                                                      }
                                                                                                      §§goto(addr551);
                                                                                                   }
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                                §§goto(addr503);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr503);
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
         §§goto(addr173);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param1.§_-ze§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     param1.§_-CG§ = 0;
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc10_ || param2)
         {
            §§push(param2);
            if(!_loc11_)
            {
               addr30:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc10_)
               {
                  addr34:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§_-yP§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§_-yP§(param3,this.m_v2);
               §§push(b2Math.§_-r8§(param1,_loc6_));
               if(_loc10_)
               {
                  §§push(§§pop() - param2);
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§_-r8§(param1,_loc7_));
               if(_loc10_ || this)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc9_:* = §§pop();
                  if(!(_loc11_ && this))
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
                                 if(!_loc10_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    if(_loc11_ && param1)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc11_ && param3))
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(_loc7_);
                                             §§push(_loc9_);
                                             if(_loc10_)
                                             {
                                                §§push(-§§pop());
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc11_ && param2))
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(!_loc11_)
                                                            {
                                                               §§push(_loc6_.x);
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr384:
                                                                     §§push(_loc8_);
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        addr392:
                                                                        §§push(_loc8_);
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr411:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr409:
                                                                                 §§push(§§pop() * _loc7_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       §§push(_loc9_);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc10_ || param3)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc10_ || param2)
                                                                                                   {
                                                                                                      addr268:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr271:
                                                                                                         §§push(_loc6_.y);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc11_ && this))
                                                                                                            {
                                                                                                               addr293:
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr296:
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc9_);
                                                                                                                     if(_loc10_ || param2)
                                                                                                                     {
                                                                                                                        addr320:
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           addr318:
                                                                                                                           §§push(§§pop() * _loc7_.y);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop() + §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr198:
                                                                                                                           loop9:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param4);
                                                                                                                              §§push(_loc5_.x);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    addr228:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc11_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_.x);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             addr233:
                                                                                                                                             if(_loc10_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(param4);
                                                                                                                                                §§push(_loc5_.y);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(!(_loc11_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr180:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_.y);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() / 3);
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr180);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr578:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(_loc10_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr435:
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  addr444:
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  if(!(_loc11_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr452:
                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                     if(_loc10_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr461:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc10_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr475:
                                                                                                                                                                                 §§push(§§pop() - _loc9_);
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr485:
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr482:
                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                    break loop10;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr485);
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr482);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr485);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr461);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr475);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr444);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr452);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr435);
                                                                                                                                                   §§goto(addr233);
                                                                                                                                                }
                                                                                                                                                addr578:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc10_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / 3);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr228);
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr318);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr320);
                                                                                                         }
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      §§goto(addr293);
                                                                                                   }
                                                                                                   §§goto(addr296);
                                                                                                }
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          addr583:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr584:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   break loop6;
                                                                                                }
                                                                                                addr488:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   §§push(_loc9_);
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc10_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc11_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!(_loc11_ && param2))
                                                                                                                  {
                                                                                                                     addr528:
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr532:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr535:
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!(_loc11_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc10_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc9_);
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    addr576:
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       addr573:
                                                                                                                                       §§push(_loc7_.x);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop() + §§pop();
                                                                                                                                    §§goto(addr578);
                                                                                                                                 }
                                                                                                                                 §§goto(addr576);
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr576);
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                               §§goto(addr532);
                                                                                                            }
                                                                                                            §§goto(addr576);
                                                                                                         }
                                                                                                         §§goto(addr573);
                                                                                                      }
                                                                                                      §§goto(addr535);
                                                                                                   }
                                                                                                   §§goto(addr528);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr582:
                                                                                    }
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 break;
                                                                                 if(!(_loc10_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(0.5);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr583);
                                                                                 }
                                                                                 §§push(_loc6_.x);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(_loc5_.x);
                                                                                    if(!(_loc11_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc7_.y);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(_loc5_.y);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc10_ || param3)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc5_.y);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr150:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr142:
                                                                                                               §§push(_loc7_.x);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc5_.x);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr150);
                                                                                                }
                                                                                                §§goto(addr142);
                                                                                             }
                                                                                             §§goto(addr150);
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§goto(addr142);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr150);
                                                                              }
                                                                              return 0;
                                                                              addr412:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                               §§goto(addr392);
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr392);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   §§goto(addr392);
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr488);
                                       }
                                       §§goto(addr412);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr584);
                              }
                              while(!_loc10_);
                              
                              return §§pop();
                           }
                        }
                     }
                  }
                  §§goto(addr582);
               }
               §§goto(addr80);
            }
            §§goto(addr34);
         }
         §§goto(addr30);
      }
      
      public function §_-8C§() : Number
      {
         return this.§_-63§;
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
      
      public function §_-qL§() : b2Vec2
      {
         return this.§_-mm§;
      }
      
      public function §_-ja§() : b2Vec2
      {
         return this.§_-0CV§;
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
      
      public function §_-81§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.col1.x);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.m_coreV1.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc4_ || this)
                     {
                        §§push(this.m_coreV1);
                        if(!_loc3_)
                        {
                           §§push(§§pop().y);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 addr90:
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr94:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ || param1)
                                    {
                                       addr104:
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_ || this)
                                       {
                                          addr126:
                                          §§push(this.m_coreV1.x);
                                          if(_loc4_)
                                          {
                                             §§goto(addr142);
                                          }
                                          addr142:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc3_)
                                          {
                                             addr132:
                                             §§push(_loc2_.col2.y);
                                             if(_loc4_)
                                             {
                                                addr137:
                                                §§push(§§pop() * this.m_coreV1.y);
                                             }
                                          }
                                          return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr104);
               }
               §§goto(addr90);
            }
            §§goto(addr104);
         }
         §§goto(addr94);
      }
      
      public function §_-Ui§() : b2EdgeShape
      {
         return this.§_-0Eq§;
      }
      
      public function §_-l6§() : b2EdgeShape
      {
         return this.§_-H8§;
      }
      
      public function §_-07X§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc9_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc10_ && param3))
            {
               §§push(this.m_coreV1.x);
               if(!_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     addr48:
                     §§push(_loc4_.col2.x);
                     if(!(_loc10_ && param3))
                     {
                        addr58:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc10_ && param1))
                  {
                     addr72:
                     var _loc5_:Number = §§pop();
                     §§push(param1.position.y);
                     if(!(_loc10_ && param1))
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc9_ || param2)
                        {
                           §§push(this.m_coreV1.x);
                           if(_loc9_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc10_ && param2))
                              {
                                 addr126:
                                 §§push(_loc4_.col2.y);
                                 if(_loc9_ || param1)
                                 {
                                    addr121:
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc9_ || this)
                                 {
                                    addr135:
                                    var _loc6_:Number = §§pop();
                                    §§push(param1.position.x);
                                    if(_loc9_ || param2)
                                    {
                                       §§push(_loc4_.col1.x);
                                       if(_loc9_ || param1)
                                       {
                                          §§push(this.m_coreV2.x);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc10_)
                                             {
                                                addr164:
                                                §§push(_loc4_.col2.x);
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr178:
                                                   §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_ || param3)
                                             {
                                                addr198:
                                                var _loc7_:Number = §§pop();
                                                §§push(param1.position.y);
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc4_.col1.y);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§push(this.m_coreV2.x);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            addr237:
                                                            §§push(_loc4_.col2.y);
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr232:
                                                               §§push(§§pop() * this.m_coreV2.y);
                                                            }
                                                            §§push(§§pop() + (§§pop() + §§pop()));
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr245:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr355:
                                                                           §§push(param3);
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr376:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       addr388:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr397:
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr394:
                                                                                             §§push(§§pop() * param3);
                                                                                          }
                                                                                          if(§§pop() <= §§pop() + §§pop())
                                                                                          {
                                                                                             §§push(this.§_-PR§);
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            §§push(this.§_-PR§);
                                                                                                            loop3:
                                                                                                            for(; !_loc10_; while(true)
                                                                                                            {
                                                                                                               §§push(this.§_-PR§);
                                                                                                               if(_loc10_ && param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc9_ || param3)
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                               §§goto(addr337);
                                                                                                            })
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(_loc10_ && param3)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  if(!(_loc10_ && param3))
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                           addr337:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§_-PR§);
                                                                                                                           addr400:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr330:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr402:
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§_-PR§);
                                                                                                                        addr328:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           addr329:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              §§goto(addr330);
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§goto(addr402);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr329);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       §§goto(addr397);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr72);
               }
               §§goto(addr58);
            }
            §§goto(addr48);
         }
         §§goto(addr72);
      }
      
      b2internal function §_-Xu§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§_-H8§ = param1;
         }
         while(true)
         {
            this.m_coreV1 = param2;
            while(!(_loc6_ && param3))
            {
               this.m_cornerDir1 = param3;
               while(_loc5_ || param2)
               {
                  this.m_cornerConvex1 = param4;
                  if(_loc5_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      b2internal function §_-n6§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§_-0Eq§ = param1;
         }
         loop0:
         while(true)
         {
            this.m_coreV2 = param2;
            do
            {
               this.m_cornerDir2 = param3;
               continue loop0;
            }
            while(!(_loc5_ || param3));
            
            return;
         }
      }
   }
}
