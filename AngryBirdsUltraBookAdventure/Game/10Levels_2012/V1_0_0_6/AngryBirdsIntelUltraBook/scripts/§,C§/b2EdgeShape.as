package §,C§
{
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2AABB;
   import §8w§.b2RayCastInput;
   import §8w§.b2RayCastOutput;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §3,§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §1e§:Number;
      
      b2internal var §-n§:b2Vec2;
      
      b2internal var §]x§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §if §:b2EdgeShape;
      
      b2internal var §`!K§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§3,§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  addr453:
                  loop2:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop9:
                        for(; _loc4_ || this; while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              continue loop1;
                           }
                           continue loop9;
                        },continue loop2)
                        {
                           §"_§ = b2internal::`!<;
                           while(_loc4_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              this.§`!K§ = null;
                              while(true)
                              {
                                 this.§if § = null;
                                 addr371:
                                 while(true)
                                 {
                                    this.m_v1 = param1;
                                    continue loop9;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.m_cornerDir2 = new b2Vec2();
                              addr407:
                              while(true)
                              {
                                 super();
                                 continue loop9;
                              }
                              §§goto(addr381);
                           }
                           addr381:
                        }
                     }
                  }
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  this.m_v2 = param2;
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              addr340:
                              if(!(_loc3_ && param1))
                              {
                                 §§push(this.§]x§);
                                 §§push(this.m_v2.x);
                                 if(_loc4_)
                                 {
                                    §§push(this.m_v1.x);
                                    if(!_loc3_)
                                    {
                                       addr305:
                                       §§push(§§pop() - §§pop());
                                       §§push(this.m_v2.y);
                                       if(!(_loc3_ && param2))
                                       {
                                          §§push(§§pop() - this.m_v1.y);
                                       }
                                    }
                                    §§pop().Set(§§pop(),§§pop());
                                    continue;
                                 }
                                 §§goto(addr305);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§]x§ = new b2Vec2();
                                    §§goto(addr340);
                                 }
                                 addr435:
                              }
                           }
                           while(true)
                           {
                              this.m_cornerDir1 = new b2Vec2();
                              §§goto(addr413);
                           }
                        }
                        break;
                     }
                     §§goto(addr376);
                  }
                  §§goto(addr407);
               }
            }
         }
         §§goto(addr441);
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
         if(!(_loc18_ && param2))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc18_ && param1))
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
            if(!_loc18_)
            {
               §§push(this.m_v1.x);
               if(!(_loc18_ && param3))
               {
                  addr108:
                  §§push(§§pop() * §§pop());
                  if(!(_loc18_ && param2))
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc19_)
                     {
                        §§push(§§pop() * this.m_v1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc18_ && this))
                  {
                     addr116:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc19_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc19_ || param3)
                     {
                        §§push(this.m_v1.x);
                        if(_loc19_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc18_ && param1))
                           {
                              addr146:
                              §§push(_loc4_.col2.y);
                              if(!(_loc18_ && param3))
                              {
                                 addr156:
                                 §§push(§§pop() * this.m_v1.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc19_ || this)
                           {
                              addr169:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param3.position.y);
                           if(_loc19_ || param2)
                           {
                              §§push(_loc4_.col1.y);
                              if(_loc19_)
                              {
                                 §§push(this.m_v2.x);
                                 if(_loc19_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc18_ && param3))
                                    {
                                       addr204:
                                       §§push(_loc4_.col2.y);
                                       if(_loc19_ || param1)
                                       {
                                          addr218:
                                          §§push(§§pop() + §§pop() * this.m_v2.y);
                                          if(!_loc18_)
                                          {
                                             addr221:
                                             §§push(§§pop() + §§pop());
                                             if(_loc19_ || this)
                                             {
                                                addr230:
                                                §§push(§§pop() - _loc8_);
                                                if(_loc19_)
                                                {
                                                   addr233:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             §§push(param3.position.x);
                                             if(_loc19_ || param3)
                                             {
                                                §§push(_loc4_.col1.x);
                                                if(_loc19_)
                                                {
                                                   §§push(this.m_v2.x);
                                                   if(_loc19_ || param3)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc19_ || param3)
                                                      {
                                                         §§push(_loc4_.col2.x);
                                                         if(_loc19_)
                                                         {
                                                            addr273:
                                                            §§push(§§pop() * this.m_v2.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc19_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               addr284:
                                                               §§push(§§pop() - _loc7_);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  addr292:
                                                                  §§push(-§§pop());
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     addr300:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(100 * Number.MIN_VALUE);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc5_);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              addr342:
                                                                              §§push(§§pop() * _loc10_);
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 addr351:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr364:
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       addr362:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc12_:*;
                                                                                    §§push(_loc12_ = §§pop());
                                                                                    if(_loc19_ || param3)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                §§push(param2.p1);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc19_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc18_ && param2))
                                                                                                      {
                                                                                                         addr408:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc19_ || param3)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(_loc19_ || param1)
                                                                                                               {
                                                                                                                  addr868:
                                                                                                                  §§push(param2.p1.y);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     addr871:
                                                                                                                     §§push(_loc8_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        addr873:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr872:
                                                                                                                  }
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_ = §§pop();
                                                                                                                     loop4:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           loop6:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 loop8:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr860:
                                                                                                                                       loop0:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          loop1:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             addr865:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                addr830:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   loop51:
                                                                                                                                                   while(_loc19_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr848:
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
                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2.§[n§);
                                                                                                                                                                        loop17:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             loop45:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                addr806:
                                                                                                                                                                                                loop42:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                   loop18:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         loop20:
                                                                                                                                                                                                         while(_loc19_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            while(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  addr823:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     addr824:
                                                                                                                                                                                                                     while(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr660:
                                                                                                                                                                                                                  if(!(_loc19_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc18_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc18_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr701:
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr703:
                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                    if(_loc19_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc19_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          param1.fraction = _loc15_;
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       addr721:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc19_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                                                                       §§goto(addr703);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr827:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr729:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                    addr730:
                                                                                                                                                                                                                                    while(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr650);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr701);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr701:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr873);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr823);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr701);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr872);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(1 + _loc11_);
                                                                                                                                                                                                               if(_loc18_ && param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc19_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr631);
                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr653);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr805:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr827);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr443);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr795:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr809);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr819);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr806);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr795);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr848);
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
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr539);
                                                                                                            }
                                                                                                            §§goto(addr871);
                                                                                                         }
                                                                                                         §§goto(addr805);
                                                                                                      }
                                                                                                      §§goto(addr860);
                                                                                                   }
                                                                                                   §§goto(addr873);
                                                                                                }
                                                                                                §§goto(addr868);
                                                                                             }
                                                                                             §§goto(addr865);
                                                                                          }
                                                                                          §§goto(addr444);
                                                                                       }
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                    §§goto(addr830);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr364);
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr292);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr169);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr108);
         }
         §§goto(addr116);
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
         if(!(_loc9_ && this))
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
                                                               while(_loc8_)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(!(_loc8_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop21:
                                                                           while(!(_loc9_ && param1))
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_v1);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    while(_loc8_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr519:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr520:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr521:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr522:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.position);
                                                                                                      loop30:
                                                                                                      for(; !_loc9_; while(true)
                                                                                                      {
                                                                                                         §§push(param2.position);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      },continue loop0)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc3_.col1);
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         addr463:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop47:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop49:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc8_ || param2)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop50:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        loop51:
                                                                                                                        while(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           loop52:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ || param2))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                       addr248:
                                                                                                                                    }
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§+!`§);
                                                                                                                                                   addr257:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      addr258:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         addr259:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§"W§);
                                                                                                                                                            addr231:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr255:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(param1.§+!`§);
                                                                                                                                                loop54:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   loop55:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      loop56:
                                                                                                                                                      while(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§"W§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            addr207:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  addr323:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop52;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop56;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.col2);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop22;
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc8_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     while(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.m_v2);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           addr451:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr452:
                                                                                                                                                                              while(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr463);
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr463);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr519);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc8_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop5;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr323);
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr518);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                  }
                                                                                                                                                                  addr323:
                                                                                                                                                                  continue loop7;
                                                                                                                                                                  addr210:
                                                                                                                                                                  addr438:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr45:
                                                                                                                                                            if(!(_loc8_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc8_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc8_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc8_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop51;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(param1.§"W§);
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr45);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 addr151:
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr36:
                                                                                                                                                                                    return;
                                                                                                                                                                                    addr153:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr259);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr207);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr255);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr259);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr210);
                                                                                                                                                                     }
                                                                                                                                                                     addr195:
                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr142);
                                                                                                                                                                        §§push(param1.§"W§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr233);
                                                                                                                                                                     addr115:
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr175:
                                                                                                                                                                        if(!(_loc8_ || param2))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop15;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(param1.§+!`§);
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop54;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        if(!(_loc8_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop55;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        §§goto(addr195);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr36);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr151);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr142);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr231);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr464);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr232);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr436:
                                                                                                                                          }
                                                                                                                                          §§goto(addr438);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop45:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop6;
                                                                                                                                                }
                                                                                                                                                §§push(this.m_v2);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(_loc9_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                                §§goto(addr306);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.m_v2);
                                                                                                                                                   break loop45;
                                                                                                                                                }
                                                                                                                                                addr432:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             addr435:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr290:
                                                                                                                                       }
                                                                                                                                       §§goto(addr436);
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        §§goto(addr522);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr520);
                                                                                                               }
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                            §§goto(addr463);
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§goto(addr435);
                                                                                          }
                                                                                          continue loop11;
                                                                                          addr364:
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
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
               if(_loc9_ && this)
               {
                  continue;
               }
               §§goto(addr283);
               §§push(§§pop().y);
            }
         }
         §§goto(addr36);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.§]J§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     param1.§93§ = 0;
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr49);
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
            if(!_loc10_)
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
            var _loc6_:b2Vec2 = b2Math.§#!<§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§#!<§(param3,this.m_v2);
            §§push(b2Math.§+!1§(param1,_loc6_));
            if(!_loc10_)
            {
               §§push(§§pop() - param2);
               if(!_loc10_)
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§+!1§(param1,_loc7_));
               if(_loc11_ || param1)
               {
                  §§push(§§pop() - param2);
                  if(!(_loc10_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               if(!(_loc10_ && param3))
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
                              if(!(_loc10_ && param2))
                              {
                                 §§push(0);
                                 if(_loc11_ || param3)
                                 {
                                    if(!(_loc11_ || param2))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc11_ || param1)
                                          {
                                             §§push(_loc7_);
                                             §§push(_loc9_);
                                             if(!(_loc10_ && param2))
                                             {
                                                §§push(-§§pop());
                                                if(_loc11_ || param2)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc11_)
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
                                                               addr428:
                                                               §§push(_loc6_.x);
                                                               if(_loc11_)
                                                               {
                                                                  addr432:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(!(_loc10_ && param3))
                                                                           {
                                                                              addr466:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr463:
                                                                                 §§push(_loc7_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 §§push(_loc9_);
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       addr295:
                                                                                       §§push(_loc8_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc11_ || param2)
                                                                                                      {
                                                                                                         addr329:
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc11_ || param2)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc11_ || param3)
                                                                                                            {
                                                                                                               addr345:
                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr355:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr352:
                                                                                                                     §§push(_loc7_.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                  loop5:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        loop9:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    addr261:
                                                                                                                                    §§push(§§pop() + _loc7_.x);
                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                    {
                                                                                                                                       addr269:
                                                                                                                                       §§push(§§pop() / 3);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 while(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§push(param4);
                                                                                                                                    §§push(_loc5_.y);
                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          addr221:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_.y);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop() / 3;
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          if(_loc11_ || this)
                                                                                                                                          {
                                                                                                                                             break loop9;
                                                                                                                                          }
                                                                                                                                          addr547:
                                                                                                                                          addr638:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc10_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               addr577:
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               if(!(_loc10_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr589:
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - _loc9_);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr620);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr620:
                                                                                                                                                                        addr621:
                                                                                                                                                                        addr599:
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           addr617:
                                                                                                                                                                           §§push(_loc7_.x);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop() + §§pop();
                                                                                                                                                                        loop7:
                                                                                                                                                                        while(!(_loc10_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                 if(_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(_loc11_)
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
                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                if(!(_loc10_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc11_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr511:
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      if(_loc11_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         if(_loc11_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr527:
                                                                                                                                                                                                            §§push(§§pop() - _loc9_);
                                                                                                                                                                                                            if(_loc11_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr542:
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr539:
                                                                                                                                                                                                                  §§push(_loc7_.y);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop9;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr544:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr542);
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr542);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr539);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr542);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr527);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr542);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr511);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        return 0;
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr620);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr617);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr621);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr620);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr599);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr617);
                                                                                                                                                }
                                                                                                                                                §§goto(addr589);
                                                                                                                                             }
                                                                                                                                             §§goto(addr577);
                                                                                                                                             §§goto(addr638);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr221);
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              §§goto(addr261);
                                                                                                                           }
                                                                                                                           §§goto(addr269);
                                                                                                                        }
                                                                                                                        §§push(0.5);
                                                                                                                        if(!(_loc11_ || this))
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(_loc11_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_.y);
                                                                                                                                 if(!(_loc10_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.y);
                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc11_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             addr160:
                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                addr169:
                                                                                                                                                §§push(_loc5_.y);
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr188:
                                                                                                                                                         §§push(§§pop() - §§pop() * (§§pop() - _loc5_.x));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr188);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       §§goto(addr169);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr188);
                                                                                                                              }
                                                                                                                              §§goto(addr160);
                                                                                                                           }
                                                                                                                           §§goto(addr169);
                                                                                                                        }
                                                                                                                        §§goto(addr160);
                                                                                                                        addr236:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           addr634:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              addr635:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr547);
                                                                                                                                 }
                                                                                                                                 §§goto(addr620);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr633:
                                                                                                                     }
                                                                                                                     §§goto(addr547);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr355);
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§goto(addr352);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                           }
                                                                           §§goto(addr466);
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               §§goto(addr463);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr428);
                                             }
                                             §§goto(addr466);
                                          }
                                          §§goto(addr544);
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr635);
                              }
                              §§goto(addr634);
                           }
                           while(!_loc11_);
                           
                           if(!_loc10_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        §§goto(addr633);
                     }
                  }
               }
               §§goto(addr629);
            }
            §§goto(addr64);
         }
         §§goto(addr31);
      }
      
      public function §4! §() : Number
      {
         return this.§1e§;
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
      
      public function §4!9§() : b2Vec2
      {
         return this.§-n§;
      }
      
      public function §,S§() : b2Vec2
      {
         return this.§]x§;
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
      
      public function §4!v§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(!_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_.col2.x);
                     if(!(_loc4_ && this))
                     {
                        §§push(this.m_coreV1);
                        if(_loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_)
                              {
                                 addr79:
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_ || param1)
                                 {
                                    addr87:
                                    addr88:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_ && param1)
                                    {
                                    }
                                    §§goto(addr147);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(!_loc4_)
                                 {
                                    addr105:
                                    §§push(this.m_coreV1.x);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr131:
                                          §§push(_loc2_.col2.y);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr145:
                                             §§push(§§pop() + §§pop() * this.m_coreV1.y);
                                          }
                                          §§goto(addr145);
                                       }
                                       addr147:
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr87);
               }
               §§goto(addr79);
            }
            §§goto(addr87);
         }
         §§goto(addr88);
      }
      
      public function §+!2§() : b2EdgeShape
      {
         return this.§if §;
      }
      
      public function §,!X§() : b2EdgeShape
      {
         return this.§`!K§;
      }
      
      public function §"!f§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc10_ || this)
         {
            §§push(_loc4_.col1.x);
            if(_loc10_ || this)
            {
               §§push(this.m_coreV1.x);
               if(_loc10_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc9_ && param1))
                  {
                     addr74:
                     §§push(_loc4_.col2.x);
                     if(!(_loc9_ && param1))
                     {
                        addr69:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc10_ || param3)
                     {
                        addr83:
                        var _loc5_:Number = §§pop();
                        §§push(param1.position.y);
                        if(_loc10_ || param3)
                        {
                           §§push(_loc4_.col1.y);
                           if(!_loc9_)
                           {
                              §§push(this.m_coreV1.x);
                              if(_loc10_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc9_)
                                 {
                                    addr112:
                                    §§push(_loc4_.col2.y);
                                    if(_loc10_ || param2)
                                    {
                                       addr126:
                                       §§push(§§pop() + §§pop() * this.m_coreV1.y);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc9_ && param1))
                                 {
                                    addr135:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(param1.position.x);
                                 if(_loc10_)
                                 {
                                    §§push(_loc4_.col1.x);
                                    if(!(_loc9_ && param3))
                                    {
                                       §§push(this.m_coreV2.x);
                                       if(_loc10_ || param3)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_ || param3)
                                          {
                                             addr180:
                                             §§push(_loc4_.col2.x);
                                             if(!_loc9_)
                                             {
                                                addr175:
                                                §§push(§§pop() * this.m_coreV2.y);
                                             }
                                             §§push(§§pop() + (§§pop() + §§pop()));
                                             if(_loc10_ || param3)
                                             {
                                                addr199:
                                                var _loc7_:Number = §§pop();
                                                §§push(param1.position.y);
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc4_.col1.y);
                                                   if(_loc10_)
                                                   {
                                                      §§push(this.m_coreV2.x);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc10_ || this)
                                                         {
                                                            addr228:
                                                            §§push(_loc4_.col2.y);
                                                            if(_loc10_)
                                                            {
                                                               addr233:
                                                               §§push(§§pop() * this.m_coreV2.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            addr247:
                                                            var _loc8_:Number = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc9_ && param3))
                                                                     {
                                                                        addr343:
                                                                        §§push(_loc6_);
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(param3);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr358:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    addr376:
                                                                                    §§push(param2);
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc10_ || param3)
                                                                                       {
                                                                                          addr392:
                                                                                          §§push(_loc8_);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr397:
                                                                                             §§push(§§pop() + §§pop() * param3);
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          §§push(this.§3,§);
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
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§3,§);
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr271:
                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     if(_loc10_ || param2)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(!(_loc10_ || param1))
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           if(!(_loc9_ && param3))
                                                                                                                           {
                                                                                                                              addr305:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§3,§);
                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       return §§pop();
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 continue loop12;
                                                                                                                                 §§goto(addr305);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr322:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr323:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr251);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr251:
                                                                                                                              addr321:
                                                                                                                           }
                                                                                                                           §§goto(addr321);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                           }
                                                                                                                           addr402:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr305);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr322);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr271);
                                                                                                                     }
                                                                                                                     addr401:
                                                                                                                  }
                                                                                                                  §§goto(addr402);
                                                                                                               }
                                                                                                               §§goto(addr305);
                                                                                                            }
                                                                                                         }
                                                                                                         addr317:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr399:
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr399);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr74);
               }
               §§goto(addr69);
            }
            §§goto(addr74);
         }
         §§goto(addr83);
      }
      
      b2internal function §5;§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§`!K§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            this.m_cornerDir1 = param3;
            do
            {
               this.m_cornerConvex1 = param4;
            }
            while(!(_loc6_ || param3));
            
            if(_loc6_)
            {
               if(_loc6_ || param2)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §<!p§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§if § = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            this.m_cornerConvex2 = param4;
            if(_loc5_ || this)
            {
               if(_loc5_ || param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
   }
}
