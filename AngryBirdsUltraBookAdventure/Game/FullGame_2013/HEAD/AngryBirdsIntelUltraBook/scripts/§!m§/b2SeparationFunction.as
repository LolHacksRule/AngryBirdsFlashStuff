package §!m§
{
   import §+!g§.b2Settings;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §^a§:int = 1;
      
      public static const §<!!§:int = 2;
      
      public static const §&!>§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^a§ = 1;
            do
            {
               §<!!§ = 2;
               do
               {
                  §&!>§ = 4;
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public var §@3§:b2DistanceProxy;
      
      public var §5!G§:b2DistanceProxy;
      
      public var §2!5§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §@_§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§@_§ = new b2Vec2();
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §2@§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc35_:Boolean = false;
         var _loc36_:Boolean = true;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Mat22 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc25_:b2Vec2 = null;
         var _loc26_:b2Vec2 = null;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:b2Vec2 = null;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         if(!_loc35_)
         {
            this.§@3§ = param2;
            if(_loc36_)
            {
               addr93:
               this.§5!G§ = param4;
            }
            var _loc6_:int = param1.count;
            if(!_loc35_)
            {
               §§push(b2Settings);
               if(_loc36_ || this)
               {
                  §§push(0);
                  if(!_loc35_)
                  {
                     §§push(_loc6_);
                     if(_loc36_ || this)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc36_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc35_)
                           {
                              §§push(§§pop());
                              if(_loc36_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(_loc36_)
                                 {
                                    addr140:
                                    §§pop();
                                    addr143:
                                    addr142:
                                    addr141:
                                    §§push(_loc6_ < 3);
                                    if(_loc36_ || param2)
                                    {
                                    }
                                    addr152:
                                    §§pop().b2Assert(§§pop());
                                    if(_loc36_ || param2)
                                    {
                                       addr161:
                                       if(_loc6_ == 1)
                                       {
                                          if(!_loc35_)
                                          {
                                             this.§2!5§ = §^a§;
                                             if(!(_loc35_ && param3))
                                             {
                                                addr177:
                                                §§push(this.§@3§);
                                                if(!_loc35_)
                                                {
                                                   §§push(§§pop().§3S§(param1.indexA[0]));
                                                   if(_loc36_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      _loc10_ = this.§5!G§.§3S§(param1.indexB[0]);
                                                      _loc20_ = _loc7_;
                                                      _loc19_ = param3.R;
                                                      if(!(_loc35_ && this))
                                                      {
                                                         §§push(param3.position);
                                                         if(_loc36_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc36_ || param2)
                                                            {
                                                               §§push(_loc19_.col1);
                                                               if(_loc36_ || param2)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(_loc20_.x);
                                                                     if(_loc36_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc36_ || param3)
                                                                        {
                                                                           addr249:
                                                                           §§push(_loc19_.col2);
                                                                           if(_loc36_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc36_ || param3)
                                                                              {
                                                                                 addr261:
                                                                                 §§push(_loc20_.y);
                                                                                 if(_loc36_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc35_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc35_ && this))
                                                                                          {
                                                                                             addr284:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc35_ && param3))
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(_loc36_)
                                                                                                {
                                                                                                   addr297:
                                                                                                   §§push(param3.position.y);
                                                                                                   if(_loc36_)
                                                                                                   {
                                                                                                      addr300:
                                                                                                      §§push(_loc19_.col1.y);
                                                                                                      if(_loc36_)
                                                                                                      {
                                                                                                         addr305:
                                                                                                         §§push(_loc20_.x);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            addr309:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc35_)
                                                                                                            {
                                                                                                               addr312:
                                                                                                               §§push(_loc19_.col2.y);
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  addr320:
                                                                                                                  §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                               }
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc35_)
                                                                                                            {
                                                                                                               addr325:
                                                                                                               _loc14_ = §§pop();
                                                                                                               _loc20_ = _loc10_;
                                                                                                               _loc19_ = param5.R;
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(param5.position);
                                                                                                                  loop141:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr532:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc19_.col1);
                                                                                                                        addr534:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr535:
                                                                                                                           loop144:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc20_.x);
                                                                                                                              loop145:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_.col2);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_.y);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr500:
                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                             if(_loc35_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                             if(!(_loc35_ && param3))
                                                                                                                                             {
                                                                                                                                                if(_loc35_ && param3)
                                                                                                                                                {
                                                                                                                                                   continue loop144;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr527:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      addr528:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§@_§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr382:
                                                                                                                                                                        §§goto(addr570);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr559:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc35_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr559:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                continue loop141;
                                                                                                                                                §§goto(addr363);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr558:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr481:
                                                                                                                                       §§push(_loc19_.col2);
                                                                                                                                       if(!(_loc36_ || param3))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(_loc36_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc36_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop145;
                                                                                                                                          }
                                                                                                                                          §§goto(addr500);
                                                                                                                                       }
                                                                                                                                       §§goto(addr510);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr528);
                                                                                                               addr324:
                                                                                                            }
                                                                                                            §§goto(addr325);
                                                                                                         }
                                                                                                         §§goto(addr320);
                                                                                                      }
                                                                                                      §§goto(addr312);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             §§goto(addr300);
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   else
                                                   {
                                                      addr1852:
                                                      _loc8_ = §§pop();
                                                      _loc9_ = this.§@3§.§3S§(param1.indexA[1]);
                                                      _loc11_ = this.§5!G§.§3S§(param1.indexB[0]);
                                                      _loc12_ = this.§5!G§.§3S§(param1.indexB[1]);
                                                      _loc23_ = b2Math.§&!M§(param3,_loc7_);
                                                      _loc24_ = b2Math.§]!§(param3.R,b2Math.§2!C§(_loc9_,_loc8_));
                                                      _loc25_ = b2Math.§&!M§(param5,_loc10_);
                                                      _loc26_ = b2Math.§]!§(param5.R,b2Math.§2!C§(_loc12_,_loc11_));
                                                      if(!(_loc35_ && this))
                                                      {
                                                         §§push(_loc24_.x);
                                                         if(_loc36_)
                                                         {
                                                            §§push(_loc24_.x);
                                                            if(_loc36_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc36_)
                                                               {
                                                                  §§push(_loc24_.y);
                                                                  if(_loc36_ || param2)
                                                                  {
                                                                     §§push(_loc24_.y);
                                                                     if(!(_loc35_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc35_ && this))
                                                                        {
                                                                           addr1963:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc36_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc36_)
                                                                              {
                                                                                 addr1969:
                                                                                 _loc27_ = §§pop();
                                                                                 if(!(_loc35_ && param2))
                                                                                 {
                                                                                    addr1977:
                                                                                    §§push(_loc26_.x);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       addr1981:
                                                                                       §§push(_loc26_.x);
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          addr1985:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc35_ && param2))
                                                                                          {
                                                                                             addr1993:
                                                                                             §§push(_loc26_.y);
                                                                                             if(_loc36_ || param3)
                                                                                             {
                                                                                                addr2002:
                                                                                                §§push(§§pop() * _loc26_.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc35_)
                                                                                             {
                                                                                             }
                                                                                             addr2009:
                                                                                             _loc28_ = §§pop();
                                                                                             _loc29_ = b2Math.§2!C§(_loc26_,_loc24_);
                                                                                             if(!(_loc35_ && param3))
                                                                                             {
                                                                                                §§push(_loc24_.x);
                                                                                                loop84:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc29_.x);
                                                                                                   loop85:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop86:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc24_.y);
                                                                                                         loop87:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc29_.y);
                                                                                                            loop88:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop89:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop90:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop91:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc30_ = §§pop();
                                                                                                                        loop92:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc26_.x);
                                                                                                                           loop93:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc29_.x);
                                                                                                                              loop94:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop95:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc26_.y);
                                                                                                                                    loop96:
                                                                                                                                    while(!_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc29_.y);
                                                                                                                                       while(_loc36_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop98:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr2403:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                addr2404:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc31_ = §§pop();
                                                                                                                                                   addr2405:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc24_.x);
                                                                                                                                                      addr2366:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc26_.x);
                                                                                                                                                         addr2368:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr2369:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc24_.y);
                                                                                                                                                               addr2371:
                                                                                                                                                               while(!(_loc35_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc26_.y);
                                                                                                                                                                  loop106:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr2381:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr2382:
                                                                                                                                                                        while(!_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc32_ = §§pop();
                                                                                                                                                                              addr2386:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc27_);
                                                                                                                                                                                 addr2326:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc28_);
                                                                                                                                                                                    addr2327:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       addr2328:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc32_);
                                                                                                                                                                                          continue loop106;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop90;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop94;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             loop132:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc36_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop98;
                                                                                                                                                }
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                loop133:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop134:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc34_ = §§pop();
                                                                                                                                                      loop135:
                                                                                                                                                      while(_loc36_)
                                                                                                                                                      {
                                                                                                                                                         loop136:
                                                                                                                                                         do
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc34_);
                                                                                                                                                            if(!(_loc35_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop134;
                                                                                                                                                               }
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  addr2116:
                                                                                                                                                                  if(!(_loc35_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop132;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           while(!(_loc35_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           continue loop96;
                                                                                                                                                                           addr2345:
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc35_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop87;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              addr2141:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop84;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2301:
                                                                                                                                                                                    loop125:
                                                                                                                                                                                    while(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop126:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                                                                          addr2305:
                                                                                                                                                                                          while(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop128:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc32_);
                                                                                                                                                                                                addr2180:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      if(!(_loc35_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop126;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2204:
                                                                                                                                                                                                                           §§push(_loc31_);
                                                                                                                                                                                                                           loop131:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop133;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc28_);
                                                                                                                                                                                                                                       continue loop132;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop122:
                                                                                                                                                                                                                                    while(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc35_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc36_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop128;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(_loc36_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(b2Math);
                                                                                                                                                                                                                                                   §§push(_loc32_);
                                                                                                                                                                                                                                                   if(!(_loc35_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc31_);
                                                                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc30_);
                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * _loc28_);
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr2291:
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr2294:
                                                                                                                                                                                                                                                                     §§push(_loc33_);
                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr2298:
                                                                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2298);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop().§3X§(§§pop(),§§pop(),1));
                                                                                                                                                                                                                                                               continue loop125;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2291);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2298);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2294);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   addr2310:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      break loop122;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2329);
                                                                                                                                                                                                                                          continue loop131;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2368);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop120:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc35_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr2238);
                                                                                                                                                                                                                                                addr2094:
                                                                                                                                                                                                                                                §§push(_loc33_);
                                                                                                                                                                                                                                                if(_loc36_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop136;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2382);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc33_ = §§pop();
                                                                                                                                                                                                                                             continue loop120;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr2361:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2362);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr2238:
                                                                                                                                                                                                                                    §§goto(addr2404);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2381);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2241);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                           addr2204:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2385);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr2353:
                                                                                                                                                                                                                  while(!(_loc35_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr2361);
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2369);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2310);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2328);
                                                                                                                                                                                                            addr2193:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2371);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2204);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   §§goto(addr2116);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2366);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2405);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop91;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop133;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr2140:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2327);
                                                                                                                                                                        §§goto(addr2353);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2204);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2180);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2193);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               loop137:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc36_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop95;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc35_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop86;
                                                                                                                                                                     }
                                                                                                                                                                     _loc34_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc35_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Math);
                                                                                                                                                                           §§push(_loc32_);
                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc30_);
                                                                                                                                                                              if(_loc36_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc36_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc27_);
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2051:
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2051);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().§3X§(§§pop(),§§pop(),1));
                                                                                                                                                                              if(!(_loc35_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc36_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc36_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc36_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc21_ = §§pop();
                                                                                                                                                                                       if(!_loc36_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc36_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop135;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2094);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2256);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2305);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2140);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr2403);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2404);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop137;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2051);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2386);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2141);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2301);
                                                                                                                                                               addr2153:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2326);
                                                                                                                                                         }
                                                                                                                                                         while(false);
                                                                                                                                                         
                                                                                                                                                         _loc7_ = new b2Vec2();
                                                                                                                                                         if(_loc36_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            §§push(_loc8_.x);
                                                                                                                                                            if(!(_loc35_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(_loc36_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_.x);
                                                                                                                                                                  if(_loc36_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc8_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc36_)
                                                                                                                                                            {
                                                                                                                                                               addr2466:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               §§push(_loc8_.y);
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  if(!(_loc35_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_.y);
                                                                                                                                                                     if(!(_loc35_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - _loc8_.y);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                            }
                                                                                                                                                            _loc10_ = new b2Vec2();
                                                                                                                                                            if(_loc36_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               §§push(_loc11_.x);
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_.x);
                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - _loc11_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  §§push(_loc11_.y);
                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                     if(_loc36_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_.y);
                                                                                                                                                                        if(_loc36_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - _loc11_.y);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  addr2596:
                                                                                                                                                                  §§push(Boolean(_loc21_ == 0));
                                                                                                                                                                  §§push(Boolean(_loc21_ == 0));
                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  addr2642:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr2604:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc36_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr2564:
                                                                                                                                                                        §§push(_loc21_ == 1);
                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc35_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc36_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr2585:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2587:
                                                                                                                                                                                    this.§2!5§ = §&!>§;
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§@_§ = b2Math.§`e§(b2Math.§2!C§(_loc12_,_loc11_),1);
                                                                                                                                                                                       if(_loc36_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc35_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2511:
                                                                                                                                                                                             §§push(this.§@_§);
                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().Normalize());
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc36_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.m_localPoint = _loc10_;
                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2511);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(this.§@_§);
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr2668:
                                                                                                                                                                                                                  _loc20_ = §§pop();
                                                                                                                                                                                                                  _loc19_ = param5.R;
                                                                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc19_.col1);
                                                                                                                                                                                                                     if(_loc36_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc20_.x);
                                                                                                                                                                                                                           if(!(_loc35_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr2700:
                                                                                                                                                                                                                                 §§push(_loc19_.col2);
                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc20_.y);
                                                                                                                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc36_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(_loc36_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr2732:
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(_loc36_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc17_ = §§pop();
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr2745:
                                                                                                                                                                                                                                                      §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_.x);
                                                                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr2757:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc36_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr2765:
                                                                                                                                                                                                                                                               §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                               if(!(_loc35_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr2778:
                                                                                                                                                                                                                                                                  addr2775:
                                                                                                                                                                                                                                                                  addr2777:
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr2781:
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc18_ = §§pop();
                                                                                                                                                                                                                                                                  _loc20_ = this.m_localPoint;
                                                                                                                                                                                                                                                                  _loc19_ = param5.R;
                                                                                                                                                                                                                                                                  if(_loc36_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param5.position);
                                                                                                                                                                                                                                                                     if(_loc36_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                        if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr2829:
                                                                                                                                                                                                                                                                                       §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                             if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2853:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr2862:
                                                                                                                                                                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                            if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr2872:
                                                                                                                                                                                                                                                                                                               §§push(param5.position.y);
                                                                                                                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr2877:
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                                                                  if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2885:
                                                                                                                                                                                                                                                                                                                     §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr2889:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr2892:
                                                                                                                                                                                                                                                                                                                           §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr2905:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2905);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr2915:
                                                                                                                                                                                                                                                                                                                           _loc16_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                           _loc20_ = _loc7_;
                                                                                                                                                                                                                                                                                                                           _loc19_ = param3.R;
                                                                                                                                                                                                                                                                                                                           if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr3149:
                                                                                                                                                                                                                                                                                                                              addr3131:
                                                                                                                                                                                                                                                                                                                              §§push(param3.position.x);
                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr3143:
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop() + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y)));
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                              addr3150:
                                                                                                                                                                                                                                                                                                                              §§push(param3.position);
                                                                                                                                                                                                                                                                                                                              if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr3069:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr3084:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop().y * _loc20_.x);
                                                                                                                                                                                                                                                                                                                                       if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr3098:
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr3110:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr3120:
                                                                                                                                                                                                                                                                                                                                                         _loc14_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         addr3121:
                                                                                                                                                                                                                                                                                                                                                         addr3118:
                                                                                                                                                                                                                                                                                                                                                         addr3119:
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr2967:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr3014:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr3034:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr3042:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr3050:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr3054:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  addr3057:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             this.§@_§.§%!R§();
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr2965);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3121);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3057);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2965);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr2965:
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2967);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr570);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3084);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3014);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3054);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3149);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3069);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3110);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3118);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3143);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3084);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3098);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3042);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3034);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3143);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3054);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3084);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3119);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3120);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3014);
                                                                                                                                                                                                                                                                                                                                                            addr3128:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3150);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3143);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr3131);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3128);
                                                                                                                                                                                                                                                                                                                           addr2914:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2915);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2905);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2892);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2914);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2915);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2885);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2905);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2889);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2892);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr2885);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2853);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2829);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr2877);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2862);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2872);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2778);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2781);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2775);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2778);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2765);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2778);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2777);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2757);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2765);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2732);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2778);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2700);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2745);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2778);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr3181:
                                                                                                                                                                                                                  _loc20_ = §§pop();
                                                                                                                                                                                                                  _loc19_ = param3.R;
                                                                                                                                                                                                                  if(!(_loc35_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc19_.col1);
                                                                                                                                                                                                                     if(_loc36_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(_loc36_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc20_.x);
                                                                                                                                                                                                                           if(_loc36_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc36_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_.col2);
                                                                                                                                                                                                                                 if(!(_loc35_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc20_.y);
                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(_loc36_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc17_ = §§pop();
                                                                                                                                                                                                                                                   if(_loc36_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr3268:
                                                                                                                                                                                                                                                      §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr3271:
                                                                                                                                                                                                                                                         §§push(_loc20_.x);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr3275:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr3285:
                                                                                                                                                                                                                                                               §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr3288:
                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc20_.y);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(_loc36_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr3299:
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc18_ = §§pop();
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr3299);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr3288);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr3299);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc20_ = this.m_localPoint;
                                                                                                                                                                                                                                                   _loc19_ = param3.R;
                                                                                                                                                                                                                                                   if(_loc36_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param3.position);
                                                                                                                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         if(!(_loc35_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc19_.col1);
                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                               if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc20_.x);
                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc36_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc20_.y);
                                                                                                                                                                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr3400:
                                                                                                                                                                                                                                                                                                §§push(param3.position.y);
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr3403:
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr3417:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr3420:
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr3428:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop() * _loc20_.y));
                                                                                                                                                                                                                                                                                                               if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr3438:
                                                                                                                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr3438);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr3428);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3438);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc20_ = _loc10_;
                                                                                                                                                                                                                                                                                             _loc19_ = param5.R;
                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr3667:
                                                                                                                                                                                                                                                                                                addr3642:
                                                                                                                                                                                                                                                                                                §§push(param5.position.x);
                                                                                                                                                                                                                                                                                                if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr3666:
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1.x * _loc20_.x);
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col2.x);
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr3663:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop() + (§§pop() + §§pop())));
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                addr3668:
                                                                                                                                                                                                                                                                                                §§push(param5.position);
                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr3597:
                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                         §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr3602:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr3611:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                        if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr3628:
                                                                                                                                                                                                                                                                                                                           addr3623:
                                                                                                                                                                                                                                                                                                                           addr3624:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr3627:
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr3495:
                                                                                                                                                                                                                                                                                                                           addr3629:
                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr3505:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - _loc13_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr3539:
                                                                                                                                                                                                                                                                                                                                                         if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr3550:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr3558:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr3570:
                                                                                                                                                                                                                                                                                                                                                                           _loc22_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                           addr3571:
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr3480:
                                                                                                                                                                                                                                                                                                                                                                                                   this.§@_§.§%!R§();
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3495);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr570);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3668);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3571);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr570);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3505);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3550);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3505);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3558);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3570);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3629);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3666);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3667);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3628);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3666);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3597);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3602);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3550);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3666);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3611);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr3623);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr3550);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr3570);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3624);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr3539);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3570);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr3663);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr3666);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr3628);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr3666);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr3627);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3642);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr3480);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr3438);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr3403);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr3420);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr3428);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr3420);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr3428);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr3417);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr3428);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr3403);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr3438);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr3400);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3271);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr3299);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr3275);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr3288);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr3285);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr3299);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr3288);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr3299);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr3268);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2642);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr3176:
                                                                                                                                                                                                         this.m_localPoint = _loc7_;
                                                                                                                                                                                                         §§goto(addr3181);
                                                                                                                                                                                                         §§push(this.§@_§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr3176);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2596);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2564);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2668);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2587);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr3176);
                                                                                                                                                                                 }
                                                                                                                                                                                 this.§2!5§ = §<!!§;
                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr3158:
                                                                                                                                                                                    this.§@_§ = b2Math.§`e§(b2Math.§2!C§(_loc9_,_loc8_),1);
                                                                                                                                                                                    if(_loc35_ && param3)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr3176);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2596);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2604);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr3176);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2585);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr3158);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2587);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2466);
                                                                                                                                                      }
                                                                                                                                                      continue loop92;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop89;
                                                                                                                                          }
                                                                                                                                          if(_loc35_ && param2)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr2345);
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       continue loop88;
                                                                                                                                    }
                                                                                                                                    continue loop85;
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
                                                                                             §§goto(addr2140);
                                                                                          }
                                                                                          §§goto(addr2009);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr2002);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr2009);
                                                                              }
                                                                              §§goto(addr1981);
                                                                           }
                                                                           §§goto(addr1993);
                                                                        }
                                                                        §§goto(addr1985);
                                                                     }
                                                                     §§goto(addr2002);
                                                                  }
                                                                  §§goto(addr1963);
                                                               }
                                                               §§goto(addr1993);
                                                            }
                                                            §§goto(addr1985);
                                                         }
                                                         §§goto(addr1969);
                                                      }
                                                      §§goto(addr1977);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr597);
                                                }
                                             }
                                             else
                                             {
                                                addr593:
                                                §§push(this.§@3§);
                                                if(!_loc35_)
                                                {
                                                   §§goto(addr597);
                                                }
                                                else
                                                {
                                                   addr1847:
                                                   §§push(§§pop().§3S§(param1.indexA[0]));
                                                }
                                             }
                                             §§goto(addr1852);
                                             if(_loc36_ || param2)
                                             {
                                                _loc8_ = §§pop();
                                                _loc9_ = this.§@3§.§3S§(param1.indexA[1]);
                                                _loc10_ = this.§5!G§.§3S§(param1.indexB[0]);
                                                if(_loc36_)
                                                {
                                                   §§push(this.m_localPoint);
                                                   loop42:
                                                   while(true)
                                                   {
                                                      §§push(0.5);
                                                      addr721:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_.x);
                                                         addr723:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_.x);
                                                            addr725:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr726:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr727:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop42;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr717);
                                             }
                                             else
                                             {
                                                §§goto(addr1852);
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                       else
                                       {
                                          if(param1.indexB[0] == param1.indexB[1])
                                          {
                                             if(!(_loc35_ && this))
                                             {
                                                addr587:
                                                this.§2!5§ = §<!!§;
                                                if(!_loc35_)
                                                {
                                                   §§goto(addr593);
                                                }
                                                else
                                                {
                                                   addr1181:
                                                   this.§2!5§ = §&!>§;
                                                   §§goto(addr1185);
                                                }
                                             }
                                             addr1185:
                                             §§push(this.§5!G§.§3S§(param1.indexB[0]));
                                             if(_loc36_ || this)
                                             {
                                                _loc11_ = §§pop();
                                                _loc12_ = this.§5!G§.§3S§(param1.indexB[1]);
                                                _loc7_ = this.§@3§.§3S§(param1.indexA[0]);
                                                if(!_loc35_)
                                                {
                                                   §§push(this.m_localPoint);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(0.5);
                                                      addr1304:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_.x);
                                                         if(!(_loc35_ && this))
                                                         {
                                                            §§push(_loc12_.x);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            addr1315:
                                                         }
                                                         addr1316:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr1317:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr1243);
                                             }
                                             else
                                             {
                                                §§goto(addr1852);
                                             }
                                             return;
                                          }
                                          if(param1.indexA[0] == param1.indexA[0])
                                          {
                                             if(_loc35_)
                                             {
                                             }
                                             §§goto(addr1181);
                                          }
                                          else
                                          {
                                             §§goto(addr1847);
                                             §§push(this.§@3§);
                                          }
                                          §§goto(addr1852);
                                       }
                                       §§goto(addr1847);
                                    }
                                    §§goto(addr587);
                                 }
                                 §§goto(addr152);
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr142);
               }
               §§goto(addr141);
            }
            §§goto(addr161);
         }
         §§goto(addr93);
      }
      
      public function Evaluate(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc10_:b2Vec2 = null;
         loop0:
         while(true)
         {
            §§push(this.§2!5§);
            if(!(_loc13_ && param1))
            {
               var _loc11_:* = §§pop();
               if(_loc12_ || param2)
               {
                  §§push(§^a§);
                  if(_loc12_ || this)
                  {
                     §§push(_loc11_);
                     if(!_loc13_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc13_)
                           {
                              §§push(0);
                              if(_loc12_)
                              {
                                 addr520:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc3_ = b2Math.§[p§(param1.R,this.§@_§);
                                       _loc4_ = b2Math.§[p§(param2.R,this.§@_§.§ !%§());
                                       _loc5_ = this.§@3§.§9!-§(_loc3_);
                                       _loc6_ = this.§5!G§.§9!-§(_loc4_);
                                       _loc7_ = b2Math.§&!M§(param1,_loc5_);
                                       _loc8_ = b2Math.§&!M§(param2,_loc6_);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(_loc8_.x);
                                          if(_loc12_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_)
                                                {
                                                   addr104:
                                                   §§push(this.§@_§.x);
                                                   if(!_loc13_)
                                                   {
                                                      addr109:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc13_ && param2))
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(_loc12_)
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(_loc12_)
                                                            {
                                                               addr137:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc13_ && _loc3_))
                                                               {
                                                                  addr133:
                                                                  §§push(this.§@_§.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc13_ && param2))
                                                               {
                                                                  addr145:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr153);
                                                                  }
                                                                  break loop0;
                                                               }
                                                               break loop0;
                                                            }
                                                            §§goto(addr137);
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr133);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr109);
                                          }
                                          §§goto(addr104);
                                       }
                                    case 1:
                                       addr153:
                                       _loc10_ = b2Math.§]!§(param1.R,this.§@_§);
                                       _loc7_ = b2Math.§&!M§(param1,this.m_localPoint);
                                       _loc4_ = b2Math.§[p§(param2.R,_loc10_.§ !%§());
                                       _loc6_ = this.§5!G§.§9!-§(_loc4_);
                                       _loc8_ = b2Math.§&!M§(param2,_loc6_);
                                       if(_loc12_)
                                       {
                                          §§push(_loc8_.x);
                                          if(_loc12_ || param1)
                                          {
                                             §§push(_loc7_.x);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_ || this)
                                                {
                                                   §§push(_loc10_.x);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      addr225:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc13_ && this))
                                                      {
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                addr233:
                                                §§push(_loc8_.y);
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   §§push(_loc7_.y);
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr267);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                addr267:
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_ || param2)
                                                {
                                                   addr264:
                                                   §§push(_loc10_.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc12_ || this)
                                                {
                                                   addr275:
                                                   §§push(Number(§§pop()));
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr287);
                                                      }
                                                      addr288:
                                                      _loc10_ = b2Math.§]!§(param2.R,this.§@_§);
                                                      _loc8_ = b2Math.§&!M§(param2,this.m_localPoint);
                                                      _loc3_ = b2Math.§[p§(param1.R,_loc10_.§ !%§());
                                                      _loc5_ = this.§@3§.§9!-§(_loc3_);
                                                      _loc7_ = b2Math.§&!M§(param1,_loc5_);
                                                      if(!(_loc12_ || this))
                                                      {
                                                         if(false)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      §§push(_loc7_.x);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_.x);
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.x);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(_loc7_.y);
                                                                     if(!(_loc13_ && param2))
                                                                     {
                                                                        §§push(_loc8_.y);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc12_)
                                                                           {
                                                                              addr418:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_.y);
                                                                                 addr420:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                              addr418:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              addr422:
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(!(_loc13_ && this))
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr420);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                                  §§goto(addr422);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                   }
                                                }
                                                §§goto(addr287);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr287);
                                       }
                                       addr287:
                                       return _loc9_;
                                    case 2:
                                       §§goto(addr288);
                                 }
                                 continue loop5;
                                 addr520:
                              }
                              else
                              {
                                 addr495:
                                 §§push(_loc11_);
                              }
                              §§goto(addr520);
                           }
                           addr510:
                           §§push(3);
                           if(_loc12_ || this)
                           {
                           }
                           §§goto(addr520);
                        }
                        else
                        {
                           §§push(§<!!§);
                           if(!_loc13_)
                           {
                              §§push(_loc11_);
                              if(!_loc13_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       §§push(1);
                                       if(!_loc13_)
                                       {
                                          addr475:
                                          §§goto(addr520);
                                       }
                                       else
                                       {
                                          §§goto(addr495);
                                       }
                                    }
                                    addr499:
                                    §§push(2);
                                    if(_loc12_ || this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(§&!>§);
                                    if(!(_loc13_ && param1))
                                    {
                                       §§goto(addr495);
                                    }
                                 }
                                 §§goto(addr520);
                              }
                              addr496:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    §§goto(addr499);
                                 }
                                 else
                                 {
                                    §§goto(addr510);
                                 }
                              }
                              else
                              {
                                 if(false)
                                 {
                                    §§goto(addr510);
                                 }
                                 else
                                 {
                                    §§goto(addr520);
                                    §§push(3);
                                 }
                                 §§goto(addr520);
                              }
                              §§goto(addr510);
                           }
                           §§goto(addr475);
                        }
                     }
                     §§goto(addr496);
                  }
                  §§goto(addr520);
               }
               §§goto(addr510);
            }
            §§goto(addr520);
         }
         return §§pop();
      }
   }
}
