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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§;!o§ = new b2Vec2();
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
                     loop3:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§6!P§ = new b2Vec2();
                           while(true)
                           {
                              this.§5!D§ = new b2Vec2();
                              addr449:
                              while(true)
                              {
                                 this.m_cornerDir1 = new b2Vec2();
                                 continue loop2;
                              }
                              addr324:
                              if(!(_loc3_ && param2))
                              {
                                 while(true)
                                 {
                                    §§push(this.m_coreV1);
                                    §§push(b2Settings.b2_toiSlop);
                                    if(_loc4_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc4_)
                                       {
                                          §§push(this.§6!P§.x);
                                          if(!_loc3_)
                                          {
                                             §§push(this.§5!D§.x);
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(this.m_v1.x);
                                                      if(_loc4_ || this)
                                                      {
                                                         addr259:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(b2Settings.b2_toiSlop);
                                                         if(_loc4_)
                                                         {
                                                            addr263:
                                                            §§push(-§§pop());
                                                            if(_loc3_)
                                                            {
                                                            }
                                                            addr284:
                                                            §§pop().Set(§§pop(),§§pop() + this.m_v1.y);
                                                            addr283:
                                                            loop19:
                                                            while(_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(this.m_coreV2);
                                                               §§push(b2Settings.b2_toiSlop);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     addr104:
                                                                     §§push(this.§6!P§.x);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(this.§5!D§.x);
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 addr140:
                                                                                 §§push(this.m_v2.x);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    addr151:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(b2Settings.b2_toiSlop);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr163:
                                                                                          §§push(this.§6!P§.y);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§5!D§.y);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                }
                                                                                                addr191:
                                                                                                §§pop().Set(§§pop(),§§pop());
                                                                                                loop20:
                                                                                                while(_loc4_ || this)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      this.m_cornerDir1 = this.§6!P§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                while(_loc4_ || param1)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(this.§5!D§);
                                                                                                      §§push(this.m_v2.x);
                                                                                                      if(!(_loc3_ && param2))
                                                                                                      {
                                                                                                         §§push(this.m_v1.x);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr365:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            §§push(this.m_v2.y);
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() - this.m_v1.y);
                                                                                                            }
                                                                                                         }
                                                                                                         §§pop().Set(§§pop(),§§pop());
                                                                                                         §§goto(addr380);
                                                                                                      }
                                                                                                      §§goto(addr365);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr449);
                                                                                                   }
                                                                                                }
                                                                                                addr192:
                                                                                                continue loop2;
                                                                                                addr385:
                                                                                             }
                                                                                             addr190:
                                                                                             §§goto(addr191);
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                       §§push(this.m_v2.y);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                              §§goto(addr151);
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        §§goto(addr190);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr140);
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                            loop11:
                                                            while(!_loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  while(_loc4_)
                                                                  {
                                                                     super();
                                                                     break loop11;
                                                                  }
                                                                  continue loop4;
                                                                  addr428:
                                                               }
                                                               this.§1!#§ = null;
                                                               §§goto(addr404);
                                                            }
                                                            while(true)
                                                            {
                                                               §3r§ = b2internal::=n;
                                                               §§goto(addr418);
                                                            }
                                                         }
                                                         §§push(this.§6!P§.y);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() - this.§5!D§.y);
                                                            if(!_loc4_)
                                                            {
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr283);
                                                         }
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr259);
                                                }
                                             }
                                          }
                                          §§goto(addr263);
                                       }
                                    }
                                    §§goto(addr259);
                                 }
                                 return;
                                 addr331:
                              }
                           }
                        }
                     }
                  }
               }
               while(!(_loc3_ && _loc3_))
               {
                  §§push(this.§6!P§);
                  §§push(this.§5!D§.y);
                  §§push(this.§5!D§.x);
                  if(!(_loc3_ && param1))
                  {
                     §§push(-§§pop());
                  }
                  §§pop().Set(§§pop(),§§pop());
                  §§goto(addr308);
               }
            }
         }
         §§goto(addr331);
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
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param1)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(!(_loc19_ && param3))
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc18_ || param3)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc4_ = param3.R;
               §§push(param3.position.x);
               if(!(_loc19_ && this))
               {
                  §§push(_loc4_.col1.x);
                  if(!_loc19_)
                  {
                     §§push(this.m_v1.x);
                     if(_loc18_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_)
                        {
                           addr97:
                           §§push(_loc4_.col2.x);
                           if(_loc18_ || param3)
                           {
                              addr107:
                              §§push(§§pop() * this.m_v1.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc18_ || param2)
                        {
                           addr120:
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
                              if(_loc18_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc19_ && param1))
                                 {
                                    addr165:
                                    §§push(_loc4_.col2.y);
                                    if(!(_loc19_ && this))
                                    {
                                       addr160:
                                       §§push(§§pop() * this.m_v1.y);
                                    }
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    if(!_loc19_)
                                    {
                                       addr169:
                                       var _loc8_:Number = §§pop();
                                       §§push(param3.position.y);
                                       if(_loc18_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc18_)
                                          {
                                             §§push(this.m_v2.x);
                                             if(!(_loc19_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(!_loc19_)
                                                   {
                                                      addr202:
                                                      §§push(§§pop() + §§pop() * this.m_v2.y);
                                                      if(_loc18_)
                                                      {
                                                         addr205:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc18_)
                                                         {
                                                            addr209:
                                                            §§push(§§pop() - _loc8_);
                                                            if(!_loc19_)
                                                            {
                                                               addr212:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(param3.position.x);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(_loc4_.col1.x);
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  §§push(this.m_v2.x);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(_loc4_.col2.x);
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           addr247:
                                                                           §§push(§§pop() * this.m_v2.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr258:
                                                                              §§push(§§pop() - _loc7_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr264:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(100 * Number.MIN_VALUE);
                                                                           if(!(_loc19_ && param1))
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
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc10_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                       }
                                                                                       addr318:
                                                                                       var _loc12_:* = §§pop();
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(param2.p1);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr804:
                                                                                                                     §§push(param2.p1.y);
                                                                                                                     loop52:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        loop19:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           loop20:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    loop17:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       loop45:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop18:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             addr796:
                                                                                                                                             loop56:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                loop21:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop10:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop11:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr800:
                                                                                                                                                         loop49:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            loop35:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  loop34:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        loop40:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop41:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr790:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    loop43:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(param2.§%[§);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr693:
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          loop12:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr709:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                   addr710:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop30:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr712:
                                                                                                                                                                                                            if(!(_loc18_ || param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop35;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(_loc18_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc18_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                  loop13:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ || param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc19_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     loop14:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr760:
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        loop9:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop10;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                                                                           loop22:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              loop23:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 addr766:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop46:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc18_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                    loop27:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(!(_loc18_ || param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop40;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                   if(_loc18_ || param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(1 + _loc11_);
                                                                                                                                                                                                                                                         if(!(_loc18_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc19_ && param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop12;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr558:
                                                                                                                                                                                                                                                            if(_loc19_ && param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc19_ && param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc19_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                        while(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc19_ && param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop17;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr608:
                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          loop2:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                             addr630:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                param1.fraction = _loc15_;
                                                                                                                                                                                                                                                                                                addr492:
                                                                                                                                                                                                                                                                                                while(_loc18_ || param3)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr712);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr629:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr766);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop26:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                                                                                                                       addr639:
                                                                                                                                                                                                                                                                                       loop25:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                                                                                                                          addr638:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr619:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr629);
                                                                                                                                                                                                                                                                              §§goto(addr608);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr782);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr779:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr637:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr638);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr353);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr352:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr363);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr609);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr639);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr558);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr638);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr619);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr667:
                                                                                                                                                                                                                                          addr677:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr589);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr779);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr766);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr352);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr709:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr743);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr709);
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
                                                                                                                  §§goto(addr677);
                                                                                                               }
                                                                                                               §§goto(addr800);
                                                                                                            }
                                                                                                            §§goto(addr637);
                                                                                                         }
                                                                                                         §§goto(addr709);
                                                                                                      }
                                                                                                      §§goto(addr768);
                                                                                                   }
                                                                                                   §§goto(addr804);
                                                                                                }
                                                                                                §§goto(addr790);
                                                                                             }
                                                                                             addr353:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr667);
                                                                                                }
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr796);
                                                                                       }
                                                                                       §§goto(addr768);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_ || param2)
                                                                                    {
                                                                                       addr308:
                                                                                       §§push(-§§pop());
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          addr316:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr318);
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr97);
               }
               §§goto(addr120);
            }
            §§goto(addr68);
         }
         §§goto(addr45);
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
               loop1:
               while(true)
               {
                  §§push(_loc3_.col1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc8_)
                     {
                        §§push(this.m_v1);
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr528:
                           addr463:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                           }
                           §§push(this.m_v1);
                           if(_loc8_ && this)
                           {
                              continue;
                           }
                           §§push(§§pop().x);
                           loop18:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop19:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 loop20:
                                 while(!(_loc8_ && this))
                                 {
                                    §§push(§§pop().y);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(this.m_v1);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(§§pop().y);
                                          loop21:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr512:
                                             loop22:
                                             while(true)
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
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc3_.col1);
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_v2);
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(_loc3_.col2);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_v2);
                                                                                             addr404:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                          addr402:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr415:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                          }
                                                                                          addr415:
                                                                                       }
                                                                                    }
                                                                                    addr394:
                                                                                 }
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr428:
                                                                                          if(!(_loc9_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       while(_loc9_ || param2)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          continue loop27;
                                                                                          loop40:
                                                                                          for(; !(_loc8_ && param1); loop42:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && param1))
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      loop43:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            loop37:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               §§push(this.m_v2);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.col2);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(this.m_v2);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc8_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    addr324:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc8_ && param2)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       break loop43;
                                                                                                                                    }
                                                                                                                                    addr532:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_v1);
                                                                                                                                       addr534:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          addr535:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr536:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr537:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr538:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr539:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                         addr540:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2.position);
                                                                                                                                                            addr448:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  break loop34;
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                               addr254:
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop42;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc3_.col1);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                     addr453:
                                                                                                                                                                     while(_loc9_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr463);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop29;
                                                                                                                                                               }
                                                                                                                                                            }
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
                                                                                                                              §§goto(addr324);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr394);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.col2);
                                                                                                                           break loop20;
                                                                                                                        }
                                                                                                                        addr529:
                                                                                                                     }
                                                                                                                     break loop43;
                                                                                                                  }
                                                                                                                  §§goto(addr536);
                                                                                                               }
                                                                                                               §§goto(addr324);
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                         §§push(_loc7_);
                                                                                                         addr142:
                                                                                                         break;
                                                                                                         if(_loc8_ && param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§push(param1.§>h§);
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               addr71:
                                                                                                               if(_loc9_ || param2)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc9_ || this)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           loop51:
                                                                                                                           while(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§^!z§);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(!(_loc8_ && this))
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr32);
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             §§goto(addr362);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr156:
                                                                                                                                             param1.§>h§.y = _loc5_;
                                                                                                                                             loop65:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§^!z§);
                                                                                                                                                addr106:
                                                                                                                                                addr196:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  break loop51;
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr162:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr163:
                                                                                                                                                               addr185:
                                                                                                                                                               while(!(_loc8_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§^!z§);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr198:
                                                                                                                                                                     while(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop42;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr540);
                                                                                                                                                                     addr198:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr163);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            §§goto(addr198);
                                                                                                                                                         }
                                                                                                                                                         addr197:
                                                                                                                                                         addr116:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr162);
                                                                                                                                                   }
                                                                                                                                                   continue loop65;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr197);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr157:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr116);
                                                                                                                                    }
                                                                                                                                    §§goto(addr106);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§>h§);
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
                                                                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                §§push(param1.§^!z§);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr237:
                                                                                                                                 }
                                                                                                                                 §§goto(addr196);
                                                                                                                              }
                                                                                                                              §§goto(addr163);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr32:
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr241);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr157);
                                                                                                                              }
                                                                                                                              §§goto(addr198);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 §§goto(addr185);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr240);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr177:
                                                                                                                        }
                                                                                                                        §§goto(addr240);
                                                                                                                     }
                                                                                                                     §§goto(addr156);
                                                                                                                  }
                                                                                                                  §§goto(addr239);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr71);
                                                                                                                  }
                                                                                                                  addr176:
                                                                                                               }
                                                                                                               §§goto(addr177);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr156);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            break loop42;
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      addr220:
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                   §§goto(addr538);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop40;
                                                                                          },while(_loc9_ || _loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             continue loop40;
                                                                                          },continue loop24)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                continue loop40;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    continue loop23;
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§goto(addr237);
                                                                                    }
                                                                                    §§goto(addr176);
                                                                                    §§push(param1.§>h§);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr453);
                                                                                    §§goto(addr428);
                                                                                 }
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr539);
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
                                       §§goto(addr534);
                                    }
                                    §§goto(addr512);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr532);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr529);
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.§&q§ = 0;
         }
         do
         {
            param1.center.SetV(this.m_v1);
            do
            {
               param1.§6_§ = 0;
            }
            while(!_loc4_);
            
         }
         while(!_loc4_);
         
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
            if(_loc10_)
            {
               addr30:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!_loc11_)
               {
                  addr34:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§%!r§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§%!r§(param3,this.m_v2);
               §§push(b2Math.§#D§(param1,_loc6_));
               if(_loc10_)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param2)
                  {
                     addr68:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(b2Math.§#D§(param1,_loc7_));
                  if(_loc10_)
                  {
                     §§push(§§pop() - param2);
                     if(_loc10_ || param3)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc9_:* = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc8_);
                     while(true)
                     {
                        §§push(0);
                        if(!_loc11_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc11_ && this))
                              {
                                 §§push(_loc9_);
                                 while(true)
                                 {
                                    §§push(0);
                                    addr599:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc9_);
                                             if(_loc10_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc10_ || param2)
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
                                                                     addr541:
                                                                     §§push(_loc8_);
                                                                     if(!(_loc11_ && param3))
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr581:
                                                                                 §§push(§§pop() * _loc7_.x);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr581);
                                                                     }
                                                                     addr583:
                                                                     §§pop().x = §§pop() + §§pop();
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        §§push(_loc9_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr460:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr463:
                                                                                                §§push(_loc8_);
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   addr471:
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr474:
                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         addr489:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr486:
                                                                                                            §§push(_loc7_.y);
                                                                                                         }
                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                         loop5:
                                                                                                         for(; _loc10_ || param1; while(true)
                                                                                                         {
                                                                                                            if(!(_loc10_ || param1))
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§goto(addr217);
                                                                                                         })
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               §§push(_loc5_.x);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§goto(addr242);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / 3);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr242);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                            §§goto(addr491);
                                                                                                         }
                                                                                                         addr491:
                                                                                                         addr602:
                                                                                                      }
                                                                                                      §§goto(addr489);
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr489);
                                                                                                }
                                                                                                §§goto(addr486);
                                                                                             }
                                                                                             §§goto(addr489);
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                    §§goto(addr460);
                                                                                 }
                                                                                 §§goto(addr474);
                                                                              }
                                                                              §§goto(addr489);
                                                                           }
                                                                        }
                                                                        §§goto(addr489);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc10_ || param3))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(_loc7_);
                                                                           §§push(_loc9_);
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc10_ || param3)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!(_loc11_ && param2))
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr310:
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      addr318:
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         addr326:
                                                                                                         §§push(§§pop() - _loc9_);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr336:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               addr333:
                                                                                                               §§push(_loc7_.y);
                                                                                                            }
                                                                                                            §§pop().y = §§pop() + §§pop();
                                                                                                            §§goto(addr338);
                                                                                                         }
                                                                                                         §§goto(addr336);
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                      §§goto(addr336);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          §§goto(addr310);
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr583);
                                                               }
                                                               §§goto(addr581);
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr581);
                                                }
                                             }
                                             §§goto(addr541);
                                          }
                                          return §§pop();
                                       }
                                       addr242:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc11_ && this))
                                       {
                                          §§push(_loc7_.x);
                                       }
                                       §§pop().x = §§pop();
                                       while(true)
                                       {
                                          if(_loc11_ && this)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc11_)
                                          {
                                             break;
                                          }
                                          §§push(param4);
                                          §§push(_loc5_.y);
                                          if(!_loc11_)
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc11_ && param1))
                                                {
                                                   addr194:
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
                                          §§goto(addr194);
                                       }
                                       return 0;
                                    }
                                 }
                              }
                              §§goto(addr602);
                           }
                           else
                           {
                              §§push(_loc9_);
                           }
                           §§goto(addr350);
                        }
                        §§goto(addr599);
                        if(!(_loc10_ || param1))
                        {
                           continue;
                        }
                        §§push(_loc6_.x);
                        if(!(_loc11_ && param3))
                        {
                           §§push(_loc5_.x);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc11_ && this))
                              {
                                 §§push(_loc7_.y);
                                 if(_loc10_ || param2)
                                 {
                                    §§push(_loc5_.y);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc10_)
                                       {
                                          addr140:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc11_ && param3))
                                          {
                                             addr148:
                                             §§push(_loc6_.y);
                                             if(_loc10_)
                                             {
                                                §§push(_loc5_.y);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc10_)
                                                   {
                                                      addr159:
                                                      §§push(_loc7_.x);
                                                      if(!_loc11_)
                                                      {
                                                         addr166:
                                                         §§push(§§pop() * (§§pop() - _loc5_.x));
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   addr168:
                                                   §§goto(addr169);
                                                   §§push(§§pop() * (§§pop() - §§pop()));
                                                }
                                                §§goto(addr166);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr359);
               }
               §§goto(addr68);
            }
            §§goto(addr34);
         }
         §§goto(addr30);
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
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_.col1.x);
            if(_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc4_)
                     {
                        addr55:
                        §§push(this.m_coreV1);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().y);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 addr90:
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_ || param1)
                                 {
                                    addr98:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_)
                                    {
                                       addr104:
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_ || this)
                                       {
                                          addr126:
                                          §§push(this.m_coreV1.x);
                                          if(_loc4_)
                                          {
                                             §§goto(addr152);
                                          }
                                          addr152:
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_ || this)
                                          {
                                             §§push(_loc2_.col2.y);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() * this.m_coreV1.y);
                                             }
                                          }
                                          return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr152);
                                    }
                                 }
                              }
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr104);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr98);
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
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc10_ || param1)
         {
            §§push(_loc4_.col1.x);
            if(!_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_)
                  {
                     addr59:
                     §§push(_loc4_.col2.x);
                     if(_loc10_ || param1)
                     {
                        addr54:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc10_)
                     {
                        addr62:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param1.position.y);
                     if(_loc10_ || this)
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc9_)
                        {
                           §§push(this.m_coreV1.x);
                           if(_loc10_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc9_ && param2))
                              {
                                 addr112:
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc9_ && param2))
                                 {
                                    addr107:
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc10_ || param1)
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
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_)
                                          {
                                             addr140:
                                             §§push(_loc4_.col2.x);
                                             if(_loc10_)
                                             {
                                                addr149:
                                                §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                             }
                                             §§goto(addr149);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc10_)
                                          {
                                             addr153:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(param1.position.y);
                                          if(_loc10_ || this)
                                          {
                                             §§push(_loc4_.col1.y);
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(this.m_coreV2.x);
                                                if(_loc10_ || param3)
                                                {
                                                   addr213:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc4_.col2.y);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() * this.m_coreV2.y);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc10_ || param3)
                                                   {
                                                      addr222:
                                                      var _loc8_:Number = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc10_ || param1)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  addr328:
                                                                  §§push(_loc6_);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(param3);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc10_ || param3)
                                                                        {
                                                                           addr342:
                                                                           addr343:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(_loc7_);
                                                                           if(_loc9_ && param1)
                                                                           {
                                                                           }
                                                                           addr388:
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
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   addr226:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§;!o§);
                                                                                                      if(!(_loc9_ && param2))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   addr226:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§;!o§);
                                                                                                      addr290:
                                                                                                      addr391:
                                                                                                      while(_loc10_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            addr392:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr392);
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§push(this.§;!o§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc10_ || this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop2;
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr389);
                                                                        }
                                                                        §§push(param2);
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc10_ || param3)
                                                                              {
                                                                              }
                                                                              addr387:
                                                                              §§goto(addr388);
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        §§push(§§pop() * param3);
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr59);
               }
               §§goto(addr54);
            }
            §§goto(addr59);
         }
         §§goto(addr62);
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
               while(!(_loc6_ && param1))
               {
                  while(true)
                  {
                     this.m_cornerDir1 = param3;
                     do
                     {
                        this.m_cornerConvex1 = param4;
                     }
                     while(_loc6_ && this);
                     
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
         if(!_loc6_)
         {
            this.§1!#§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               while(_loc5_)
               {
                  while(_loc5_ || param2)
                  {
                     this.m_cornerConvex2 = param4;
                     if(_loc5_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.m_cornerDir2 = param3;
            §§goto(addr44);
         }
      }
   }
}
