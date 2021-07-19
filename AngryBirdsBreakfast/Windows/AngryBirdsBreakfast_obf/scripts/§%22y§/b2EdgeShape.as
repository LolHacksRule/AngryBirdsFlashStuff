package §"y§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §^9§.b2AABB;
   import §^9§.b2RayCastInput;
   import §^9§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §2G§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §=1§:Number;
      
      b2internal var §[!l§:b2Vec2;
      
      b2internal var §import§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §+!M§:b2EdgeShape;
      
      b2internal var §6H§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§2G§ = new b2Vec2();
            while(true)
            {
               this.m_v1 = new b2Vec2();
            }
            addr483:
         }
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
                  while(true)
                  {
                     this.§[!l§ = new b2Vec2();
                     while(true)
                     {
                        this.§import§ = new b2Vec2();
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           this.m_cornerDir1 = new b2Vec2();
                           while(_loc3_)
                           {
                              this.m_cornerDir2 = new b2Vec2();
                              while(true)
                              {
                                 super();
                                 while(true)
                                 {
                                    §6m§ = b2internal::[!Q;
                                    loop10:
                                    while(true)
                                    {
                                       this.§6H§ = null;
                                       addr407:
                                       while(true)
                                       {
                                          this.§+!M§ = null;
                                          continue loop10;
                                       }
                                    }
                                 }
                                 if(_loc4_ && param2)
                                 {
                                    continue;
                                 }
                                 this.m_cornerDir1 = this.§[!l§;
                                 §§goto(addr78);
                              }
                           }
                           §§goto(addr483);
                           if(!(_loc4_ && param2))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  if(_loc3_ || param1)
                  {
                     return;
                  }
               }
            }
         }
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
            if(!_loc18_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(!_loc18_)
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc19_ || param1)
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
               if(_loc19_ || param3)
               {
                  §§push(this.m_v1.x);
                  if(!(_loc18_ && param1))
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
                        if(_loc19_ || param3)
                        {
                           addr111:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(param3.position.y);
                        if(!(_loc18_ && param2))
                        {
                           §§push(_loc4_.col1.y);
                           if(_loc19_ || param2)
                           {
                              §§push(this.m_v1.x);
                              if(_loc19_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc19_)
                                 {
                                    addr151:
                                    §§push(_loc4_.col2.y);
                                    if(_loc19_)
                                    {
                                       addr146:
                                       §§push(§§pop() * this.m_v1.y);
                                    }
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    if(!_loc18_)
                                    {
                                       addr154:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(param3.position.y);
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(_loc19_ || param3)
                                       {
                                          §§push(this.m_v2.x);
                                          if(!(_loc18_ && param3))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(!(_loc18_ && param3))
                                                {
                                                   addr208:
                                                   §§push(§§pop() + §§pop() * this.m_v2.y);
                                                   if(!(_loc18_ && param3))
                                                   {
                                                      addr216:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc18_ && this))
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
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc4_.col1.x);
                                                            if(!(_loc18_ && param2))
                                                            {
                                                               §§push(this.m_v2.x);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(_loc4_.col2.x);
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr258:
                                                                        §§push(§§pop() * this.m_v2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr265:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           addr269:
                                                                           §§push(§§pop() - _loc7_);
                                                                           if(_loc19_ || param2)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc19_ || param2)
                                                                              {
                                                                                 addr285:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(100 * Number.MIN_VALUE);
                                                                        if(_loc19_)
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
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc19_ || this)
                                                                                 {
                                                                                    addr317:
                                                                                    §§push(§§pop() * _loc10_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr321:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          addr329:
                                                                                          §§push(-§§pop());
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                §§push(param2.p1);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc18_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(!(_loc18_ && param3))
                                                                                                               {
                                                                                                                  addr815:
                                                                                                                  §§push(param2.p1.y);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     loop39:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              addr820:
                                                                                                                              addr778:
                                                                                                                              §§push(_loc13_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                 {
                                                                                                                                    addr787:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       addr788:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc19_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop39;
                                                                                                                                          }
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr787:
                                                                                                                                 }
                                                                                                                                 loop26:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   loop23:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                      loop24:
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
                                                                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2.§]!4§);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop23;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ && param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr394);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr727);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr743);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr728);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr725);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop39;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr550);
                                                                                                            }
                                                                                                            §§goto(addr801);
                                                                                                         }
                                                                                                         §§goto(addr665);
                                                                                                      }
                                                                                                      §§goto(addr741);
                                                                                                   }
                                                                                                   §§goto(addr787);
                                                                                                }
                                                                                                §§goto(addr815);
                                                                                             }
                                                                                             §§goto(addr505);
                                                                                          }
                                                                                          addr394:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(false);
                                                                                             if(!(_loc19_ || param1))
                                                                                             {
                                                                                                while(!_loc19_)
                                                                                                {
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            addr626:
                                                                                                            §§push(_loc15_);
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            loop45:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  param1.fraction = _loc15_;
                                                                                                                  while(!(_loc19_ || this))
                                                                                                                  {
                                                                                                                     loop8:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(_loc18_ && param1)
                                                                                                                        {
                                                                                                                           break loop15;
                                                                                                                        }
                                                                                                                        if(_loc19_ || param3)
                                                                                                                        {
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(1 + _loc11_);
                                                                                                                                          if(_loc19_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc18_ && param3)
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr605:
                                                                                                                                                   if(!(_loc18_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                      continue loop35;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr731:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr741:
                                                                                                                                                               loop54:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  addr742:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr743:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr744:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ && param3)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop54;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr741:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr743);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr730:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop45;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            continue loop45;
                                                                                                                                                         }
                                                                                                                                                         addr674:
                                                                                                                                                         addr674:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr787);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   addr635:
                                                                                                                                                }
                                                                                                                                                §§goto(addr788);
                                                                                                                                             }
                                                                                                                                             §§goto(addr796);
                                                                                                                                          }
                                                                                                                                          §§goto(addr742);
                                                                                                                                       }
                                                                                                                                       §§goto(addr743);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr673:
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 §§goto(addr605);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr729:
                                                                                                                              }
                                                                                                                              §§goto(addr730);
                                                                                                                           }
                                                                                                                           §§goto(addr752);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop50;
                                                                                                                                    }
                                                                                                                                    §§goto(addr673);
                                                                                                                                    §§push(_loc12_);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr731);
                                                                                                                                 }
                                                                                                                                 §§goto(addr788);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr666:
                                                                                                                        }
                                                                                                                        §§goto(addr744);
                                                                                                                     }
                                                                                                                     §§goto(addr655);
                                                                                                                  }
                                                                                                                  addr655:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           while(!_loc18_)
                                                                                                                           {
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    continue loop47;
                                                                                                                                 }
                                                                                                                                 §§push(param1.normal);
                                                                                                                                 loop2:
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
                                                                                                                                             addr727:
                                                                                                                                             addr728:
                                                                                                                                             while(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(_loc19_ || param3)
                                                                                                                                                {
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                                §§goto(addr820);
                                                                                                                                             }
                                                                                                                                             addr728:
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr729);
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr626);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop55;
                                                                                                                     }
                                                                                                                     continue loop45;
                                                                                                                  }
                                                                                                                  addr543:
                                                                                                               }
                                                                                                               §§goto(addr728);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr635);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      §§goto(addr699);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop19;
                                                                                             return §§pop();
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr741);
                                                                                    }
                                                                                    §§goto(addr778);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr98);
               }
               §§goto(addr103);
            }
            §§goto(addr111);
         }
         §§goto(addr41);
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
               if(_loc9_ || param1)
               {
                  §§push(_loc3_.col1);
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr545:
                     while(true)
                     {
                        §§push(this.m_v1);
                        addr547:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr548:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr549:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr551:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr562:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       addr564:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr565:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr566:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr567:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr568:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
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
                  addr544:
               }
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
                        while(true)
                        {
                           §§push(_loc3_.col1);
                           loop17:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 §§push(§§pop().y);
                                 loop18:
                                 while(true)
                                 {
                                    §§push(this.m_v1);
                                    if(!(_loc9_ || param1))
                                    {
                                       break;
                                    }
                                    §§push(§§pop().x);
                                    loop19:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§push(_loc3_.col2);
                                          loop21:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             loop22:
                                             while(_loc9_ || _loc3_)
                                             {
                                                §§push(this.m_v1);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   §§push(§§pop().y);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop24:
                                                      while(!_loc8_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc9_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr531:
                                                               while(true)
                                                               {
                                                                  §§push(param2.position);
                                                                  continue loop15;
                                                               }
                                                               addr297:
                                                               if(_loc8_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc3_.col1);
                                                               if(_loc9_ || param1)
                                                               {
                                                                  if(_loc8_ && _loc3_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  addr343:
                                                                  loop46:
                                                                  while(!_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     §§push(_loc3_.col2);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!(_loc9_ || _loc3_))
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        addr358:
                                                                        §§push(§§pop().y);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           addr366:
                                                                           loop43:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_v2);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          addr468:
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             break loop46;
                                                                                          }
                                                                                          §§goto(addr562);
                                                                                          continue loop43;
                                                                                       }
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          break loop43;
                                                                                       }
                                                                                       continue loop24;
                                                                                       addr381:
                                                                                       addr455:
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 while(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§goto(addr468);
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§goto(addr565);
                                                                                 addr460:
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr460);
                                                                              §§goto(addr366);
                                                                           }
                                                                           addr366:
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                     while(!(_loc8_ && param1))
                                                                     {
                                                                        §§goto(addr455);
                                                                        §§push(§§pop().x);
                                                                     }
                                                                     §§goto(addr551);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr476:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2.position);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop47:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop48:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          addr412:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             addr234:
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                continue loop47;
                                                                                             }
                                                                                             continue loop48;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr438);
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr545);
                                                                     }
                                                                  }
                                                                  addr343:
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr548);
                                                   }
                                                }
                                                §§goto(addr564);
                                             }
                                             §§goto(addr566);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr544);
                              }
                              §§goto(addr547);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr267);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            param1.§#!5§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               while(!(_loc3_ && this))
               {
                  param1.I = 0;
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc10_ && param2))
         {
            §§push(param2);
            if(!(_loc10_ && param2))
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc10_ && param3))
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§!v§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§!v§(param3,this.m_v2);
            §§push(b2Math.§7!c§(param1,_loc6_));
            if(!_loc10_)
            {
               §§push(§§pop() - param2);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§7!c§(param1,_loc7_));
            if(!(_loc10_ && param2))
            {
               §§push(§§pop() - param2);
               if(_loc11_)
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               if(!_loc10_)
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(_loc9_);
                           while(true)
                           {
                              §§push(0);
                              if(!(_loc10_ && param2))
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(_loc7_);
                                                §§push(_loc9_);
                                                if(!_loc10_)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc11_ || param1)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§push(_loc6_.x);
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     addr439:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc11_ || param3)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr462:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    addr470:
                                                                                    §§push(_loc7_.x);
                                                                                 }
                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc11_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            addr324:
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc11_ || param3)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc9_);
                                                                                                                  if(_loc11_ || this)
                                                                                                                  {
                                                                                                                     addr349:
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        addr359:
                                                                                                                        §§push(§§pop() * _loc7_.y);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr233);
                                                                                                                     }
                                                                                                                     addr362:
                                                                                                                  }
                                                                                                                  §§goto(addr359);
                                                                                                               }
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                            §§goto(addr359);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr359);
                                                                                                   }
                                                                                                   §§goto(addr349);
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr324);
                                                                                 }
                                                                                 addr475:
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§goto(addr462);
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr462);
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         §§goto(addr462);
                                                      }
                                                      §§goto(addr470);
                                                   }
                                                }
                                                §§goto(addr462);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr638:
                                             }
                                             §§goto(addr639);
                                          }
                                          §§goto(addr622);
                                       }
                                       §§goto(addr551);
                                    }
                                    §§goto(addr475);
                                 }
                                 addr233:
                                 addr177:
                                 while(true)
                                 {
                                    §§push(param4);
                                    §§push(_loc5_.x);
                                    if(_loc11_ || param1)
                                    {
                                       §§push(_loc6_.x);
                                       if(!_loc10_)
                                       {
                                          addr268:
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_ || param3)
                                          {
                                             §§push(_loc7_.x);
                                          }
                                          §§pop().x = §§pop();
                                          continue loop6;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(§§pop() / 3);
                                       }
                                    }
                                    §§goto(addr268);
                                    continue loop7;
                                 }
                                 addr177:
                                 return §§pop();
                              }
                              §§goto(addr640);
                           }
                           continue;
                        }
                        §§goto(addr638);
                     }
                  }
               }
               §§goto(addr643);
            }
            §§goto(addr91);
         }
         §§goto(addr36);
      }
      
      public function §6!7§() : Number
      {
         return this.§=1§;
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
      
      public function §,!E§() : b2Vec2
      {
         return this.§[!l§;
      }
      
      public function §8@§() : b2Vec2
      {
         return this.§import§;
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
      
      public function §]!,§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc4_ || this)
         {
            §§push(_loc2_.col1.x);
            if(!_loc3_)
            {
               §§push(this.m_coreV1.x);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || this)
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc3_)
                     {
                        §§push(this.m_coreV1);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop().y);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr88:
                                    addr89:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ || _loc3_)
                                    {
                                    }
                                    §§goto(addr143);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr111:
                                    §§push(this.m_coreV1.x);
                                    if(!_loc3_)
                                    {
                                       addr142:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          addr117:
                                          §§push(_loc2_.col2.y);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr137:
                                             §§push(§§pop() * this.m_coreV1.y);
                                          }
                                       }
                                       addr143:
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr142);
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr143);
               }
               §§goto(addr111);
            }
            §§goto(addr88);
         }
         §§goto(addr89);
      }
      
      public function §["§() : b2EdgeShape
      {
         return this.§+!M§;
      }
      
      public function §;v§() : b2EdgeShape
      {
         return this.§6H§;
      }
      
      public function §6!4§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && this))
         {
            §§push(_loc4_.col1.x);
            if(!_loc10_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc10_ && param3))
               {
                  addr58:
                  §§push(§§pop() * §§pop());
                  if(!_loc10_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || param2)
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(!_loc10_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc9_)
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              addr86:
                              §§push(_loc4_.col2.y);
                              if(_loc9_)
                              {
                                 addr91:
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc9_ || this)
                           {
                              addr104:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param1.position.x);
                           if(!_loc10_)
                           {
                              §§push(_loc4_.col1.x);
                              if(_loc9_)
                              {
                                 §§push(this.m_coreV2.x);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc10_ && this))
                                    {
                                       addr134:
                                       §§push(_loc4_.col2.x);
                                       if(_loc9_ || param3)
                                       {
                                          addr148:
                                          §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc9_ || this)
                                    {
                                       addr157:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(param1.position.y);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(this.m_coreV2.x);
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc9_)
                                             {
                                                addr202:
                                                §§push(_loc4_.col2.y);
                                                if(_loc9_ || this)
                                                {
                                                   addr212:
                                                   §§push(§§pop() * this.m_coreV2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_)
                                             {
                                                addr220:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(_loc9_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_ || param3)
                                                {
                                                   §§push(param2);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(param3);
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  addr347:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc7_);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(param2);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr353:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr372:
                                                                           §§push(_loc8_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr369:
                                                                              §§push(§§pop() * param3);
                                                                           }
                                                                           if(§§pop() <= §§pop() + §§pop())
                                                                           {
                                                                              §§push(this.§2G§);
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§2G§);
                                                                                             addr243:
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc10_ && param2))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr375:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                            §§goto(addr353);
                                                         }
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr104);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr58);
         }
         §§goto(addr66);
      }
      
      b2internal function §=!p§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§6H§ = param1;
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
      }
      
      b2internal function §+9§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§+!M§ = param1;
         }
         do
         {
            this.m_coreV2 = param2;
            do
            {
               this.m_cornerDir2 = param3;
               do
               {
                  this.m_cornerConvex2 = param4;
               }
               while(!_loc6_);
               
            }
            while(_loc5_);
            
         }
         while(!_loc6_);
         
      }
   }
}
