package §7q§
{
   import §!4§.b2AABB;
   import §!4§.b2RayCastInput;
   import §!4§.b2RayCastOutput;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §-<§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §,9§:Number;
      
      b2internal var §4e§:b2Vec2;
      
      b2internal var §'!H§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §%6§:b2EdgeShape;
      
      b2internal var §?!U§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§-<§ = new b2Vec2();
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
                        while(true)
                        {
                           this.§4e§ = new b2Vec2();
                           while(true)
                           {
                              this.§'!H§ = new b2Vec2();
                              while(true)
                              {
                                 this.m_cornerDir1 = new b2Vec2();
                                 loop7:
                                 while(true)
                                 {
                                    this.m_cornerDir2 = new b2Vec2();
                                    while(true)
                                    {
                                       super();
                                       loop9:
                                       while(true)
                                       {
                                          §2!]§ = b2internal::%m;
                                          while(true)
                                          {
                                             this.§?!U§ = null;
                                             continue loop9;
                                             addr88:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    this.m_v2 = param2;
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc3_ || this))
                  {
                     continue loop0;
                  }
                  §§push(this.m_coreV1);
                  §§push(b2Settings.b2_toiSlop);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(-§§pop());
                     if(!(_loc4_ && param2))
                     {
                        addr216:
                        §§push(this.§4e§.x);
                        if(!_loc4_)
                        {
                           §§push(this.§'!H§.x);
                           if(_loc3_ || param2)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr304:
                                    §§push(this.m_v1.x);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().Set(§§pop(),§§pop() + this.m_v1.y);
                                    §§goto(addr309);
                                 }
                                 §§push(b2Settings.b2_toiSlop);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr277:
                                    §§push(-§§pop());
                                    if(_loc3_)
                                    {
                                       addr280:
                                       §§push(this.§4e§.y);
                                       if(_loc3_)
                                       {
                                          addr285:
                                          §§push(§§pop() - this.§'!H§.y);
                                          if(_loc3_ || param1)
                                          {
                                             addr296:
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_ && _loc3_)
                                             {
                                             }
                                          }
                                          §§goto(addr304);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr304);
                                 }
                                 §§goto(addr280);
                              }
                              §§goto(addr277);
                           }
                           §§goto(addr285);
                        }
                     }
                     §§goto(addr304);
                  }
                  §§goto(addr216);
               }
            }
         }
         §§goto(addr344);
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
            if(_loc19_ || param3)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc19_ || param3)
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc19_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc4_ = param3.R;
            §§push(param3.position.x);
            if(!(_loc18_ && this))
            {
               §§push(_loc4_.col1.x);
               if(!_loc18_)
               {
                  §§push(this.m_v1.x);
                  if(_loc19_ || param2)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && param2))
                     {
                        addr123:
                        §§push(_loc4_.col2.x);
                        if(_loc19_ || this)
                        {
                           addr118:
                           §§push(§§pop() * this.m_v1.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(_loc19_ || param1)
                        {
                           addr132:
                           var _loc7_:Number = §§pop();
                           §§push(param3.position.y);
                           if(!(_loc18_ && this))
                           {
                              §§push(_loc4_.col1.y);
                              if(_loc19_ || param1)
                              {
                                 §§push(this.m_v1.x);
                                 if(_loc19_ || param2)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc19_ || this)
                                    {
                                       addr171:
                                       §§push(_loc4_.col2.y);
                                       if(_loc19_)
                                       {
                                          addr180:
                                          §§push(§§pop() + §§pop() * this.m_v1.y);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc19_)
                                    {
                                       addr184:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(param3.position.y);
                                    if(_loc19_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!_loc18_)
                                       {
                                          §§push(this.m_v2.x);
                                          if(_loc19_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc19_)
                                             {
                                                addr209:
                                                §§push(_loc4_.col2.y);
                                                if(!_loc18_)
                                                {
                                                   addr214:
                                                   §§push(§§pop() * this.m_v2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc18_)
                                                {
                                                   addr221:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc18_)
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
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§push(_loc4_.col1.x);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(this.m_v2.x);
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc19_ || param2)
                                                               {
                                                                  §§push(_loc4_.col2.x);
                                                                  if(_loc19_)
                                                                  {
                                                                     addr263:
                                                                     §§push(§§pop() * this.m_v2.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     addr275:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr279:
                                                                        §§push(§§pop() - _loc7_);
                                                                        if(_loc18_)
                                                                        {
                                                                        }
                                                                        addr286:
                                                                        var _loc10_:Number = §§pop();
                                                                        addr285:
                                                                        §§push(100 * Number.MIN_VALUE);
                                                                        if(_loc19_ || param3)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc5_);
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc19_ || param1)
                                                                                 {
                                                                                    addr332:
                                                                                    §§push(§§pop() * _loc10_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr336:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr343:
                                                                                             §§push(Number(§§pop()));
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(param2.p1);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc19_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc18_ && param3))
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr800:
                                                                                                                  §§push(param2.p1.y);
                                                                                                                  loop52:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr804:
                                                                                                                           loop47:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              loop42:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    loop15:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop9:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          loop10:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop12:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop13:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         continue loop31;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop16:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                         loop17:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            addr767:
                                                                                                                                                            loop57:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               loop39:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr771:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     loop26:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop27:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr774:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 addr689:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2.§!!O§);
                                                                                                                                                                                    if(_loc19_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          addr699:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr698:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr700:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                                                                             while(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                             addr705:
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr773:
                                                                                                                                                                        }
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop41:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 loop38:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_ && param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc19_ || param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr740:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             addr741:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop12;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr740:
                                                                                                                                                                                       }
                                                                                                                                                                                       loop6:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          loop7:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop8:
                                                                                                                                                                                             while(_loc18_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                addr518:
                                                                                                                                                                                                if(!(_loc19_ || param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                loop44:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.normal);
                                                                                                                                                                                                      loop46:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr480:
                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                               §§goto(addr480);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr481:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr482:
                                                                                                                                                                                                         addr490:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr757:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc19_ || param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        break loop28;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop6;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop8;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1.normal);
                                                                                                                                                                                                            if(_loc18_ && param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               if(_loc19_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr481);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc19_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(true);
                                                                                                                                                                                                               while(_loc18_ && param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop19:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     addr686:
                                                                                                                                                                                                                     loop53:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        if(_loc19_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(1 + _loc11_);
                                                                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc18_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop11;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr399);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         loop43:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                            addr596:
                                                                                                                                                                                                                                                            loop21:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop52;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                        loop35:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           loop36:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc18_ && param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc18_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop38;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                    if(!(_loc19_ || param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    param1.fraction = _loc15_;
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                                                                                                                                                                       if(!(_loc19_ || param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc19_ || this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr518);
                                                                                                                                                                                                                                                                                       §§goto(addr636);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr636:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr628:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr689);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc19_ || param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc19_ || this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr593);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr741);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr659:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr700);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr642);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr593:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr705);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr590:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr601);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr699);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr744);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr650);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr601);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr740);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop28;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr596);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr533);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr774);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                             §§goto(addr757);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr740);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr398);
                                                                                                                                                                        }
                                                                                                                                                                        addr658:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr659);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr773);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop31;
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
                                                                                                               §§goto(addr490);
                                                                                                            }
                                                                                                            §§goto(addr804);
                                                                                                         }
                                                                                                         §§goto(addr628);
                                                                                                      }
                                                                                                      §§goto(addr698);
                                                                                                   }
                                                                                                   §§goto(addr658);
                                                                                                }
                                                                                                §§goto(addr800);
                                                                                             }
                                                                                             §§goto(addr686);
                                                                                          }
                                                                                          addr399:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(false);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop55;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr590);
                                                                                    }
                                                                                    §§goto(addr767);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              §§goto(addr343);
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§push(-§§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr118);
               }
               §§goto(addr123);
            }
            §§goto(addr132);
         }
         §§goto(addr46);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!(_loc9_ && param2))
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr566:
               while(true)
               {
                  §§push(_loc3_.col1);
                  addr568:
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr569:
                     while(true)
                     {
                        §§push(this.m_v1);
                        addr571:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr572:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr573:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr575:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr586:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       addr588:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr589:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr590:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr591:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr592:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr593:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr594:
                                                         while(true)
                                                         {
                                                            §§push(param2.position);
                                                            continue loop0;
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
         §§goto(addr275);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.§9h§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               while(!(_loc3_ && param2))
               {
                  param1.§5!W§ = 0;
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc10_)
         {
            §§push(param2);
            if(_loc10_ || param2)
            {
               addr30:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc11_ && param3))
               {
                  addr39:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§,p§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§,p§(param3,this.m_v2);
               §§push(b2Math.§[!N§(param1,_loc6_));
               if(!(_loc11_ && param1))
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§[!N§(param1,_loc7_));
               if(_loc10_ || param1)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               if(_loc10_ || this)
               {
                  §§push(_loc8_);
                  if(_loc10_ || param1)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc11_ && param3))
                           {
                              while(true)
                              {
                                 §§push(_loc9_);
                                 addr638:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc9_);
                                             if(!_loc11_)
                                             {
                                                §§push(-§§pop());
                                                if(!_loc11_)
                                                {
                                                   addr532:
                                                   §§push(_loc8_);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr559:
                                                               §§push(_loc6_.x);
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           addr587:
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              addr607:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 addr604:
                                                                                 §§push(_loc7_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 §§push(_loc9_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr481:
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      addr490:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc11_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            addr506:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr520:
                                                                                                               §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                               §§goto(addr519);
                                                                                                            }
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr519:
                                                                                                            §§goto(addr518);
                                                                                                         }
                                                                                                         addr518:
                                                                                                         loop4:
                                                                                                         while(_loc10_)
                                                                                                         {
                                                                                                            loop5:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               §§push(_loc5_.x);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr273:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc11_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc7_.x);
                                                                                                                     }
                                                                                                                     §§pop().x = §§pop() / 3;
                                                                                                                     while(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(param4);
                                                                                                                        §§push(_loc5_.y);
                                                                                                                        if(!(_loc11_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           if(_loc10_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 addr227:
                                                                                                                                 §§push(§§pop() + _loc7_.y);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / 3);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!(_loc11_ && this))
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              addr371:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc11_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(_loc10_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr405:
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc11_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc11_ && this)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr449:
                                                                                                                                                         §§pop().x = §§pop() + §§pop();
                                                                                                                                                         addr448:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr287:
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr299:
                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                              if(_loc10_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr311:
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr327:
                                                                                                                                                                                          §§push(§§pop() - _loc9_);
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr342:
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                             if(!(_loc11_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr339:
                                                                                                                                                                                                §§push(_loc7_.y);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr342);
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr342);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr311);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr342);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr327);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr339);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr299);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr287);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         addr348:
                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                         {
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                         addr642:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop2;
                                                                                                                                                            §§goto(addr348);
                                                                                                                                                         }
                                                                                                                                                         addr450:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr449);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                                                                      if(!(_loc11_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr442:
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr448);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr449);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr442);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr449);
                                                                                                                                          }
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       §§goto(addr449);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr405);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr227);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§goto(addr450);
                                                                                                                        }
                                                                                                                        §§goto(addr449);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr273);
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         return 0;
                                                                                                         §§push(_loc7_.y);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                          §§goto(addr520);
                                                                                       }
                                                                                       §§goto(addr490);
                                                                                    }
                                                                                    §§goto(addr481);
                                                                                 }
                                                                                 §§goto(addr520);
                                                                              }
                                                                           }
                                                                           §§goto(addr607);
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§goto(addr607);
                                                                     }
                                                                  }
                                                                  §§goto(addr607);
                                                               }
                                                               §§goto(addr604);
                                                            }
                                                         }
                                                         §§goto(addr607);
                                                      }
                                                      §§goto(addr587);
                                                   }
                                                   §§goto(addr607);
                                                }
                                                §§goto(addr559);
                                             }
                                             §§goto(addr532);
                                          }
                                       }
                                       §§goto(addr520);
                                    }
                                 }
                              }
                              addr637:
                           }
                           §§goto(addr642);
                        }
                        else
                        {
                           §§push(_loc9_);
                        }
                        §§goto(addr360);
                        if(_loc11_ && this)
                        {
                           continue;
                        }
                        if(§§pop() > §§pop())
                        {
                           §§goto(addr371);
                        }
                        §§goto(addr250);
                     }
                  }
                  §§goto(addr638);
               }
               §§goto(addr637);
            }
            §§goto(addr39);
         }
         §§goto(addr30);
      }
      
      public function §+x§() : Number
      {
         return this.§,9§;
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
      
      public function §3>§() : b2Vec2
      {
         return this.§4e§;
      }
      
      public function §#!%§() : b2Vec2
      {
         return this.§'!H§;
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
      
      public function §["§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc4_ || param1)
         {
            §§push(_loc2_.col1.x);
            if(_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || param1)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop().y);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr93:
                                    addr94:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc3_ && this)
                                    {
                                    }
                                    §§goto(addr153);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(!(_loc3_ && param1))
                                 {
                                    addr147:
                                    §§push(this.m_coreV1.x);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_ && _loc2_)
                                       {
                                       }
                                       addr152:
                                       addr153:
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr152);
                                    §§push(§§pop() + §§pop() * this.m_coreV1.y);
                                 }
                              }
                              §§push(_loc2_.col2.y);
                              if(!_loc4_)
                              {
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr153);
               }
               §§goto(addr147);
            }
            §§goto(addr93);
         }
         §§goto(addr94);
      }
      
      public function §6<§() : b2EdgeShape
      {
         return this.§%6§;
      }
      
      public function §%!3§() : b2EdgeShape
      {
         return this.§?!U§;
      }
      
      public function §[w§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc9_ && param1))
         {
            §§push(_loc4_.col1.x);
            if(!(_loc9_ && this))
            {
               §§push(this.m_coreV1.x);
               if(_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc9_)
                  {
                     addr49:
                     §§push(_loc4_.col2.x);
                     if(!_loc9_)
                     {
                        addr54:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc10_ || this)
                  {
                     addr67:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(!(_loc9_ && this))
                  {
                     §§push(_loc4_.col1.y);
                     if(!(_loc9_ && this))
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc10_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc10_)
                           {
                              addr102:
                              §§push(_loc4_.col2.y);
                              if(!_loc9_)
                              {
                                 addr111:
                                 §§push(§§pop() + §§pop() * this.m_coreV1.y);
                              }
                              §§goto(addr111);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc9_)
                           {
                              addr115:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param1.position.x);
                           if(!(_loc9_ && param2))
                           {
                              §§push(_loc4_.col1.x);
                              if(_loc10_ || param1)
                              {
                                 §§push(this.m_coreV2.x);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc10_ || this)
                                    {
                                       addr150:
                                       §§push(_loc4_.col2.x);
                                       if(_loc10_ || param3)
                                       {
                                          addr160:
                                          §§push(§§pop() * this.m_coreV2.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc9_ && param2))
                                    {
                                       addr173:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(param1.position.y);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(this.m_coreV2.x);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc9_)
                                             {
                                                addr213:
                                                §§push(_loc4_.col2.y);
                                                if(_loc10_ || param1)
                                                {
                                                   addr227:
                                                   §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc10_ || this)
                                             {
                                                addr237:
                                                var _loc8_:Number = §§pop();
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc10_ || param3)
                                                   {
                                                      §§push(param2);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(param3);
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     addr363:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(_loc7_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(param2);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                           }
                                                                           addr393:
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              §§push(this.§-<§);
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§-<§);
                                                                                          loop3:
                                                                                          while(!_loc9_)
                                                                                          {
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc9_ && param2)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   addr321:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§-<§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            addr396:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               addr397:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr328);
                                                                                                         }
                                                                                                         addr328:
                                                                                                         continue loop3;
                                                                                                         addr246:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§-<§);
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                                addr320:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr394);
                                                                        }
                                                                        addr390:
                                                                        §§goto(addr393);
                                                                        §§push(§§pop() + §§pop() * param3);
                                                                     }
                                                                     §§push(_loc8_);
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr115);
               }
               §§goto(addr54);
            }
            §§goto(addr49);
         }
         §§goto(addr67);
      }
      
      b2internal function §?$§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§?!U§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
            }
            addr78:
         }
         loop1:
         do
         {
            this.m_cornerDir1 = param3;
            while(!_loc5_)
            {
               this.m_cornerConvex1 = param4;
               if(!(_loc5_ && param3))
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(_loc5_);
         
      }
      
      b2internal function §!n§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§%6§ = param1;
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
                  while(!(_loc6_ || param1));
                  
               }
               while(!(_loc6_ || param1));
               
            }
            while(!(_loc6_ || param1));
            
         }
      }
   }
}
