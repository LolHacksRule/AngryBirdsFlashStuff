package §4!$§
{
   import §3"5§.b2AABB;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §<7§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §7!U§:Number;
      
      b2internal var §7w§:b2Vec2;
      
      b2internal var §8_§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §,"0§:b2EdgeShape;
      
      b2internal var § !9§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§<7§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  addr451:
                  while(!(_loc3_ && _loc3_))
                  {
                     this.m_coreV1 = new b2Vec2();
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§7w§ = new b2Vec2();
            loop5:
            while(true)
            {
               this.§8_§ = new b2Vec2();
               addr420:
               while(true)
               {
                  this.m_cornerDir1 = new b2Vec2();
                  addr414:
                  while(true)
                  {
                     this.m_cornerDir2 = new b2Vec2();
                     continue loop5;
                  }
               }
            }
            while(_loc4_ || param1)
            {
               if(!_loc3_)
               {
                  this.m_v1 = param1;
                  §§goto(addr363);
               }
               §§goto(addr451);
            }
         }
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
         if(!_loc19_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc19_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc18_)
            {
               addr58:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc4_ = param3.R;
            §§push(param3.position.x);
            if(!_loc19_)
            {
               §§push(_loc4_.col1.x);
               if(_loc18_ || this)
               {
                  §§push(this.m_v1.x);
                  if(!(_loc19_ && param3))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc18_ || param2)
                     {
                        addr112:
                        §§push(_loc4_.col2.x);
                        if(!(_loc19_ && param2))
                        {
                           addr107:
                           §§push(§§pop() * this.m_v1.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(_loc18_ || param3)
                        {
                           addr120:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(param3.position.y);
                        if(_loc18_ || param1)
                        {
                           §§push(_loc4_.col1.y);
                           if(!(_loc19_ && param1))
                           {
                              §§push(this.m_v1.x);
                              if(_loc18_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc19_ && param2))
                                 {
                                    addr160:
                                    §§push(_loc4_.col2.y);
                                    if(!_loc19_)
                                    {
                                       addr169:
                                       §§push(§§pop() + §§pop() * this.m_v1.y);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc19_)
                                 {
                                    addr173:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(param3.position.y);
                                 if(_loc18_)
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(_loc18_)
                                    {
                                       §§push(this.m_v2.x);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc18_ || this)
                                          {
                                             §§push(_loc4_.col2.y);
                                             if(_loc18_)
                                             {
                                                addr207:
                                                §§push(§§pop() + §§pop() * this.m_v2.y);
                                                if(_loc19_ && param3)
                                                {
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc19_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc9_:* = §§pop();
                                                §§push(param3.position.x);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc4_.col1.x);
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(!(_loc19_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(_loc4_.col2.x);
                                                            if(_loc18_ || this)
                                                            {
                                                               addr272:
                                                               §§push(§§pop() * this.m_v2.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc18_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc18_ || this)
                                                               {
                                                                  addr293:
                                                                  §§push(§§pop() - _loc7_);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        addr299:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(100 * Number.MIN_VALUE);
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc5_);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc18_ || param3)
                                                                        {
                                                                           addr336:
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr346:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    §§push(param2.p1);
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      addr824:
                                                                                                      §§push(param2.p1.y);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         addr826:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr827:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr828:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc14_ = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr825:
                                                                                                   }
                                                                                                   loop0:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      loop1:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop3:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  loop5:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     loop6:
                                                                                                                     while(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop8:
                                                                                                                           while(!_loc19_)
                                                                                                                           {
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              loop9:
                                                                                                                              while(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop10:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    loop11:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       loop12:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop13:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop14:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   loop15:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2.§%#8§);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr742:
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     loop19:
                                                                                                                                                                     while(!(_loc19_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 addr753:
                                                                                                                                                                                 loop20:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr783:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc18_ || param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr825);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             loop54:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                loop34:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   loop40:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      loop38:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                         loop31:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            addr669:
                                                                                                                                                                                                            addr678:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                                                                                                                               loop29:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!(_loc18_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop30:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc18_ || this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr699:
                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop34;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        loop39:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                              if(_loc18_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc18_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(1 + _loc11_);
                                                                                                                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr610:
                                                                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                             addr620:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop26:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                                                                            break loop30;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr646:
                                                                                                                                                                                                                                                         addr565:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                                                                                                                                            addr573:
                                                                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop39;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.normal);
                                                                                                                                                                                                                                                                  loop48:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr515:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr516:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                        if(!(_loc18_ || param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr656:
                                                                                                                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           param1.fraction = _loc15_;
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop22;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr573);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr428);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr427:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr448);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                             addr780:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                addr781:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr782:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop54;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr779:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop30;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr780);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr610);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr669);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ && param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr782);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr646);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr635:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr781);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr782);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr620);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr678);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr783:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr779);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr756:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr783);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr427);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr428);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr781);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr780);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr742);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr827);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr753);
                                                                                                                                                   }
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr750);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§goto(addr828);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr826);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr565);
                                                                                             }
                                                                                             §§goto(addr666);
                                                                                          }
                                                                                          §§goto(addr635);
                                                                                       }
                                                                                       §§goto(addr756);
                                                                                    }
                                                                                    §§goto(addr824);
                                                                                 }
                                                                                 §§goto(addr568);
                                                                              }
                                                                              addr428:
                                                                              while(true)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr619);
                                                                        }
                                                                        §§goto(addr783);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc18_ || this)
                                          {
                                             addr223:
                                             §§goto(addr207);
                                             §§push(_loc8_);
                                          }
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr107);
               }
               §§goto(addr112);
            }
            §§goto(addr120);
         }
         §§goto(addr58);
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
         if(_loc8_)
         {
            §§push(param2.position);
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
                                                               while(!(_loc9_ && param1))
                                                               {
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     §§push(_loc3_.col1);
                                                                     loop18:
                                                                     while(!_loc9_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(_loc8_ || _loc3_)
                                                                        {
                                                                           §§push(this.m_v1);
                                                                           if(!(_loc8_ || _loc3_))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(§§pop().x);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr343:
                                                                              if(!(_loc8_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              loop45:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(_loc3_.col2);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(this.m_v2);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop46:
                                                                                                         while(!(_loc9_ && this))
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop47:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     loop48:
                                                                                                                     while(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        loop49:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           loop50:
                                                                                                                           while(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 continue loop47;
                                                                                                                              }
                                                                                                                              addr540:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 break loop48;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc9_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop50;
                                                                                                                                 }
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                    {
                                                                                                                                       addr154:
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          continue loop45;
                                                                                                                                       }
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 addr471:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    break loop50;
                                                                                                                                 }
                                                                                                                                 addr247:
                                                                                                                              }
                                                                                                                              continue loop48;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              loop43:
                                                                                                                              while(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(param2.position);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc8_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 addr301:
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc9_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§push(_loc3_.col1);
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_v2);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr428:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ || param1))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.col2);
                                                                                                                                                            break loop45;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop11;
                                                                                                                                                   addr428:
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop46;
                                                                                                                                                }
                                                                                                                                                addr336:
                                                                                                                                                if(_loc8_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr343);
                                                                                                                                                }
                                                                                                                                                while(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   §§goto(addr336);
                                                                                                                                                }
                                                                                                                                                continue loop8;
                                                                                                                                                addr453:
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr471);
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr540);
                                                                                                                                                }
                                                                                                                                                addr539:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                          addr169:
                                                                                                                                          if(!(_loc8_ || param1))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr176:
                                                                                                                                          if(_loc8_ || this)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(param1.§1!,§);
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               loop59:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop43;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc9_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(param1.§ D§);
                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr45:
                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           if(!(_loc9_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop60:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.§ D§);
                                                                                                                                                                                                while(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   continue loop60;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop61:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   addr237:
                                                                                                                                                                                                   addr277:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      break loop60;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr277:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop61;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr202:
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc8_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop49;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr273:
                                                                                                                                                                                             addr273:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.§1!,§);
                                                                                                                                                                                                addr275:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   break loop59;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr277);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr247);
                                                                                                                                                                                    }
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr209:
                                                                                                                                                                              §§goto(addr237);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr118);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr208:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr45);
                                                                                                                                                                           }
                                                                                                                                                                           addr208:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr209);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr115);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr184:
                                                                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr194:
                                                                                                                                                                        §§push(param1.§1!,§);
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           §§goto(addr202);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     addr232:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr208);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr237);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  §§goto(addr277);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                               }
                                                                                                                                                               addr231:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr232);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr194);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr275);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr230:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr231);
                                                                                                                                                }
                                                                                                                                                §§goto(addr194);
                                                                                                                                             }
                                                                                                                                             §§goto(addr184);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr428);
                                                                                                                                                §§push(this.m_v2);
                                                                                                                                                §§goto(addr176);
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                             addr424:
                                                                                                                                          }
                                                                                                                                          §§goto(addr540);
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    while(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr424);
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                    }
                                                                                                                                    continue loop18;
                                                                                                                                    addr421:
                                                                                                                                    §§goto(addr428);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr301);
                                                                                                                                    }
                                                                                                                                    addr419:
                                                                                                                                 }
                                                                                                                                 §§goto(addr421);
                                                                                                                              }
                                                                                                                              addr542:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param2.position);
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        §§goto(addr542);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr444);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr538:
                                                                                                            }
                                                                                                            §§goto(addr539);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.m_v2);
                                                                                                            addr449:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               addr450:
                                                                                                               while(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr453);
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                         }
                                                                                                         addr381:
                                                                                                         addr447:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr537:
                                                                                                      }
                                                                                                      §§goto(addr538);
                                                                                                   }
                                                                                                   §§goto(addr450);
                                                                                                }
                                                                                                §§goto(addr449);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.m_v1);
                                                                                                   if(!(_loc8_ || param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                }
                                                                                                continue loop9;
                                                                                                addr527:
                                                                                             }
                                                                                             §§goto(addr537);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                          }
                                                                                          continue loop7;
                                                                                          addr524:
                                                                                       }
                                                                                       §§goto(addr527);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr522:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr524);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr447);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr522);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop13;
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
         §§goto(addr273);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.§5"Z§ = 0;
            while(true)
            {
               param1.§+#K§.SetV(this.m_v1);
               while(_loc4_)
               {
                  param1.I = 0;
                  if(_loc4_)
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc11_)
         {
            §§push(param2);
            if(!(_loc10_ && param3))
            {
               addr31:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!_loc10_)
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§""$§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§""$§(param3,this.m_v2);
            §§push(b2Math.§+#>§(param1,_loc6_));
            if(_loc11_)
            {
               §§push(§§pop() - param2);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§+#>§(param1,_loc7_));
            if(!(_loc10_ && param3))
            {
               §§push(§§pop() - param2);
               if(!(_loc10_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc10_)
            {
               §§push(_loc8_);
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc10_)
                        {
                           §§push(_loc9_);
                           loop2:
                           while(true)
                           {
                              §§push(0);
                              addr605:
                              addr334:
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc6_);
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
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc11_ || param2)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc11_ || param1)
                                                      {
                                                         addr552:
                                                         §§push(_loc6_.x);
                                                         if(_loc11_ || param2)
                                                         {
                                                            addr561:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc11_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() - _loc9_);
                                                                     if(_loc11_)
                                                                     {
                                                                        addr585:
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           addr582:
                                                                           §§push(_loc7_.x);
                                                                        }
                                                                        §§pop().x = §§pop() + §§pop();
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           §§push(_loc9_);
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr449:
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          addr468:
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr471:
                                                                                             §§push(_loc6_.y);
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   addr488:
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc9_);
                                                                                                         if(!(_loc10_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr519:
                                                                                                               §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr519);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr209:
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param4);
                                                                                                      §§push(_loc5_.x);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc6_.x);
                                                                                                         if(_loc11_ || param2)
                                                                                                         {
                                                                                                            addr242:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc10_ && param2))
                                                                                                            {
                                                                                                               §§push(_loc7_.x);
                                                                                                            }
                                                                                                            §§pop().x = §§pop() / 3;
                                                                                                            loop8:
                                                                                                            while(!_loc10_)
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  §§push(param4);
                                                                                                                  §§push(_loc5_.y);
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc6_.y);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr196:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc7_.y);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop() / 3;
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr196);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr433:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§goto(addr606);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(_loc11_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       addr274:
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                       {
                                                                                                                                          addr282:
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             addr286:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                addr289:
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   addr307:
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc11_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr315:
                                                                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr325:
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                         break loop8;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr325);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr325);
                                                                                                                                          }
                                                                                                                                          §§goto(addr307);
                                                                                                                                       }
                                                                                                                                       §§goto(addr289);
                                                                                                                                    }
                                                                                                                                    §§goto(addr286);
                                                                                                                                 }
                                                                                                                                 §§goto(addr315);
                                                                                                                              }
                                                                                                                              §§goto(addr274);
                                                                                                                           }
                                                                                                                           §§goto(addr289);
                                                                                                                        }
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr433:
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  break loop7;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc10_ && param1)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr242);
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr519);
                                                                                          }
                                                                                          §§goto(addr488);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr519);
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                              §§goto(addr471);
                                                                           }
                                                                           §§goto(addr449);
                                                                        }
                                                                     }
                                                                     §§goto(addr585);
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr585);
                                                               }
                                                            }
                                                            §§goto(addr585);
                                                         }
                                                         §§goto(addr582);
                                                      }
                                                   }
                                                }
                                                §§goto(addr585);
                                             }
                                             §§goto(addr561);
                                          }
                                          §§goto(addr552);
                                       }
                                       §§goto(addr585);
                                    }
                                    addr522:
                                 }
                              }
                              while(true)
                              {
                                 if(_loc10_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 §§push(0);
                                 if(_loc11_)
                                 {
                                    if(_loc10_ && param1)
                                    {
                                       break;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc10_ && param2))
                                       {
                                          §§push(_loc7_);
                                          §§push(_loc9_);
                                          if(_loc11_ || param3)
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(_loc8_);
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc11_ || param2)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc11_)
                                                               {
                                                                  addr405:
                                                                  §§push(_loc8_);
                                                                  if(_loc11_ || param3)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        §§push(§§pop() - _loc9_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr431:
                                                                              §§push(§§pop() + §§pop() * _loc7_.x);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               §§pop().x = §§pop();
                                                               §§goto(addr433);
                                                            }
                                                            §§goto(addr431);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                   }
                                                }
                                                §§goto(addr431);
                                             }
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr433);
                                    }
                                    §§goto(addr209);
                                 }
                                 else
                                 {
                                    §§goto(addr605);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        addr606:
                        return 0;
                     }
                     §§push(_loc9_);
                     §§goto(addr334);
                  }
               }
            }
            §§goto(addr435);
         }
         §§goto(addr31);
      }
      
      public function §;!]§() : Number
      {
         return this.§7!U§;
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
      
      public function §+!s§() : b2Vec2
      {
         return this.§7w§;
      }
      
      public function §7!&§() : b2Vec2
      {
         return this.§8_§;
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
      
      public function §@!@§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_.col1.x);
            if(!_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(_loc3_)
                        {
                           §§push(§§pop().y);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 addr79:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr88);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr93);
               }
               §§goto(addr79);
            }
            §§goto(addr93);
         }
         addr88:
         §§push(§§pop() + §§pop());
         §§push(param1.position.y);
         if(_loc3_)
         {
            addr93:
            §§push(_loc2_.col1.y);
            if(_loc3_)
            {
               addr98:
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && this))
               {
                  addr108:
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     addr111:
                     §§push(_loc2_.col2.y);
                     if(!(_loc4_ && param1))
                     {
                        addr135:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr137);
               }
               §§goto(addr135);
            }
            §§goto(addr111);
         }
         addr137:
         return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
      }
      
      public function §'#C§() : b2EdgeShape
      {
         return this.§,"0§;
      }
      
      public function §^"[§() : b2EdgeShape
      {
         return this.§ !9§;
      }
      
      public function §^#X§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && this))
         {
            §§push(_loc4_.col1.x);
            if(_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_ || param3)
                  {
                     addr53:
                     §§push(_loc4_.col2.x);
                     if(_loc9_ || param3)
                     {
                        addr67:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr67);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || param2)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc9_ || param1)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc9_ || param1)
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc10_ && this))
                           {
                              addr111:
                              §§push(_loc4_.col2.y);
                              if(_loc9_ || param1)
                              {
                                 addr121:
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc10_ && this))
                           {
                              addr134:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param1.position.x);
                           if(_loc9_ || param2)
                           {
                              §§push(_loc4_.col1.x);
                              if(_loc9_ || param1)
                              {
                                 §§push(this.m_coreV2.x);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       addr169:
                                       §§push(_loc4_.col2.x);
                                       if(_loc9_)
                                       {
                                          addr178:
                                          §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc10_ && param3))
                                    {
                                       addr188:
                                       var _loc7_:Number = §§pop();
                                       §§push(param1.position.y);
                                       if(!_loc10_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc9_ || param2)
                                          {
                                             §§push(this.m_coreV2.x);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc10_ && this))
                                                {
                                                   addr227:
                                                   §§push(_loc4_.col2.y);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      addr241:
                                                      §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc10_ && param3))
                                                {
                                                   addr251:
                                                   var _loc8_:Number = §§pop();
                                                   if(_loc9_ || param3)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_ || param2)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(param3);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc9_)
                                                                     {
                                                                        addr367:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                        addr397:
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           §§push(this.§<7§);
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(this.§<7§);
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(_loc8_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                if(_loc10_ && param1)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr398:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§<7§);
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      addr401:
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr402:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§<7§);
                                                                                                            addr319:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               §§push(_loc6_);
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                   addr330:
                                                                                                }
                                                                                                §§goto(addr401);
                                                                                                §§goto(addr321);
                                                                                             }
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                        }
                                                                        §§goto(addr398);
                                                                     }
                                                                     §§push(param2);
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr394:
                                                                              §§push(§§pop() * param3);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr397);
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr394);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr367);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr134);
               }
               §§goto(addr67);
            }
            §§goto(addr53);
         }
         §§goto(addr76);
      }
      
      b2internal function §'"x§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§ !9§ = param1;
            loop0:
            while(true)
            {
               this.m_coreV1 = param2;
               while(true)
               {
                  this.m_cornerDir1 = param3;
                  while(_loc6_)
                  {
                     continue loop0;
                     this.m_cornerConvex1 = param4;
                     if(_loc6_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      b2internal function § "H§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§,"0§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               addr49:
               if(_loc6_ && param3)
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
               if(_loc6_ && param3)
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
