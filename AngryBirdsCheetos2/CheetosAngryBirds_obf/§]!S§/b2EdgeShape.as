package §]!S§
{
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2AABB;
   import §-r§.b2RayCastInput;
   import §-r§.b2RayCastOutput;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var § h§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §%!%§:Number;
      
      b2internal var §?!B§:b2Vec2;
      
      b2internal var §=F§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §7C§:b2EdgeShape;
      
      b2internal var § ^§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§ h§ = new b2Vec2();
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
                     loop3:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        while(true)
                        {
                           this.§?!B§ = new b2Vec2();
                           loop5:
                           while(!(_loc4_ && this))
                           {
                              this.§=F§ = new b2Vec2();
                              loop6:
                              while(true)
                              {
                                 this.m_cornerDir1 = new b2Vec2();
                                 loop7:
                                 while(true)
                                 {
                                    this.m_cornerDir2 = new b2Vec2();
                                    loop8:
                                    for(; _loc3_; if(!(_loc4_ && _loc3_))
                                    {
                                       return;
                                    })
                                    {
                                       super();
                                       loop9:
                                       while(true)
                                       {
                                          §#!&§ = b2internal::#!D;
                                          while(true)
                                          {
                                             this.§ ^§ = null;
                                             continue loop0;
                                             addr383:
                                             while(_loc3_ || param1)
                                             {
                                                this.m_v1 = param1;
                                                while(!_loc4_)
                                                {
                                                   this.m_v2 = param2;
                                                   while(true)
                                                   {
                                                      §§push(this.§=F§);
                                                      §§push(this.m_v2.x);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.m_v1.x);
                                                         if(!_loc4_)
                                                         {
                                                            addr344:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(this.m_v2.y);
                                                            if(_loc3_ || this)
                                                            {
                                                               addr354:
                                                               §§push(§§pop() - this.m_v1.y);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            continue loop2;
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   if(_loc3_ || param2)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                                continue loop0;
                                                addr89:
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(this.m_cornerDir2);
                                                §§push(this.§?!B§.x);
                                                if(!_loc4_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§push(this.§?!B§.y);
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                addr96:
                                                if(_loc3_)
                                                {
                                                   addr51:
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      while(!_loc4_)
                                                      {
                                                         §§push(this.m_coreV2);
                                                         §§push(b2Settings.b2_toiSlop);
                                                         if(_loc3_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(this.§?!B§.x);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(this.§=F§.x);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(this.m_v2.x);
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              addr149:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(b2Settings.b2_toiSlop);
                                                                              if(_loc4_)
                                                                              {
                                                                              }
                                                                              addr179:
                                                                              §§pop().Set(§§pop(),§§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       this.m_cornerDir1 = this.§?!B§;
                                                                                       continue;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr325:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(this.§?!B§);
                                                                                       §§push(this.§=F§.y);
                                                                                       §§push(this.§=F§.x);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().Set(§§pop(),§§pop());
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           §§push(-§§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(this.§?!B§.y);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() + this.§=F§.y);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr167:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       addr175:
                                                                                       §§push(this.m_v2.y);
                                                                                    }
                                                                                    §§goto(addr179);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr167);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr149);
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                               §§goto(addr175);
                                                            }
                                                         }
                                                         §§goto(addr149);
                                                         §§goto(addr51);
                                                      }
                                                      §§goto(addr371);
                                                      addr295:
                                                   }
                                                   §§goto(addr58);
                                                }
                                                §§goto(addr78);
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr431);
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
         if(!(_loc19_ && this))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc19_ && param3))
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         _loc4_ = param3.R;
         §§push(param3.position.x);
         if(_loc18_ || this)
         {
            §§push(_loc4_.col1.x);
            if(_loc18_)
            {
               §§push(this.m_v1.x);
               if(_loc18_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc19_ && this))
                  {
                     addr102:
                     §§push(_loc4_.col2.x);
                     if(!_loc19_)
                     {
                        addr107:
                        §§push(§§pop() * this.m_v1.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc18_)
                  {
                     addr116:
                     var _loc7_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc19_ && this))
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc18_ || param2)
                        {
                           §§push(this.m_v1.x);
                           if(!_loc19_)
                           {
                              addr160:
                              §§push(§§pop() * §§pop());
                              if(!_loc19_)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(_loc18_ || param1)
                                 {
                                    §§push(§§pop() * this.m_v1.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc18_ || param3)
                              {
                                 addr168:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param3.position.y);
                              if(_loc18_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(!(_loc19_ && this))
                                 {
                                    §§push(this.m_v2.x);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_)
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(!_loc19_)
                                          {
                                             addr198:
                                             §§push(§§pop() * this.m_v2.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc18_ || param3)
                                          {
                                          }
                                          addr214:
                                          §§push(§§pop() - §§pop());
                                          if(_loc18_ || this)
                                          {
                                             addr223:
                                             var _loc9_:Number = §§pop();
                                             §§push(param3.position.x);
                                             if(!_loc19_)
                                             {
                                                §§push(_loc4_.col1.x);
                                                if(!_loc19_)
                                                {
                                                   §§push(this.m_v2.x);
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc18_ || param2)
                                                      {
                                                         §§push(_loc4_.col2.x);
                                                         if(_loc18_)
                                                         {
                                                            addr261:
                                                            §§push(§§pop() + §§pop() * this.m_v2.y);
                                                            if(_loc18_ || this)
                                                            {
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               addr285:
                                                               §§push(-§§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  addr284:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(100 * Number.MIN_VALUE);
                                                               if(_loc18_)
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
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc18_ || param2)
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(_loc19_)
                                                                           {
                                                                           }
                                                                           addr333:
                                                                           var _loc12_:* = §§pop();
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       §§push(param2.p1);
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                addr367:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         addr789:
                                                                                                         §§push(param2.p1.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            loop51:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr793:
                                                                                                                  loop48:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                        {
                                                                                                                           loop56:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              addr769:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr770:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    addr771:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       addr772:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr773:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr774:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop56;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr768:
                                                                                                                        }
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           loop31:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              loop26:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                    loop22:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop44:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   loop21:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                      addr693:
                                                                                                                                                      §§push(param2.§0`§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop22;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr716:
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr718:
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    loop24:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                addr733:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop51;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         loop45:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc18_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr650:
                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ || this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                     while(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr661:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ && this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(_loc19_ && this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop44;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr393);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr392:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr588);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr586:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr680);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr659:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr770);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr771);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr720:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr774);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr392);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr733);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr769);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr758:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr714);
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
                                                                                                         addr790:
                                                                                                         addr391:
                                                                                                      }
                                                                                                      §§goto(addr515);
                                                                                                   }
                                                                                                   §§goto(addr790);
                                                                                                }
                                                                                                §§goto(addr720);
                                                                                             }
                                                                                             §§goto(addr624);
                                                                                          }
                                                                                          §§goto(addr793);
                                                                                       }
                                                                                       §§goto(addr789);
                                                                                    }
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 addr393:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(_loc19_ && param3)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr680:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc19_ && param3)
                                                                                                {
                                                                                                   continue loop40;
                                                                                                }
                                                                                                §§pop();
                                                                                                addr688:
                                                                                                §§push(_loc16_);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(!(_loc18_ || this))
                                                                                                   {
                                                                                                      continue loop38;
                                                                                                   }
                                                                                                   §§push(_loc12_);
                                                                                                   if(!(_loc18_ || this))
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(_loc19_ && param3)
                                                                                                   {
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      §§push(1 + _loc11_);
                                                                                                      if(!(_loc18_ || param1))
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      addr624:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc18_ || param3)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr617:
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§goto(addr659);
                                                                                                         addr607:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         loop1:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        _loc15_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                           {
                                                                                                                              param1.fraction = _loc15_;
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop49;
                                                                                                                           addr507:
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           if(!(_loc18_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param1.normal);
                                                                                                                              loop5:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                    }
                                                                                                                                    addr459:
                                                                                                                                 }
                                                                                                                                 addr460:
                                                                                                                                 addr588:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    if(!(_loc18_ || param2))
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    if(!(_loc18_ || this))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                    {
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    §§goto(addr716);
                                                                                                                                 }
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(!(_loc18_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(_loc19_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    §§goto(addr607);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop49;
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop46;
                                                                                                            }
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         §§goto(addr617);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr771);
                                                                                                }
                                                                                                §§goto(addr596);
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop43;
                                                                                       }
                                                                                    }
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop17;
                                                                                    return §§pop();
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                           §§goto(addr768);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              addr331:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         §§goto(addr261);
                                                         §§push(_loc7_);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc18_)
                                       {
                                          §§goto(addr214);
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr223);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr116);
               }
               §§goto(addr107);
            }
            §§goto(addr102);
         }
         §§goto(addr116);
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
         if(_loc9_)
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
                                                                  while(_loc9_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     for(; _loc9_ || _loc3_; while(!(_loc8_ && param2))
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr408);
                                                                        §§push(this.m_v2);
                                                                        §§goto(addr296);
                                                                     })
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              while(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    §§push(this.m_v1);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr507:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop7;
                                                                              addr491:
                                                                           }
                                                                           loop25:
                                                                           while(_loc9_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr512:
                                                                                 addr385:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    addr513:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2.position);
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 loop30:
                                                                                 for(; _loc9_ || param1; while(true)
                                                                                 {
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       continue loop30;
                                                                                    }
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc7_ = §§pop();
                                                                                    §§goto(addr373);
                                                                                    §§goto(addr122);
                                                                                 },continue loop17)
                                                                                 {
                                                                                    §§push(_loc3_.col1);
                                                                                    loop31:
                                                                                    while(!_loc8_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       continue loop19;
                                                                                       addr252:
                                                                                       §§push(_loc3_.col1);
                                                                                       if(_loc8_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       loop46:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr296:
                                                                                                         if(_loc8_ && param2)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         §§push(_loc3_.col2);
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  addr322:
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     addr324:
                                                                                                                     §§push(this.m_v2);
                                                                                                                     if(_loc9_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr337:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop47:
                                                                                                                           for(; !(_loc8_ && param1); if(_loc8_ && this)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              addr156:
                                                                                                                              if(_loc8_ && this)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§>!7§);
                                                                                                                                 addr165:
                                                                                                                                 loop72:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                loop63:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§=k§);
                                                                                                                                                   addr103:
                                                                                                                                                   loop60:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr217:
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop63;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop60;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr32);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr513);
                                                                                                                                                                  }
                                                                                                                                                                  addr111:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  break loop60;
                                                                                                                                                               }
                                                                                                                                                               addr217:
                                                                                                                                                            }
                                                                                                                                                            addr190:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr191:
                                                                                                                                                               while(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr122:
                                                                                                                                                                        if(_loc8_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr129);
                                                                                                                                                                     }
                                                                                                                                                                     addr221:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        continue loop46;
                                                                                                                                                                     }
                                                                                                                                                                     break loop60;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr32);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr459);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr106:
                                                                                                                                                      }
                                                                                                                                                      addr187:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr190);
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                         }
                                                                                                                                                         addr216:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr217);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop63;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr118);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr187);
                                                                                                                                                               §§push(param1.§=k§);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§>!7§);
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
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr237:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr216);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr241);
                                                                                                                                                         addr92:
                                                                                                                                                         if(!(_loc9_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(param1.§=k§);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr191);
                                                                                                                                                                     }
                                                                                                                                                                     addr61:
                                                                                                                                                                     if(!(_loc8_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr32:
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr221);
                                                                                                                                                                        §§goto(addr61);
                                                                                                                                                                     }
                                                                                                                                                                     addr373:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr111);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr92);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr156);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr217);
                                                                                                                                                               addr85:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr106);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr103);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr200:
                                                                                                                                             }
                                                                                                                                             §§goto(addr240);
                                                                                                                                          }
                                                                                                                                          addr175:
                                                                                                                                       }
                                                                                                                                       §§goto(addr239);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop72;
                                                                                                                                       }
                                                                                                                                       addr199:
                                                                                                                                    }
                                                                                                                                    §§goto(addr200);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           },§§push(param1.§>!7§),if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 §§goto(addr85);
                                                                                                                              }
                                                                                                                              §§goto(addr175);
                                                                                                                           },§§goto(addr165))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc9_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              addr448:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop43:
                                                                                                                                 while(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       addr459:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param2.position);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop43;
                                                                                                                                                }
                                                                                                                                                §§goto(addr252);
                                                                                                                                                addr129:
                                                                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop47;
                                                                                                                                                      }
                                                                                                                                                      continue loop46;
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                §§goto(addr512);
                                                                                                                                             }
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                       addr459:
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                           addr340:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ || param1))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                                 addr444:
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr448);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        continue loop10;
                                                                                                                        addr434:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr434);
                                                                                                                        §§goto(addr324);
                                                                                                                     }
                                                                                                                     addr433:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr410:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.col2);
                                                                                                                           addr412:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              break loop46;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr409:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr337);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr491);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr412);
                                                                                                      }
                                                                                                      §§goto(addr447);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§goto(addr444);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop46;
                                                                                             }
                                                                                             addr408:
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       while(_loc9_ || _loc3_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             if(_loc8_ && param1)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                             §§push(this.m_v2);
                                                                                          }
                                                                                          §§goto(addr499);
                                                                                       }
                                                                                       §§goto(addr507);
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop2;
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
         §§goto(addr163);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            param1.§>A§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            param1.§[8§ = 0;
            if(_loc4_ || param2)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc11_)
         {
            §§push(param2);
            if(!_loc11_)
            {
               addr25:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc11_ && param1))
               {
                  addr34:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§=!!§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§=!!§(param3,this.m_v2);
               §§push(b2Math.§%!a§(param1,_loc6_));
               if(_loc10_)
               {
                  §§push(§§pop() - param2);
                  if(!_loc11_)
                  {
                     addr63:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(b2Math.§%!a§(param1,_loc7_));
                  if(_loc10_)
                  {
                     §§push(§§pop() - param2);
                     if(_loc10_ || param3)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || param3)
                     {
                        §§push(_loc8_);
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
                                 while(true)
                                 {
                                    if(_loc10_)
                                    {
                                       §§push(0);
                                       if(!_loc11_)
                                       {
                                          if(_loc11_)
                                          {
                                             continue loop1;
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc10_ || param1)
                                             {
                                                §§push(_loc7_);
                                                §§push(_loc9_);
                                                if(!_loc11_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc11_ && param3))
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc10_ || param2)
                                                            {
                                                               addr369:
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§push(_loc6_.x);
                                                                  if(!(_loc11_ && param3))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc10_)
                                                                           {
                                                                              addr390:
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr406:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                 }
                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       §§push(_loc9_);
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!(_loc11_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc6_.y);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr286:
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr299:
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc9_);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr311:
                                                                                                                           §§push(§§pop() * _loc7_.y);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                               addr313:
                                                                                                               §§pop().y = §§pop() + §§pop();
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        loop9:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 addr238:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.x);
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop() / 3;
                                                                                                                                 for(; _loc10_; §§pop().y = §§pop(),if(!(_loc10_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },if(_loc11_)
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 },addr207:,if(!(_loc11_ && this))
                                                                                                                                 {
                                                                                                                                    break loop9;
                                                                                                                                 },addr500:,while(true)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                    §§goto(addr207);
                                                                                                                                 })
                                                                                                                                 {
                                                                                                                                    §§push(param4);
                                                                                                                                    §§push(_loc5_.y);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(_loc10_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc10_ || param3))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr190:
                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 3);
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr190);
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc11_ && param3)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr238);
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                        addr215:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr575:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        addr576:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           §§goto(addr577);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr500);
                                                                                                                  }
                                                                                                                  §§goto(addr571);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr313);
                                                                                                         }
                                                                                                         §§goto(addr299);
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr597);
                                                                                 }
                                                                                 addr407:
                                                                              }
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                }
                                                §§goto(addr406);
                                             }
                                             §§goto(addr407);
                                          }
                                          §§goto(addr215);
                                       }
                                       addr577:
                                       §§goto(addr595);
                                    }
                                    §§goto(addr576);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr575);
                           }
                           if(!(_loc10_ || param2))
                           {
                              continue;
                           }
                           §§push(_loc6_.x);
                           if(_loc10_ || param3)
                           {
                              §§push(_loc5_.x);
                              if(_loc10_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc10_)
                                 {
                                    §§push(_loc7_.y);
                                    if(_loc10_)
                                    {
                                       §§push(_loc5_.y);
                                       if(!(_loc11_ && param2))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc11_ && param3))
                                             {
                                                addr143:
                                                §§push(_loc6_.y);
                                                if(!_loc11_)
                                                {
                                                   addr147:
                                                   §§push(_loc5_.y);
                                                   if(_loc10_)
                                                   {
                                                      addr162:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr154:
                                                         §§push(_loc7_.x);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() - _loc5_.x);
                                                         }
                                                      }
                                                      addr164:
                                                      return §§pop();
                                                      §§push(§§pop() * (§§pop() - §§pop()));
                                                   }
                                                   §§goto(addr162);
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr143);
                        }
                     }
                     addr595:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc11_ && param3))
                           {
                              break;
                           }
                           addr597:
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(_loc9_);
                           if(_loc10_)
                           {
                              §§push(-§§pop());
                              if(!_loc11_)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc11_ && param2))
                                 {
                                    §§push(_loc9_);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc11_)
                                       {
                                          addr523:
                                          §§push(§§pop() / §§pop());
                                          if(_loc10_)
                                          {
                                             §§push(_loc6_.x);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc11_ && this))
                                                {
                                                   addr538:
                                                   §§push(_loc8_);
                                                   if(_loc10_ || param1)
                                                   {
                                                      addr546:
                                                      §§push(_loc8_);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(§§pop() - _loc9_);
                                                         if(_loc11_ && this)
                                                         {
                                                         }
                                                         addr570:
                                                         §§pop().x = §§pop() + §§pop() * §§pop();
                                                         addr568:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            §§push(_loc9_);
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               §§push(-§§pop());
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc10_ || param3)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr452:
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr455:
                                                                              §§push(_loc6_.y);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc11_ && param3))
                                                                                 {
                                                                                    addr467:
                                                                                    §§push(_loc8_);
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       addr475:
                                                                                       §§push(_loc8_);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr478:
                                                                                          §§push(§§pop() - _loc9_);
                                                                                          if(!(_loc11_ && this))
                                                                                          {
                                                                                             addr487:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc10_ || param3)
                                                                                             {
                                                                                                addr497:
                                                                                                §§push(§§pop() * _loc7_.y);
                                                                                             }
                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                             §§goto(addr500);
                                                                                          }
                                                                                          §§goto(addr497);
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr487);
                                                                              }
                                                                              §§goto(addr497);
                                                                           }
                                                                           §§goto(addr487);
                                                                        }
                                                                        §§goto(addr475);
                                                                     }
                                                                     §§goto(addr478);
                                                                  }
                                                                  §§goto(addr452);
                                                               }
                                                               §§goto(addr455);
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         addr571:
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr566:
                                                         §§goto(addr568);
                                                         §§push(_loc7_.x);
                                                      }
                                                      §§goto(addr568);
                                                   }
                                                }
                                                §§goto(addr570);
                                             }
                                             §§goto(addr566);
                                          }
                                          §§goto(addr570);
                                       }
                                       §§goto(addr546);
                                    }
                                    §§goto(addr570);
                                 }
                                 §§goto(addr523);
                              }
                              §§goto(addr538);
                           }
                           §§goto(addr570);
                        }
                     }
                     return 0;
                  }
                  §§goto(addr80);
               }
               §§goto(addr63);
            }
            §§goto(addr34);
         }
         §§goto(addr25);
      }
      
      public function §9M§() : Number
      {
         return this.§%!%§;
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
      
      public function §@!Q§() : b2Vec2
      {
         return this.§?!B§;
      }
      
      public function §=!4§() : b2Vec2
      {
         return this.§=F§;
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
      
      public function §][§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(_loc3_ || _loc3_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc3_ || this)
                     {
                        §§push(this.m_coreV1);
                        if(_loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr87:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr98:
                                       §§push(_loc2_.col1.y);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr110:
                                          §§push(this.m_coreV1.x);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_)
                                             {
                                                addr116:
                                                §§push(_loc2_.col2.y);
                                                if(!_loc3_)
                                                {
                                                }
                                                return new §§pop().b2Vec2(§§pop(),§§pop() + (§§pop() + §§pop()));
                                                addr136:
                                             }
                                          }
                                          §§goto(addr136);
                                          §§push(§§pop() * this.m_coreV1.y);
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr98);
               }
               §§goto(addr116);
            }
         }
         §§goto(addr87);
      }
      
      public function §^_§() : b2EdgeShape
      {
         return this.§7C§;
      }
      
      public function §;!I§() : b2EdgeShape
      {
         return this.§ ^§;
      }
      
      public function §3%§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc9_)
         {
            §§push(_loc4_.col1.x);
            if(_loc9_ || param2)
            {
               §§push(this.m_coreV1.x);
               if(_loc9_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     addr48:
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        addr53:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc10_ && param3))
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(!_loc10_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc9_ || param2)
                     {
                        §§push(this.m_coreV1.x);
                        if(!(_loc10_ && this))
                        {
                           addr116:
                           §§push(§§pop() * §§pop());
                           if(!(_loc10_ && param2))
                           {
                              §§push(_loc4_.col2.y);
                              if(_loc9_ || this)
                              {
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc9_)
                           {
                              addr120:
                              var _loc6_:Number = §§pop();
                              §§push(param1.position.x);
                              if(!_loc10_)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(!_loc10_)
                                    {
                                       addr159:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc10_ && param2))
                                       {
                                          §§push(_loc4_.col2.x);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc10_ && param1))
                                       {
                                          addr167:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(param1.position.y);
                                       if(_loc9_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc9_)
                                          {
                                             §§push(this.m_coreV2.x);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc10_)
                                                {
                                                   addr212:
                                                   §§push(_loc4_.col2.y);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      addr207:
                                                      §§push(§§pop() * this.m_coreV2.y);
                                                   }
                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                   if(_loc9_)
                                                   {
                                                      addr215:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc9_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               addr307:
                                                               §§push(_loc6_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr310:
                                                                  §§push(param3);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr322:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           addr330:
                                                                           §§push(param2);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr356:
                                                                                    §§push(§§pop() + §§pop() * param3);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                           }
                                                                           §§goto(addr356);
                                                                        }
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        §§push(this.§ h§);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || param2)
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
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          §§push(this.§ h§);
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§ h§);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr283:
                                                                                                         loop5:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            addr362:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         addr287:
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                addr361:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                addr285:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr362);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr283);
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr358:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§ h§);
                                                                                          addr360:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr362);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr120);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr120);
               }
               §§goto(addr53);
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
      
      b2internal function §'!h§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§ ^§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
               loop1:
               while(!(_loc5_ && this))
               {
                  this.m_cornerDir1 = param3;
                  while(true)
                  {
                     this.m_cornerConvex1 = param4;
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && param2))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      b2internal function §[!V§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§7C§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               loop2:
               while(_loc5_ || param2)
               {
                  this.m_cornerConvex2 = param4;
                  if(_loc5_)
                  {
                     addr29:
                     if(!(_loc5_ || param3))
                     {
                        while(true)
                        {
                           this.m_cornerDir2 = param3;
                           continue loop2;
                           §§goto(addr29);
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
